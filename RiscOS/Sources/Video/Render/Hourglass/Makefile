# Copyright 1996 Acorn Computers Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Makefile for Hourglass
#
# Converted from assembler (AAsmModule) to C (CModule), 2026.
#

COMPONENT  = Hourglass
TARGET     = Hourglass
CMHGFILE   = modhead
# module = C body; Veneer = the one retained asm routine (IRQ->SVC mode switch).
OBJS       = module Veneer
# c/module #includes the CMunge-generated modhead.h (for error_BAD_SWI), so the
# header must be generated (cmunge -d) before it compiles.
CMHGDEPENDS = module
# Keep exporting hdr/Hourglass as Hdr:Hourglass (the SWI definitions other
# modules' swis.h depends on); unchanged from the assembler component.
ASMHDRS    = Hourglass
HDRS       =
CINCLUDES  = ${RINC}
CMHGDEFINES = -DCOMPONENT=${COMPONENT} ${CDEFINES}

include StdTools
include CModule

# Use CMunge regardless of which BuildSys StdTools is on the make path (it
# understands the module header this component relies on).  -32bit because
# CMunge defaults to -26bit.
CMHG       = cmunge -tnorcroft -32bit

# ROM C modules are fixed-position: link against the shared C library's absolute
# symbols, and pull in the run-time library for the standalone (RAM) build.
ROM_SYMS   = ${ABSSYM}
SA_LIBS    += ${RLIB}

# Dynamic dependencies:
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.Services
o.module:	h.modhead
o.module:	C:h.kernel
o.module:	h.hourglass
o.module:	C:h.kernel
o.module:	h.shapes
h.modhead:	cmhg.modhead
h.modhead:	C:Global.h.Services
h.modhead:	VersionNum
o.Veneer: s.Veneer
o.modhead:	cmhg.modhead
o.modhead:	C:Global.h.Services
o.modhead:	VersionNum
