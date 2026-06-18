# RISC OS (Titanium) — Source Modernisation

A rolling, component-by-component modernisation of the Titanium RISC OS source
tree: better-structured, better-laid-out, better-documented code that retains
**identical functionality** and **all original licensing**.

This file is the spec every change follows and the tracker of what is done.

---

## Hard rules (non-negotiable)

1. **Licences are retained, never changed.** Every file keeps its existing
   licence header *verbatim* — copyright line(s), the Apache 2.0 (or Artistic,
   or other) block, and any `NOTICE`/attribution text. We do not relicense code
   we do not own. (This is also what Apache 2.0 §4(b)/(c) requires.)

2. **Mark modified files.** Apache 2.0 §4(b) requires a notice that a file was
   changed. Each modernised source file gains, immediately after the licence
   header, a single line:
   ```
   /* Modernised 2026 (formatting/structure only; behaviour unchanged). */
   ```
   The original change-history block (if any) is preserved untouched below it.
   **A file that would end up byte-identical to the original except for this
   marker must NOT receive the marker — leave it completely pristine.** The
   marker records real work; it is not a "reviewed" stamp. Already-conformant
   files are simply left alone (and noted as "already conformant" in the tracker).

3. **Functionality is identical.** No behavioural change. Same SWIs, same control
   flow outcomes, same outputs, same error paths. Refactors must be provably
   semantics-preserving by inspection.

4. **No pointless churn.** Indentation normalisation to 2-space is wanted (see
   house style) and does not count as pointless churn. What we avoid is
   meaningless reordering/renaming that changes nothing for the reader. Every
   change must improve clarity, layout-consistency, or correctness-of-form.

---

## House style (matches the existing tree)

- **Indentation:** 2 spaces, no tabs. **Policy (decided): normalise EVERY file we
  touch to consistent 2-space Allman — including files that are already cleanly
  and consistently indented at 3 or 4 spaces.** Uniform layout across the tree is
  an explicit goal of this rewrite, not cosmetic churn to be avoided. (There is no
  git history here to protect, so the blame/upstream-merge caveat does not apply.)
  Reindentation must be whitespace-only: never let it alter tokens, and re-align
  continuation lines so nothing drifts.
- **Braces:** Allman (opening brace on its own line) — the dominant style here.
- **Booleans:** prefer `bool`/`true`/`false` (`<stdbool.h>`) in C99 code; keep
  `osbool`/`TRUE`/`FALSE` where the OSLib API demands it.
- **Headers:** keep the existing `#ifndef name_H / #define name_H` guards and the
  `#ifndef foo_H \n #include "foo.h" \n #endif` include-guard idiom — it is load
  bearing for this build system, not legacy cruft.
- **Comments:** keep RISC OS-specific notes (PRM references, SWI quirks, the
  "important note to anyone working on this code" blocks) — they are valuable.

## What "modernise" means here (allowed changes)

- Extract long functions into small, named `static` helpers.
- Replace assignment-in-condition (`if (p = f(), !p)`) with clear two-line form.
- Add `const` where it is provably correct.
- Name magic numbers; group related locals; initialise at point of use.
- Remove dead/`#if 0` code **only** when it is clearly obsolete and commented as
  such by the original author; otherwise leave it with its explanatory comment.
- Consistent spacing/alignment within a file.

## Third-party / imported code — NOT modernised (left on upstream baseline)

Code imported from an external upstream is left exactly as-is. Reformatting it
destroys the ability to diff against and merge upstream fixes, and risks subtle
regressions in security/maths-critical code we cannot test here. Excluded:
- `Lib/mbedTLS` (upstream TLS/crypto)
- `Lib/TCPIPLibs/*`, `Networking/AUN/Internet/{netinet,net,sys,kern,lib}` (4.4BSD
  networking stack)
- `HWSupport/VFPSupport/softfloat` (Berkeley SoftFloat)
- `SystemRes/InetRes/Sources/{md5,ssh-keygen,traceroute,mtrace,map-mbone,...}`
  and similar imported BSD/Unix command-line utilities
- any component whose header credits an external upstream project rather than
  Acorn/Pace/Castle/RISC OS Open/Tematic/named RISC OS contributors.
- **Copyleft (GPL/LGPL) upstream libraries** — e.g. Julian Smith's DeskLib-family
  libraries **`Lib/Wild`** and **`Lib/Trace`** (LGPLv3, their own COPYING files).
  These are self-contained external imports; leave them on the upstream baseline.
  (Authorship by a name that also appears elsewhere in RISC OS does NOT make a
  separately-licensed upstream library first-party — judge by the licence + its
  own COPYING/upstream packaging, not the author name alone.)

