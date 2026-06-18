# Titanium — RISC OS source modernisation

**Private repository — third-party RISC OS source.** This tree contains a full
RISC OS source tree (Acorn / Pace / Castle / RISC OS Open and others) and must
not be made public. All original copyright notices and Apache-2.0 licence
headers are retained in every file; the modernisation work below preserves them
byte-for-byte. Only first-party additions are separately licensed.

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
