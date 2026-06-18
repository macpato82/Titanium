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
# Makefile for Display Manager
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 23-Mar-01  SNB          Recreated.
# 2026       (port)       Converted from assembler (AAsmModule) to C (CModule).
#

COMPONENT  = DisplayManager
TARGET     = Display
CMHGFILE   = modhead
OBJS       = module
# C sources that #include the CMunge-generated modhead.h (so the header is
# generated before they compile).  Add later c/ files here as they are ported.
CMHGDEPENDS = module
HDRS       =
CINCLUDES  = ${RINC}
CMHGDEFINES = -DCOMPONENT=${COMPONENT} ${CDEFINES}
INSTRES_FILES = Templates
INSTRES_VERSION = Messages
RAMCDEFINES = -DSTANDALONE

include StdTools
include CModule

# Use CMunge for this component regardless of which BuildSys StdTools is on the
# make path (the active StdTools still selects the Acorn cmhg, which does not
# understand module-is-runnable / error-base / error-identifiers).  Overriding
# after the includes makes the .cmhg rules invoke cmunge.  -32bit because CMunge
# defaults to -26bit.
CMHG       = cmunge -tnorcroft -32bit

# ROM C modules are fixed-position: link against the shared C library's absolute
# symbols, and pull in the run-time library for the standalone (RAM) build.
ROM_SYMS   = ${ABSSYM}
SA_LIBS    += ${RLIB}

# Dynamic dependencies:
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.RISCOS
o.module:	C:Global.h.Services
o.module:	C:Global.h.ModHand
o.module:	C:Global.h.Variables
o.module:	h.modhead
o.module:	C:h.kernel
o.module:	h.display
o.module:	C:h.kernel
o.module:	h.options
h.modhead:	cmhg.modhead
h.modhead:	C:Global.h.Services
h.modhead:	VersionNum
o.modhead:	cmhg.modhead
o.modhead:	C:Global.h.Services
o.modhead:	VersionNum
