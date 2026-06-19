# Titanium — RISC OS source modernisation

This repo versions the **modernisation** of that tree: tidying the C sources and
finishing the assembler→C ports, component by component, without changing
behaviour.

## What "modernisation" means here

Two distinct, behaviour-preserving efforts:

1. **C reindentation** — existing C sources reformatted to a consistent
   2-space Allman style. The compiler **token stream is verified byte-identical**
   before/after (so the reformat cannot change behaviour); raw high-bit bytes
   (e.g. `©` 0xA9, 0xA0) and intricate arithmetic are preserved exactly.

2. **Assembler→C ports** — components whose logic still lived in assembler are
   rewritten in C. The guiding rule:
   - **Port genuine, C-callable logic** to C.
   - **Keep thin assembler veneers** that bridge an OS/WIMP/callback ABI (entered
     with `R12` = workspace / task descriptor, or with no set-up C environment)
     or sit on a speed-critical hot-path. Each retained `.s` file now carries an
     **in-file note explaining why** it is still assembler, so it is not mistaken
     for unfinished work.

The detailed, per-component tracker lives in **[MODERNISATION.md](MODERNISATION.md)**.

## Status (changes so far)

### Toolbox — assembler→C sweep: **COMPLETE & build-verified**
All four Toolbox components that still contained assembler are ported/cleaned
and build cleanly:

| Component | Ported to C | Kept as documented assembler |
|-----------|-------------|------------------------------|
| **Gadgets** | text-gadget implementation (TextArea/TextMan/Font/ScrollList/…) | `s/TAsel_ven` — WIMP drag-callback veneer |
| **Toolbox** (core) | — | `filter_ven`, `callback` (callback veneers); `memswis` (hot-path SWI veneers) |
| **Window** | `toolbox_delete_object` → `c/main` | `window_starting` — OS_AddCallBack handler |
| **tboxlib** | — | `toolboxmem` — hot-path `Toolbox_Memory` SWI veneers |

Build-verification also caught and fixed real port bugs (e.g. missing
`<stddef.h>`/`NULL` includes in Gadgets' `c/Utils` and `c/Font`).

### DisplayManager — whole-module assembler→C rewrite: **complete (build-verified)**
The screen-mode chooser (`Video/UserI/Display`, module `DisplayManager`) was a
pure-assembler Wimp application (12 `s/` files, ~4,285 lines). It has been
rewritten in C in place, Apache-2.0 retained, with a CMunge header replacing the
hand-written module header and the build switched `AAsmModule`→`CModule`
(v0.44→0.45). The design (file→C map, state struct, poll loop, the
mode-enumeration core, and the six-step port order) is in
[Display/DESIGN.md](RiscOS/Sources/Video/UserI/Display/DESIGN.md).

| Step | Scope | State |
|------|-------|-------|
| 1 | Module skeleton: CMunge header (`module-is-runnable`, `error-base`/`error-identifiers`), state struct, lifecycle, Wimp poll loop | **build-verified** |
| 2 | Message handling (`c/msgtrans`): file open/lookup/error-lookup, real task banner, error reporting | **build-verified** |
| 3 | Windows + iconbar icon (`c/window`, `c/icon`) | **build-verified** |
| 4 | Mode enumerate / sort / select core (`c/mode`, the 1,624-line heart) | **build-verified** |
| 5 | Menus (`c/menu`): iconbar / colours / resolution / rate, MakeMenus templates, selection decode | **build-verified** |
| 6 | Mouse clicks (`c/mouse`) + Wimp messages (`c/message`: menu warning, help, quit, data transfer) | **build-verified** |

The original module's header was disassembled (gerph's `riscos-disassemble`) to
baseline the port: the rebuilt module's runnable entry, command, and seven
service calls match the shipped module exactly. The 12 assembler `s/` files have
been removed (preserved in git history). The standalone (`-DSTANDALONE`) RAM
build's ResourceFS registration is the one deliberately un-ported piece — the
ROM build serves its resources through the ROM resource filing system instead.

### Hourglass — whole-module assembler→C rewrite: **complete (build- & hardware-verified)**
The busy-pointer module (`Video/Render/Hourglass`, module `Hourglass`, SWI chunk
base `&406C0`) was a single ~1,100-line assembler file. It has been rewritten in
C in place, Apache-2.0 retained, with a CMunge header and the build switched
`AAsmModule`→`CModule` (v2.19→2.20). Unlike DisplayManager this is a SWI provider
(`On`/`Off`/`Smash`/`Start`/`Percentage`/`LEDs`/`Colours`, plus `*HOn`/`*HOff`)
that also runs in **interrupt context**, which shaped a hybrid design:

| Part | Approach |
|------|----------|
| `PaletteV` colour tracking | pure C (CMunge `vector-handlers`) |
| `TickerV` animation | C handler + one tiny retained veneer `s/Veneer` (`hg_call_in_svc`) that switches IRQ→SVC mode so the per-frame pointer SWIs are safe — C cannot switch processor mode |
| Pointer bitmap / sand-frame diffs / digit glyphs | `h/shapes` C `const` tables, transcribed verbatim from the assembler `DCB` data |
| Unknown SWIs in the chunk | base `swi-handler-code` returning `error_BAD_SWI` (`SYS &406FF` reports *"SWI out of range of module Hourglass"*, as the assembler did) |

`s/Veneer` is the only retained assembler, with an in-file note explaining why.
The OS_Word 21 pointer-definition block keeps its data pointer word-aligned via a
two-byte prefix in the state struct (mirroring the assembler's alignment trick).
The hand-written `s/Module` and `VersionASM` have been removed (preserved in git
history). Design notes are in
[Hourglass/DESIGN.md](RiscOS/Sources/Video/Render/Hourglass/DESIGN.md).

### Other areas
Toolbox object modules and the ToolboxLib client library are reindented
(see the tracker for the full list and per-component notes). Work on the rest of
the tree is ongoing and tracked in `MODERNISATION.md`.

## Building / repo conventions

- **Byte-exact storage** — `.gitattributes` sets `* -text` so RISC OS data and
  `,xxx` filetype files are never corrupted by line-ending translation.
- **Excluded from the repo** (`.gitignore`): build output (`o/`, `aof/`,
  `linked/`, `rm/`, `Export/`, `Install/`, …), logs, Python caches, and the
  **commercial Acorn/DDE host toolchain** (`Library/Acorn/HostLibs`, `cc`,
  `link`, `cmhg`, …) which must not be redistributed.
- Components build with the standard RISC OS DDE / AMU (`!MkRom`, `!MkRam`,
  `!MkExpLib`, etc.) inside a TaskWindow with the build environment set up.
- **Header tool: CMunge.** The build uses [CMunge](https://github.com/gerph/riscos-cmunge)
  (a superset of Acorn's CMHG) to process module headers, enabling
  `module-is-runnable`, `error-base`/`error-identifiers`, etc. `BuildSys` selects
  it via `StdTools` (`CMHG = cmunge -tnorcroft -32bit`; `-32bit` is required as
  CMunge defaults to 26-bit). CMunge must be installed and runnable as `*cmunge`
  before building. Generated CMHG/CMunge headers (`h.modhead`) are build output,
  not source.
