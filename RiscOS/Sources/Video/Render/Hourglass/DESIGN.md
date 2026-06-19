# Hourglass — assembler→C port design

**Component:** `Video/Render/Hourglass` (module title `Hourglass`, SWI chunk base `&406C0`)
**Original source:** one ARM assembler file `s/Module`, 1,113 lines, Acorn 1996, Apache-2.0, v2.19.
**Port type:** in-place, behaviour-preserving asm→C rewrite. **Apache-2.0 retained.** New header
(`cmhg/modhead`, processed by **CMunge**) replaces the hand-written module header; build switches
`AAsmModule`→`CModule`. Lands as **2.20** (behaviour identical; bump marks the language change).

> Like DisplayManager, this is a whole-module rewrite done step-by-step so each stage builds.
> Unlike DisplayManager it is a **SWI-providing module** (not a Wimp app) and it runs code in
> **interrupt context** (TickerV, PaletteV), which dictates a small amount of retained assembler.

---

## 1. What the module is

Provides the busy "hourglass" mouse pointer.  It exports 7 SWIs and two `*` commands and, while
on, replaces the pointer with an animated hourglass sprite (optionally showing a percentage and
two "LED" bars), restoring the previous pointer/colours when switched off.

It is driven by:
- **SWIs / commands** — callers nest `Hourglass_On`/`Off` (or `Start` for a custom delay); the
  animation does not appear until the delay elapses.
- **TickerV** — claimed while on; fires every centisecond.  A countdown (`HourglassTimer`)
  implements the start delay, then every `UpdateDelay` (15cs) the sprite advances one frame and
  the pointer is reprogrammed.
- **PaletteV** — claimed while on; watches *other* tasks changing pointer colours 1/3 so the
  module restores the right colours when it switches off.

### SWIs (chunk base `&406C0`, order fixed by the ABI)
| # | SWI | In | Out | Action |
|---|-----|----|-----|--------|
| &406C0 | `Hourglass_On` | - | - | `Start` with the default startup delay (33cs) |
| &406C1 | `Hourglass_Off` | - | - | decrement nesting; at zero, release TickerV + restore pointer |
| &406C2 | `Hourglass_Smash` | - | - | force depth to 1 then `Off` (unconditional off) |
| &406C3 | `Hourglass_Start` | R0=delay cs (0=never) | - | increment nesting; on first level claim TickerV + init |
| &406C4 | `Hourglass_Percentage` | R0=0..99 (else off) | - | set percentage figures (depth-controlled) |
| &406C5 | `Hourglass_LEDs` | R0=EOR, R1=AND | R0=old | set the two LED bars |
| &406C6 | `Hourglass_Colours` | R0=col1, R1=col3 (-1=keep) | R0/R1=old | set hourglass colours |

Unknown SWIs → `error_BAD_SWI` (CMunge supplies this; the asm hand-rolled the same via the
global `BadSWI` token).

### Commands
- `*HOn`  — set pointer shape 1 then `Hourglass_On`.
- `*HOff` — `Hourglass_Smash`.
Both take international help from the component's `Messages`/`CmdHelp` resources.

### Service calls
- `Service_Error` → `Smash` (any error turns the hourglass off).
- `Service_Reset` → on a *soft* reset, re-initialise the workspace (hard reset: ignore).

### State (the assembler workspace → one C `struct`, global `g`)
`HourglassData[DataSize]` (the pointer bitmap), colour triples (Return/NextH/Current colour 1&3),
`HourglassTimer`, `HourglassDepth`, `PercentageDepth`, Old/New `Percentage`, Old/New `LEDs`,
`ReturnPointer`, `HourglassState` (sand frame 0..5), the `OS_Word 21` pointer-definition block,
`PointerDirty`, `UpdateSemaphore`.

---

## 2. Interrupt context — the C/asm split (the key decision)

Two handlers run in IRQ mode:

- **PaletteV** (`MyPaletteVRoutine`): only reads the vector registers and writes module memory —
  **no SWIs**.  → pure **C**, via a CMHG `vector-handlers:` veneer (sets up the C static base).

- **TickerV** (`MyTickRoutine`): the per-frame update calls SWIs (`OS_Word`/`OS_Byte`, PaletteV
  claim/release) to reprogram the pointer; the assembler switches IRQ→SVC mode first so those
  SWIs are safe.  C cannot switch processor mode.  → **hybrid**:
  - CMHG `vector-handlers:` veneer sets up the C environment and calls a C handler in IRQ mode.
  - the C handler does the IRQ-safe part (semaphore + timer countdown, all plain memory), then
    for the SWI-heavy update calls a **single tiny assembler helper** `hg_call_in_svc(fn)` which
    switches IRQ→SVC, calls the C update function (static base unchanged — r12 is not banked),
    and restores the mode.  ~10 instructions in `s/Veneer`.

