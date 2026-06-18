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
OBJS       = module msgtrans icon window mode menu mouse message
# C sources that #include the CMunge-generated modhead.h (so the header is
# generated before they compile).  Add later c/ files here as they are ported.
CMHGDEPENDS = module window mode menu message
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
o.module:	h.modedefs
o.module:	h.options
o.msgtrans:	c.msgtrans
o.msgtrans:	C:h.kernel
o.msgtrans:	C:h.swis
o.msgtrans:	h.display
o.msgtrans:	C:h.kernel
o.msgtrans:	h.options
o.msgtrans:	h.modedefs
o.msgtrans:	h.options
o.icon:	c.icon
o.icon:	C:h.kernel
o.icon:	C:h.swis
o.icon:	h.display
o.icon:	C:h.kernel
o.icon:	h.options
o.icon:	h.modedefs
o.icon:	h.options
o.icon:	h.wimpdefs
o.window:	c.window
o.window:	C:h.kernel
o.window:	C:h.swis
o.window:	C:Global.h.ModHand
o.window:	h.modhead
o.window:	C:h.kernel
o.window:	h.display
o.window:	C:h.kernel
o.window:	h.options
o.window:	h.modedefs
o.window:	h.options
o.window:	h.wimpdefs
o.mode:	c.mode
o.mode:	C:h.kernel
o.mode:	C:h.swis
o.mode:	C:Global.h.ModHand
o.mode:	h.modhead
o.mode:	C:h.kernel
o.mode:	h.display
o.mode:	C:h.kernel
o.mode:	h.options
o.mode:	h.modedefs
o.mode:	h.options
o.mode:	h.modedefs
o.mode:	h.wimpdefs
o.menu:	c.menu
o.menu:	C:h.kernel
o.menu:	C:h.swis
o.menu:	h.modhead
o.menu:	C:h.kernel
o.menu:	h.display
o.menu:	C:h.kernel
o.menu:	h.options
o.menu:	h.modedefs
o.menu:	h.options
o.menu:	h.modedefs
o.menu:	h.wimpdefs
o.mouse:	c.mouse
o.mouse:	C:h.kernel
o.mouse:	C:h.swis
o.mouse:	h.display
o.mouse:	C:h.kernel
o.mouse:	h.options
o.mouse:	h.modedefs
o.mouse:	h.options
o.mouse:	h.modedefs
o.mouse:	h.wimpdefs
o.message:	c.message
o.message:	C:h.kernel
o.message:	C:h.swis
o.message:	C:Global.h.Variables
o.message:	h.modhead
o.message:	C:h.kernel
o.message:	h.display
o.message:	C:h.kernel
o.message:	h.options
o.message:	h.modedefs
o.message:	h.options
o.message:	h.modedefs
o.message:	h.wimpdefs
h.modhead:	cmhg.modhead
h.modhead:	C:Global.h.Services
h.modhead:	VersionNum
o.modhead:	cmhg.modhead
o.modhead:	C:Global.h.Services
o.modhead:	VersionNum