Reference: a pristine mirror exists at `N:\RiscOS` (non-git copy) — useful for
`diff -w` QA of token-equivalence. **CAVEAT: it is a DIFFERENT port/version in
places** (e.g. some DOSFS files diverge in tokens from Titanium's older copies),
so it is a QA aid only where token-identical — NOT a universal restore source.
Always preserve Titanium's own tokens; only restore-from-mirror when you've first
confirmed the file is token-identical there (as was done for Wild).

Test harnesses (`*/Test/*`, `*/test/*`) and build-only tooling are deprioritised
(done only if explicitly requested).

## What is NOT touched

- `.s`/assembler, CMHG headers' directives, Makefiles' tab-significant rules, and
  any generated file — unless a component is explicitly listed for build-layout
  work.
- Behaviour, ABI, SWI numbers, struct layouts, exported symbol names.

---

## Workflow per component

1. Read every source file in the component (`c/`, `h/`, `cmhg/`, etc.).
2. Rewrite each for clarity, applying the rules above; preserve headers/history.
3. Record it in the tracker below with a one-line note on what changed.
4. Builds are verified externally (owner rebuilds and reports errors); fixes are
   folded back per component.

---

## ✅ FULL ROM BUILD SUCCESSFUL (2026-06-17, off NVMe)

After rounds 1–2 fixes + a clean re-sync, the complete Titanium ROM build
**succeeded**. This build-verifies the entire modernisation (95+ first-party
components) end-to-end — not just compilation. Root causes that had to be fixed
were all edit-tooling artefacts (see rounds 1–2): a `\`-macro brace split, CRLF
line endings, corrupted non-ASCII bytes — plus one PRE-EXISTING tree bug (keygen
deadlist sort). Remaining: only the deferred correctness-critical runtime files.

## Build feedback — round 1 (owner build off NVMe, 2026-06-17)

Environmental host-tool/filetype blocker is RESOLVED (building off `NVMe::Nvme4`).
Build surfaced issues; root-caused and fixed:

- **Macro-continuation corruption (REAL regression).** The Allman brace pass moved
  `{`/`}` onto their own lines *inside* `\`-continued `#define` macros without
  carrying the `\`, so the macro ended early (e.g. `MUNGE_PIXEL` expanded to a lone
  `{`, unbalancing every call site). **The agents' whitespace-stripped token check
  could not detect this — backslash line-continuation is whitespace-sensitive.**
  Fixed: `Apps/Paint/c/Tools` (MUNGE_PIXEL) and `Apps/Draw/c/DrawDispl` (TRACE_FONT,
  latent under `#if TRACE`). Tree-wide binary-safe scan of all 855 modernised files
  → these were the only two; 0 remain.
- **Non-ASCII byte corruption (REAL).** 47 files had a comment-banner byte mangled
  to the UTF-8 replacement char `EF BF BD` (Edit/Write re-encoding) — 46× the ©
  `0xA9`, plus `romerge` ×10 NBSP `0xA0`. Restored byte-for-byte positionally from
  the `N:\RiscOS` mirror. 0 remain.
- **`drawcheck` build errors & `keygen` "Unknown dead key": STALE BUILD COPY.** The
  current N:\Titanium `drawcheck` macros are valid (od-verified `\`-at-EOL) and
  token-identical to the mirror; the compiler's error line numbers don't match the
  current file. `keygen.c` is token-identical to the mirror (its deadlist/bsearch
  unchanged). Both indicate the NVMe build tree was an out-of-date partial copy.
  ACTION: re-sync N:\Titanium → NVMe build tree cleanly, then rebuild.

Lesson added to method: NEVER reflow braces inside `\`-continued macros; verify
non-ASCII bytes survive every edit (Edit/Write re-encode them to EF BF BD).

## Build feedback — round 2 (re-sync confirmed: Tools fix took effect)

My round-1 "stale copy" guess for drawcheck/keygen was WRONG — they were real
current-source issues (the CR in drawcheck was hidden because `sed`/`od` stripped
it in my check). Root-caused properly:

- **CRLF line endings (REAL regression).** Write/Edit on Windows silently converted
  LF→CRLF on **8** modernised rlib files (`bbc, dbox, drawcheck, drawtextc, flex,
  font, fontlist, fontselect`). For the 2 with `\`-continued macros (`drawcheck`,
  `drawtextc`) the continuation became `\<CR><LF>`, which Norcroft rejects as
  "misplaced preprocessor character '\'" → cascade. Fixed: converted all 8 back to
  LF (byte-safe; non-ASCII preserved). Mirror confirmed LF. **Lesson: after any
  Edit/Write, check the file didn't gain CRLF.**
- **keygen "Unknown dead key" — PRE-EXISTING TITANIUM BUG (not modernisation).**
  `deadlist[]` is searched with `bsearch(cmp_name2=strcmp)` so it must be sorted,
  but the Titanium tree had `"TILDE"` appended after `"VERTICAL LINE ABOVE"`
  (T after V) — breaking bsearch for many keys. The mirror has TILDE correctly
  sorted; the Titanium source was already wrong (modernisation preserved it). Fixed
  by moving TILDE into sorted position (matches mirror) + guard comment; keygen's
  marker amended to record this as a deliberate behaviour fix. Would have failed
  identically in the un-modernised tree.

## Progress tracker

Status: ☐ todo · ◐ in progress · ☑ done (pending build) · ✅ build-verified · ⊘ skipped (3rd-party)

### COVERAGE SUMMARY (first-party C across the whole tree)
A full sweep of all 208 `c/` directories confirms coverage is **complete**:
- **~95 first-party components MODERNISED** (2-space Allman, licences/©-bytes/K&R
  defs preserved, token-verified vs the `N:\RiscOS` mirror where available).
- **Reviewed already-conformant, left pristine:** SDFS/SDFS, SD/SDIODriver,
  SyncLib, VFPSupport, Colours/MkTables, !CurveFit.
- **Correctly SKIPPED as third-party / copyleft / imported** (left on upstream
  baseline): mbedTLS, TCPIPLibs, Berkeley softfloat, the 4.4BSD networking stack
  (AUN/Internet, gwroute, route/showrt blocks, mbuf/socket_swi), NetBSD USB core
  + `umass`/`if_cpsw`/`xhci`/`usbmouse`, libjpeg (in SprExtend), RSA md4c/md5c,
  the BSD InetRes net utilities, and the Julian Smith LGPL DeskLib libs
  (Wild, Trace, DDTLib).
- **Generated files skipped:** Debugger `dis2_vfp`, Kernel `atarm`, VFPSupport
  `classify` (decgen trees), UnicodeLib `unictype` (build-time).
- **Test/Doc harnesses:** deprioritised (out of scope unless requested).
- **DEFERRED (correctness-critical, on request only):** 11 RISC_OSLib ANSI-runtime
  files (`printf`/`scanf`/`math`/`alloc`/`stdio`/`locale`/`ctype`/`fpprintf`/
  `armprof`/`armsys`) and the 2 !CurveFit Bézier files — left at original indent
  to avoid regressions in hand-aligned FP/format/allocator code.


Note: first validation build (BootCmds / a Toolbox module) reported clean by
owner — approach confirmed.

### Sources/Apps  (recovered via coverage sweep — initially missed)
- ☑ **Draw** (!Draw) — done (pending build). Apache, Acorn 1996. All 22 hand-
  written C files reindented to 2-space Allman (cuddled-brace → Allman, unbraced
  single-statement bodies kept unbraced); **every file token-verified identical
  vs mirror** (whitespace-stripped byte-identical). `guard` Acorn-1991 confidential
  dual notice preserved.
- ☑ **Paint** (!Paint) — done (pending build). Apache, Acorn 1996/1991 / Castle
  2007 / ROOL 2019/2020. All 18 C files reindent, token-verified; ECF/sprite/mask
  data tables preserved.
- ☑ **EditApp** (!Edit) — done (pending build). Apache, Acorn 1996 (+slist 1988
  notice). `edit`, `message`, `editv`, `slist` reindent, token-verified.
- ☑ **Help2** (!Help) — done (pending build). Apache, Acorn 1998 (R.Leggett).
  `common`, `help`, `main` reindent; 0x8F bullet / 0xA9 © bytes preserved.

### Sources/HAL
- ☑ **HAL_Titanium** — done (pending build). **CDDL, Elesar 2014.** `c/PCIProbing`
  tab→2-space; PCI BAR/ROM/config-register arithmetic byte-equivalent.

### Sources/Programmer
- ✅ **BootCmds** — build-verified by owner.
  - `c/repeatcmd` ☑ — extracted `object_matches()` + `execute_on_object()`,
    cleaned comma-operator `realloc`, `bool`/`true`/`false`, named INFO_HEADER_SIZE
    / BYTES_PER_ENTRY, typedef `repeat_args`. Semantics identical.
  - `c/main` ☑ — Allman/2-space throughout, extracted `scale_by_suffix()` (was
    duplicated 3×), `bool` for internal flags, named CMOS/version magic numbers.
    All exported symbols, command table, SWI numbers, `#if 0`/`#if TRACE` blocks
    preserved. Semantics identical.
  - `h/main`, `h/files`, `h/jc_trace` — reviewed; already idiomatic and
    build-load-bearing, left unchanged (no false "modified" marker).
  - `cmhg/header` — CMHG directives, out of scope per rules; untouched.
- ☑ **Debugger** — done (pending build). `c/main` (table comment alignment),
  `c/support`, `c/util`, `c/exc` (tab→2-space, Allman). `c/head` (generated-code
  stub) and `c/dis2_vfp` (253 KB **generated** disassembler tables) left
  untouched per rules. Headers not edited.
- ☑ **RTSupport** — done (pending build). `c/debug` (one-shot guard de-inlined),
  `c/mess` (extracted `CollectParams()` from 5 duplicated vararg sites; two
  alloc-in-condition split), `c/module` (spacing only — saturating priority
  switches left intact). `c/global` already idiomatic, unchanged. Module entry
  points + `mess_*` exports unchanged.
- ☑ **Squash** — done (pending build). `c/compress` (Apache; local TRUE/FALSE →
  `<stdbool.h>`, 2-space Allman). `c/cssr`, `c/zssr` (**BSD 3-clause, Jon
  Thackray 1990 — licence preserved verbatim**; reformat only — LZW state
  machines/bit-packing left byte-equivalent). Headers/cmhg not edited.

### Sources/HWSupport
- ☑ **RTC** — done (pending build). Single hand-written file `c/rtclock`
  (**BSD 3-clause, RISC OS Open Ltd 2013 — preserved verbatim**): tabs→2-space
  throughout (braces were already Allman). No structural refactor — the file was
  already cleanly factored and heavily commented; BCD/register/CMOS-offset
  arithmetic and the slew/PID adjust maths left byte-equivalent. CMHG-referenced
  exports (`rtclock_init/_final/_service/_swis/_ticker/_fg_callback`) unchanged.
  `h/rtclock`, `h/RTCDevice`, `cmhg/RTCHdr` read for context only, not edited.
- ☑ **NVRAM** — done (pending build). All 5 C files (`module`, `trace`,
  `msgfile`, `parse`, `nvram`; Apache, Acorn 1997): tabs→2-space/Allman. All
  bit/mask/offset arithmetic, checksum logic, `OS_NVMemory`/`OS_Byte` SWIs, and
  `#ifndef NO_WRITES`/reset `#ifdef`s left byte-equivalent. `nvram_*` exports
  match `h/nvram`. Varargs hack + undefined-shift-correction comment preserved.
- ☑ **PortMan** — done (pending build). `c/module` (**dual notice: Apache /
  Element 14 1999 + Acorn 1997 confidential block — both preserved verbatim**),
  `c/msgfile`, `c/tags`: spacing/Allman, named MAX_PARAMS, comma-operator split.
  All GPIO/PLL register & bit arithmetic (ARM7500FE + CX24430) byte-equivalent;
  module/SWI exports unchanged.
- ☑ **ATA/SATADriver** — done (pending build). **CDDL, Ben Avison 2012/2015 +
  Portions Jeffrey Lee 2017 — preserved verbatim** (first-party; CDDL is ROOL's
  licence for this AHCI driver). Only `c/module` (one `if(`→`if (`) and `c/osmem0`
  (2 assignment-in-condition splits) changed; other 8 files already conformant,
  left pristine. AHCI register/DMA/PRDT arithmetic untouched.
- ☑ **SD/SDIODriver** — reviewed; **already exemplary modern C99** (2-space,
  Allman, no tabs, factored helpers). No changes warranted — all 11 files left
  pristine. CDDL (Avison 2012 + Portions Lee 2013 / Ballance 2019).
- ☑ **SCSI/SCSISoftUSB** — done (pending build). `c/module`, `c/glue` (Apache,
  Tematic 2003): keyword/`=` spacing; USB descriptor walk, scatter/packet
  arithmetic, SCSI dispatch byte-equivalent. `c/global` already conformant
  (pristine). `c/umass`, `c/umass_quirks` (**NetBSD/FreeBSD BSD-4-clause —
  third-party, skipped**).

### Sources/FileSys
- ☑ **FSLock** — done (pending build). Apache, Castle 2014. `c/scrambler` (host
  tool) reindent; hash/CRC/cloak arithmetic byte-equivalent. (FSLock module proper
  is `s/` assembler — out of scope.)
- ☑ **SDFS/SDFS** — reviewed; already exemplary modern C99 (CDDL, Avison 2012 +
  Portions Lee). All 10 C files left pristine, no marker (like SDIODriver).
- ☑ **ImageFS/DOSFS** — done (pending build). Apache, Acorn 1996 / Castle 2012/18.
  6 of 14 C files reindent (incl. FAT/cluster arithmetic byte-equivalent); 8
  already conformant. `DOSFS.c` partition/BPB helpers + giant dispatch switches
  left at original indent (no reliable token mirror; reflow not provably safe).
- ☑ **PCCardFS** — done (pending build). Apache, Acorn 1996. 10 C files reindent
  (Whitesmiths → 2-space Allman), token-verified vs mirror; PCMCIA/CIS/scatter
  arithmetic untouched; `Variables` pristine. 0xA0/0xBF/0xAC bytes preserved.
- ☑ **FileCore/Tools** — done (pending build). Apache, Acorn 1996 (FixADisc). All
  8 C files reindent (8-space → 2-space), token-verified vs mirror; 512-byte disc
  boot-record byte tables preserved verbatim.
- ☑ **CD/CDFSSoftSCSI** — done (pending build). BSD-3, ROOL 2011. `cmodule`,
  `driver`, `errors` tab→2-space, token-verified; 0xA0 header bytes preserved.
- ☑ **SCSI/SCSISwitch** — done (pending build). Apache, Tematic 2003. `module`,
  `scsi` reindent; endian-swap/BCD/slot-allocator arithmetic byte-equivalent.
- ☑ **USB** — triaged. **dev/usb core (8 files), xhci, usbroothub_subr, usbmouse
  = NetBSD/FreeBSD imports — SKIPPED.** First-party MODERNISED: XHCIDriver
  `glue` (Elesar 2014), `xhcimodule` (Castle 2015); USBDriver/build `makedevs`,
  `port`, `usbkboard`, `usbmodule` (Tematic 2003). Token-verified.
- ☑ **VFPSupport** — reviewed. `c/classify` (generated decgen tree) skipped;
  `c/head` trivial include stub (pristine). `softfloat/` excluded (Berkeley, 3rd-
  party). No first-party hand-written C to reformat.
- ☑ **ADFS/ADFS4** — done (pending build). **CDDL, Ben Avison 2012/2015 —
  preserved verbatim** (first-party). Only `c/module` changed (extracted
  `parse_command_args()` tokeniser from `module_command`); other 7 files already
  conformant, left pristine. Sector/LBA48/disc-address arithmetic untouched.

### Sources/Desktop
- ☑ **FilerAct** — done (pending build). All 8 hand-written C files (`debug`,
  `dboxlong`, `Chains`, `Buttons`, `Initialise`, `listfiles`, `memmanage`,
  `actionwind`): reindent to 2-space/Allman, assignment-in-condition split,
  `if(1){}` idiom removed. Apache (Acorn 1996 + Tematic 2002). Project-wide
  `BOOL`/`Yes`/`No` convention kept (load-bearing). No generated files.
- ☑ **ShellCLI** — done (pending build). `c/module` (Apache, Julie Stamp 2020) —
  keyword spacing to house style; SWI decode/structs/exports unchanged.
- ☑ **WindowScroll** — done (pending build). `c/cmodule`, `c/task`, `c/utils`
  (**BSD 3-clause, ROOL 2020 — preserved verbatim**): tabs→2-space/Allman,
  named scroll/task magic numbers; scroll algorithm + Wimp masks byte-equivalent.

### Sources/Audio
- ☑ **SoundCtrl** — done (pending build). `c/mess` (Apache, Tematic 2003, Ben
  Avison) — extracted `CollectParams()` from 4 duplicated vararg-collection sites
  (same pattern as RTSupport); `mess_*` exports/signatures unchanged. `c/module`
  (Apache, Tematic 2003) — already modern C99; marker added, named
  `DEVICE_VERSION_MAJOR_SHIFT` (>>16) and `SERVICE_HARDWARE_REASON_MASK` (0xFF).
  Module entry points, SWI decode, Service_Hardware handling unchanged. `c/global`
  (banner skeleton + one global var) already idiomatic — left unchanged, no marker.
  Headers/cmhg not edited.

### Sources/Toolbox
- ☑ **Toolbox** (core) — done (pending build). Apache, Acorn 1996/1998. All 8
  C files (`event`, `filters`, `globals`, `main`, `memory`, `object`, `resf`,
  `task`) fully reindented 4→2-space Allman. (Marker placement on the 5 first-pass
  files is after the History banner rather than after the licence block — minor.)
  asm: 3 files kept deliberately, now documented — `filter_ven` (WIMP pre/post
  filter veneers → C filters_*), `callback` (OS_AddCallBack C-env-setup +
  Service_ToolboxStarting veneers), `memswis` (tight OS_Heap/OS_Module SWI
  veneers, asm for speed). All are veneers/glue, not portable to plain C. C
  files scanned clean for missing-header (NULL/stdlib) issues. **ROM build-verified.**
- ☑ **Menu** — done (pending build). Apache, Acorn 1996 / Pace 2000 (`main`).
  All 10 C files fully reindented 3/4→2-space Allman. Data tables, goto ladders,
  and commented-out test blocks preserved verbatim.
- ☑ **IconBar** — done (pending build). Apache, Acorn 1996. **Full 4→2-space
  reindent** of all 8 hand-written files; `globals` (data tables) pristine.
- ☑ **SaveAs** — done (pending build). Apache, Acorn 1996. **Full 4→2-space /
  K&R→Allman reindent** of all 9 files; removed a redundant nested test in
  `hide`; preserved dangling-if + bug-fix comments in `events`.
- ☑ **FileInfo** — done (pending build). Apache, Acorn 1996. All 11 C files full
  3→2-space/K&R→Allman reindent; `task_remove` brace nesting clarified (scope
  unchanged); AQU bug-fix comments + commented-out blocks preserved.
- ☑ **ProgInfo** — done (pending build). Apache, Acorn 1996/1997. All 11 C files
  full reindent (tabs/3/6/8-space → 2-space Allman); `resize` banners/enums and
  commented DEBUG blocks preserved.
- ☑ **Messages/Utils** — done (pending build). Apache, Acorn 1996 + Pace dual
  notice (LocaleChk/ResCommon). All 11 C files reindent, token-verified; 0xA0
  byte in ResCommon preserved.

### Sources/SystemRes
- ☑ **InetRes/Sources** — triaged 21 util dirs. **14 SKIPPED (third-party:**
  arp/host/ifconfig/inetstat/ping/route/sysctl/tftp/traceroute/mrinfo = BSD
  UC-Regents; md5 = RSA; map-mbone = Xerox; mtrace = USC; gethost = external).
  7 **first-party MODERNISED**: `ifrconfig`, `ipvars`, `newfiler`, `pong`,
  `showstat` (main+msgs), `ssh-keygen` (ROOL 2024, mbedTLS via headers only).
  Token-verified.

### Sources/Lib (cont.)
- ☑ **PDebug** — done. Apache, Element 14 1999 (first-party DeskLib consumer).
  `c/Send` tab/spacing fixes, token-verified.

### Sources/Kernel (cont.)
- ☑ **Dev/HeapTest** — done. Apache, Castle 2011. `testbed` reindent.
- ☑ **Dev/VariformTest** — done. Apache, Castle 2011. `VariformTest` reindent;
  tabular test vectors preserved.
- ☑ **Dev/AbortTrap/standalone** — done. BSD-3, ROOL 2021. `cmodule` reindent;
  the 5 `#include "../../../aborttrap/*.c"` wrapper stubs left pristine.
- ☑ **ColourDbox** — done (pending build). Apache, Acorn 1996 (TGR). All 10 C
  files full reindent to 2-space Allman; goto ladders + commented blocks kept.
- ☑ **ColourMenu** — done (pending build). Apache, Acorn 1996 (TGR). All 10 C
  files full reindent; AQU-01196 leak-fix + method tables preserved.
- ☑ **DCS** — done (pending build). Apache, Acorn 1996 (IDJ). All 9 C files full
  reindent; 2 pre-existing unreachable-statement quirks deliberately retained.
- ☑ **FontDbox** — done (pending build). Apache, Acorn 1996 (TGR). All 10 C files
  full reindent; raw 0xA0 bytes preserved byte-level; fall-through in `events` kept.
- ☑ **FontMenu** — done (pending build). Apache, Acorn 1996 (TGR). All 10 C files
  full reindent; PRM-incorrect note + DEBUG menu-dump loops preserved.
- ☑ **Gadgets** — done (pending build). Apache; Acorn 1997 / Element 14 1999
  (`Sizes`) / Castle 2012 (`main`). All 10 C files reindent to 2-space Allman
  (token stream verified byte-identical); 0xA0 byte in `glib` preserved; intricate
  text-layout/scrollbar arithmetic untouched.
  asm→C port (separate effort): **ROM module build-verified**. The only
  assembler left is `s/TAsel_ven`, kept deliberately as a thin WIMP
  drag-callback veneer — the WIMP enters its draw/move/remove routines with
  R12 = the drag workspace (not a set-up C environment), so it cannot be plain
  C. Dead `get_sl` removed and the file documented. Build fix: `c/Utils` and
  `c/Font` (both ported from asm) used `NULL` without `<stddef.h>` — added.
- ☑ **PrintDbox** — done (pending build). Apache, Acorn 1996 (TGR/IDJ). All 10 C
  files full reindent; `events` fall-through + `goto clearup1;;` preserved.
- ☑ **Scale** — done (pending build). Apache, Acorn 1996 (TGR). All 10 C files
  full reindent; dangling-if + unreachable-break quirks + AQU-01176 fix preserved.
- ☑ **ToolAction** — done (pending build). Apache, Acorn 1996 + SJ Middleton 1995.
  `c/main`, `c/toolact` reindent; raw 0xA9 © byte preserved byte-level; gadget
  extension tables + dead-code comment tabs kept verbatim.
- ☑ **tboxlib** — done (pending build). Apache, Acorn 1996 / Pace 2000
  (`objmodule`). All 8 C files reindent; memory-walk/template-fixup arithmetic
  byte-equivalent; exported library API names unchanged.
  asm: `s/toolboxmem` kept deliberately (now documented) — tight Toolbox_Memory
  alloc/free/extend SWI veneers on the hot-path, asm for speed (same category as
  Toolbox `s/memswis`). C files clean (`string32` defines its own NULL).
  **Library build-verified.**
- ☑ **Window** — done (pending build). Apache, Acorn 1996. All 13 C files in
  `Window/c/` reindent to 2-space Allman; all `#ifdef SUPPORT_101`/`PANE_SUPPORT`
  /`MUNGE_PLOT` variants + bug-fix comments preserved; brace counts balanced.
  asm→C port: `s/toolbox`'s `toolbox_delete_object` (a plain Toolbox_DeleteObject
  SWI wrapper) ported to `c/main` alongside the other veneer helpers; the file's
  other routine, `window_starting`, stays asm (OS_AddCallBack handler entered
  with R12=0 — not portable to C). C files scanned clean for missing headers.
  **ROM build-verified.**
- ☑ **Window/gadgets** — done (pending build). Apache, Acorn 1996. All 15 gadget
  impls (`actbut`, `adjuster`, `button`, `display`, `draggable`, `label`,
  `labelbox`, `numrange`, `optbut`, `popupmenu`, `radiobut`, `simple`, `slider`,
  `stringset`, `writable`) reindent; token stream preserved; asm-veneer ABI intact.

**Toolbox object modules: COMPLETE** (Toolbox core, Menu, IconBar, SaveAs,
FileInfo, ProgInfo, ColourDbox, ColourMenu, DCS, FontDbox, FontMenu, Gadgets,
PrintDbox, Scale, ToolAction, tboxlib, Window, Window/gadgets).

**Toolbox asm→C sweep: COMPLETE & build-verified** (Gadgets, Toolbox core,
Window, tboxlib). All genuinely-portable assembler is now C; the only assembler
remaining is documented thin veneers/glue that legitimately cannot be plain C
(WIMP drag/filter callbacks entered with R12=workspace/task-descriptor,
OS_AddCallBack handlers entered with no C environment) or deliberate hot-path
SWI veneers kept for speed (`memswis`, `toolboxmem`). Ports done: Window
`toolbox_delete_object`→`c/main` (plus the earlier Gadgets text-gadget port);
each kept asm file carries an in-file note explaining why.
**ToolboxLib** (client veneer library) — nearly complete (all Apache, Acorn
1994/1996/1997/1998 + ROOL 2024; token-verified vs mirror; raw 0xA9 © banner
bytes preserved):
- ☑ `eventlib` (5), `flexlib` (1), `renderlib` (1) — done.
- ☑ `toolboxlib/sources/`: toolbox(16), window(23), menu(26), treeview(28),
  textarea(14), scrolllist(14), ActionButt(7), button(7), colourdbox(10),
  colourmenu(6), dcs(5), displayfie(3), draggable(6), fileinfo(13), fontdbox(9),
  fontmenu(2), Gadgets(9), iconbar(13), numberrang(5), optionbutt(7), popup(2),
  printdbox(12), proginfo(11), quit(5), radiobutto(7), saveas(13) — done.
- ☑ remaining veneers DONE: `scale, scrollbar, slider, stringset, tabs, writable`
  (41 files), `unused/{stringset,writable}` (4), tools `MakeGen`/`MethodGen` (11).
  MethodGen `codegen.c` emits veneer code via string literals — those `if(...)`
  strings kept byte-exact (generator output unchanged); `addmethod.c` tabular
  `#define` table left verbatim.

**Toolbox subsystem: COMPLETE** (all object modules + the full ToolboxLib
client library).

### Sources/Lib
- ☑ **DebugLib** — done (pending build). Apache + Pace "confidential" dual notice
  (preserved verbatim). 6 of 19 C files changed (tab/indent fixes); 13 already
  conformant, left pristine. Library API names unchanged.
- ☑ **UnicodeLib** — done (pending build). Apache + Pace dual notice; Acorn 1997/
  Pace 2000 / Element 14 1999 / Castle 2005. 24 hand-written C files reindented
  (incl. `mkunictype` generator — emitter string literals byte-exact); generated
  `unictype.c` absent from source (build-time only). Encoding/codec tables and
  state machines byte-equivalent.
- ⊘ **Wild** — SKIPPED (third-party: Julian Smith DeskLib lib, **LGPLv3**). A pass
  modernised it by mistake; reverted byte-for-byte from `N:\RiscOS` mirror.
- ⊘ **Trace** — SKIPPED (third-party: Julian Smith DeskLib lib, **LGPLv3**).

- ☑ **ConfigLib** — done (pending build). Apache, Acorn 1998. 3 of 4 C files
  reindent (`cmos`, `error`, `misc`); `str` already conformant (pristine).
- ☑ **PlainArgv** — done (pending build). Apache, Castle 2014 / Acorn 1997.
  All 6 C files reindent. First-party (consumes DeskLib API but ships own Apache
  LICENSE, no COPYING — distinct from LGPL Wild/Trace/DDTLib). `RemoveThread`
  macro + no-semicolon call sites preserved.
- ⊘ **DDTLib** — SKIPPED (third-party: Julian Smith DeskLib/DDT, **LGPLv3**;
  ships COPYING/COPYING.LESSER). Same footing as Wild/Trace.
- ☑ **callx** — done. Apache, Acorn 1998. `c/callx` reindent, token-verified.
- ☑ **ModMalloc** — done. Apache, Castle 2014 (first-party DeskLib consumer like
  PlainArgv). `c/modm` tabs→2-space Allman, token-verified.
- ☑ **SyncLib** — reviewed; already exemplary (BSD-3, Avison 2012). `c/mutex`
  left pristine, no marker.
- ☑ **remotedb** — done. Apache + Pace confidential dual notice, Acorn 1997.
  `c/remote` tab fixes, token-verified.
- ◐ **RISC_OSLib** — mostly done.
  - `rlib/c` (63 files, the library proper) — DONE: 53 reindented to 2-space
    Allman + 10 already-conformant; **all token-verified identical vs mirror**;
    K&R defs preserved; 0xA9/0xBF/ef-bf-bd © bytes in Acorn-1992 banners restored
    byte-level. Apache + Acorn-1992 "unsupported source release" dual notice. (Note:
    `rlib/c/trace` is rlib's OWN trace module — NOT the LGPL DeskLib Trace.)
  - `RISC_OSLib/c` (20 files, the ANSI C runtime) — **ALL DONE** (user requested
    the runtime files be force-modernised). `string`, `sort`, `stdlib`, `signal`,
    `time`, `xmath`, `Super`, `error`, `complex`, `armprof`, `armsys`, and now the
    8 correctness-critical ones — `alloc`, `math`, `printf`, `scanf`, `fpprintf`,
    `stdio`, `locale`, `ctype` — all reindented to 2-space Allman. For the 8:
    `\`-continued macros, hand-aligned hex-float/character/flag tables, `#pragma`s,
    and stdio's column-0 debug lines were left BYTE-IDENTICAL; switch fall-through
    preserved. **Independently verified**: each is token-identical to the mirror
    (whitespace-stripped, minus marker), its `\`-terminated lines are byte-identical
    to the mirror (no macro touched), LF-only, zero `EF BF BD`, single marker, no
    orphan-brace macro. `date` was already conformant. Originals backed up to
    `%TEMP%\rt_backup` in case a rebuild reveals anything.
  - `!CurveFit` (`Curvefit`, `ScanSpr3`) — already clean 2-space; left pristine
    (dense Bézier/Gaussian-elimination FP maths, no benefit to reflow).

### Sources/Video
- ☑ **Render/DrawFile** — done (pending build). Apache, Acorn 1996/1997. 7 of 10
  C files reindented (old 3-space K&R → 2-space Allman); `main`, `render`,
  `textarea` already conformant (pristine). Raw 0xD7 (×) bytes in `callback`
  preserved byte-level; transform/bbox arithmetic byte-equivalent.
- ☑ **UserI/ScrModes** — done (pending build). Apache, Acorn 1996 / Castle 2016.
  3 of 4 C files reindent (`ScrModes`, `edidsupport`, `mdfsupport`); `tables`
  (VESA DMT/CEA data) skipped as tabular data. 0xB5 (µ) bytes preserved; GTF/CVT
  fixed-point maths byte-equivalent.
- ☑ **UserI/Picker** (ColourPicker) — done (pending build). Apache, Acorn 1996.
  All 8 C files reindent, token-verified against `N:\RiscOS` mirror; 0xA0 byte in
  `rgb` preserved; colour/diffusion maths byte-equivalent.
- ☑ **UserI/Picker/Support011** — done (pending build). Apache, Acorn 1996. All
  11 C files reindent (compressed Acorn brace → 2-space Allman), token-verified
  vs mirror; 0xD7 bytes in `callback` preserved byte-level.
- ☑ **Render/SprExtend** — done (pending build). Mixed: 26 of 37 C files are
  **Independent JPEG Group (libjpeg) — third-party, SKIPPED**. First-party: 2
  changed (`rojpeg` Apache/Acorn, `romerge` BSD-3/ROOL — tab→space), 9 already
  conformant (pristine). Pixel/YCbCr arithmetic byte-equivalent.

- ☑ **Render/CompressPNG** — done (pending build). Apache, ROOL 2019. All 3 C
  files (`compresspng`, `memory`, `module`) reindent to Allman, token-verified;
  libpng/zlib referenced only via headers (no upstream source present).
- ☑ **Render/Super** — done (pending build). Apache, Pace 2001. `Matrix1`,
  `Matrix2` (host table-gen tools) K&R→Allman, token-verified.
- ☑ **Render/Hourglass/Hourmake** — done (pending build). Apache, Acorn 1998.
  `hourmake` reindent; sprite/palette arithmetic byte-equivalent (in-string tab
  preserved).
- ☑ **Render/Colours/MkTables** — reviewed; `maketables` already exemplary C99,
  left pristine (no marker).
- ☑ **Render/Fonts/ROMFonts/Utils/MakeEnc** — done (pending build). Apache,
  Element 14 1999. `makeenc`, `throwback` reindent; UTF-8/UCS arithmetic
  byte-equivalent.
- ☑ **Render/Fonts/FontManager/Utils/!CurveFit** — reviewed; `Curvefit`,
  `ScanSpr3` already 2-space, dense correctness-critical Bézier/FP maths — left
  pristine (like the deferred RISC_OSLib runtime). `Backup/` out of scope.
- ☑ **UserI/ScrSaver** — done (pending build). Acorn 1998/1997. `module`, `app`
  reindent; 0xA9 © byte preserved (mirror is a divergent version — verified
  self-consistently vs Titanium original).

### Sources/Internat
- ☑ **IntKey** — done (pending build). Apache, Acorn 1998. All 4 C files reindent
  (`throwback`, `unicdata`, `keyconvert`, `keygen`); Hangul/keycode arithmetic +
  asm-emitter templates byte-equivalent; `UniData` tabular file left alone.

### Sources/Networking
- ☑ **DHCP** — done (pending build). Apache, Element 14 / Pace 1999. All 8 C files
  reindent, token-verified vs mirror; protocol/byte-order logic byte-equivalent;
  `iparp` (first-party reimpl, not a BSD import) kept; 0xA0 in `module` preserved.
- ☑ **Ethernet/EtherCPSW** — done (pending build). BSD-3, Elesar 2014 / ROOL 2013.
  3 first-party files reindent (`ecpmodule`, `filtering`, `glue`), token-verified;
  MAC/DMA/register arithmetic byte-equivalent. `if_cpsw` (**NetBSD import w/
  upstream tarball — third-party, SKIPPED**).
- ☑ **AUN/Net** — done (pending build). Apache, Acorn 1996. ~10 first-party files
  reindent (`configure`, `io`, `mns*`, `swis`, `inetfn`, `debug`); `route`/`showrt`
  modernised only in their Acorn wrappers — **embedded 4.4BSD route-socket /
  radix-tree blocks left byte-exact**; `text` data tables skipped.
- ☑ **MimeMap** — done (pending build). BSD-3, ROOL 2014. `c/mime` tabs→2-space,
  token-verified.
- ☑ **Omni/OmniLanManFS** — done (pending build). Apache/Acorn 1998 + Element 14;
  `Auth` BSD-3 (Granville). 8 files reindent, ~9 already conformant (pristine).
  **`md4c`/`md5c` (RSA reference code) — third-party, SKIPPED.**
- ☑ **AUN/Access/Freeway** — done (pending build). Apache, Acorn 1996. `module`,
  `objects` reindent, token-verified.
- ⊘ **AUN/Net/gwroute** — SKIPPED (all 10 files). **4.3BSD `routed` daemon** —
  bodies are verbatim Berkeley RIP source under `#ifdef OldCode`; left pristine.
- ◐ **AUN/Internet/riscos** — triaged. `globdata`, `setsoft` (Apache/Acorn glue)
  MODERNISED, token-verified. `mbuf`, `module`, `socket_swi` SKIPPED (4.4BSD
  verbatim: `m_copyback` / `uipc_syscall`). Rest of AUN/Internet = BSD, excluded.

### Sources/Kernel
- ☑ **Kernel** (`c/kstrip`) — done (pending build). BSD-3, ROOL 2021. Host AIF-
  strip tool; tab→2-space, AIF-offset/byte arithmetic byte-equivalent.
- ☑ **aborttrap** — done (pending build). BSD-3, ROOL 2021. `aborttrap`,
  `aterrors`, `atmem`, `atinstr` tab→2-space, token-verified; fault/register/asm
  left byte-equivalent. `atpre` pristine; `atarm` (generated decoder tree) skipped.

### Sources/Printing
- ☑ **Modules/MakePSFont** — done (pending build). Apache, Acorn 1996. All 5 C
  files reindent; one assignment-in-condition split in `provide`; PostScript
  string tables + column-0 debug calls preserved.

_(Components are added to this tracker as they are picked up. The tree has
~hundreds of components across Apps, BuildSys, Modules, Sources/{Audio, Desktop,
FileSys, HAL, HWSupport, Internat, Kernel, Lib, Networking, Printing, Programmer,
SystemRes, Toolbox, Video}.)_