This is the only retained assembler — the documented analogue of the Toolbox callback-veneers
(`s/TAsel_ven` etc.): logic in C, the irreducible mode-context shim in asm.  Behaviour is
byte-for-byte identical to the original tick path.

TickerV/PaletteV are **claimed/released from C** (`OS_Claim`/`OS_Release` on the CMHG veneer
entry symbols), at the same points the assembler did:
- TickerV: claim on first `Start`, release on last `Off`.
- PaletteV: claim in `InitialisePointerInfo`, release/re-claim around colour programming in
  `ProgramPointer`, release in `RestorePointer`.

---

## 3. Target file layout

```
cmhg/modhead   module header (CMunge): title, help, swi-chunk-base &406C0 +
               swi-decoding-table, command-keyword-table (HOn/HOff),
               service-call-handler (Error,Reset), vector-handlers
               (TickerV, PaletteV), international-help-file
h/hourglass    constants (HgX/Y/Size, delays, default colours, DataSize, ...),
               the state struct, cross-file prototypes
h/shapes       the embedded data tables as C const arrays (see below)
c/module       init/final/service, command handlers, the 7 SWI handlers,
               nesting/timer logic, pointer programming (SWIs), the bitmap
               builders, the TickerV C handler + tick update worker, the
               PaletteV C handler
s/Veneer       hg_call_in_svc(fn) — the IRQ→SVC mode shim (only asm)
VersionNum     2.19 -> 2.20
Makefile       CModule; ASMHDRS = Hourglass (keep exporting Hdr:Hourglass);
               CMHG = cmunge -tnorcroft -32bit; ROM_SYMS/SA_LIBS as DisplayManager
```

`HEADER1 = Hourglass` in the original exports `hdr/Hourglass` (the `AddSWI` list) as
`Hdr:Hourglass`, which other modules' `swis.h` depends on.  The C Makefile must keep exporting it
via `ASMHDRS = Hourglass` (the same fix Territory needed) — `hdr/Hourglass` is unchanged.

### Data tables (was inline DCB in s/Module) → `h/shapes` C const arrays
- `hourglass_shape[132]` — the base bitmap (copied into `HourglassData` on first show).
- `shape_diffs[8][]` — 8 per-frame diff lists; each is a flat byte array of `(value,offset)`
  pairs, processed two-pairs-per-word, high pair then low, terminated by a zero word (exactly as
  `FillHourglass`).  NB the run-time state cycles 0..5, so frames 6 & 7 are dead data, retained
  for fidelity.
- `ch_numbers[10][18]`, `ch_percent[18]`, `ch_space[20]` — percentage digit glyphs.

---

## 4. Port steps (build after each)

1. **Skeleton** — `cmhg/modhead` (title/help/swi table/commands/services), `h/hourglass`
   (constants + state struct), `c/module` (init/final/service/commands + empty/`error_BAD_SWI`
   SWI dispatch), Makefile→CModule + `ASMHDRS`, VersionNum→2.20.  De-risks CModule + SWI
   header + Hdr:Hourglass export.  Differential-disassemble vs the shipped `Hourglass,ffa`
   (SWI base/table, title, commands, services).
2. **SWIs, no animation** — nesting/depth (`On`/`Off`/`Smash`/`Start`), `Percentage`, `LEDs`,
   `Colours` as state changes; TickerV/PaletteV claim/release wired (handlers still stubs).
3. **Bitmap builders** — `h/shapes` + `SetupPointer`/`FillHourglass`/`SetupPercentage`/
   `SetupLEDs`/`SetupChar` (pure C memory work).
4. **Pointer programming** — `ReadPointerColours`/`InitialisePointerInfo`/`ProgramPointer`/
   `SetColour`/`RestorePointer` (the SWI parts) and the PaletteV C handler.
5. **Ticker** — the C TickerV handler + `s/Veneer` `hg_call_in_svc` + the SVC update worker;
   wire it all together.
6. **Finish** — on-hardware test (busy pointer animates, percentage/LEDs, restores on off),
   delete `s/Module` + `VersionASM`, deploy into the BCM2835 ROM tree (ModuleDB ASM→C), commit.

The `Hourmake/` subdirectory is a historical design-time sprite-generation tool, not referenced
by the build — left untouched.
