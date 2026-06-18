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
# Makefile for Desktop
#

COMPONENT       = Desktop
INSTRES_FILES   = Sprites Templates
INSTRES_DEPENDS = compress

ifeq (${TARGET},ThemeDefs)
CUSTOMSA        = custom
install_custom: 
	${MKDIR} ${INSTDIR}.${USERIF}
	${CP} LocalRes:${USERIF}.Sprites ${INSTDIR}.${USERIF}.Banner ${CPFLAGS}
	@${ECHO} ${COMPONENT}: disc theme resources installed
endif

compress:
	${SQUASH} LocalRes:${USERIF}.Sprites Sprites

clean::
	${RM} Sprites

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Desktop: s.Desktop
o.CortexA7.Desktop: Hdr:ListOpts
o.CortexA7.Desktop: Hdr:Macros
o.CortexA7.Desktop: Hdr:System
o.CortexA7.Desktop: Hdr:SWIs
o.CortexA7.Desktop: Hdr:CPU.Arch
o.CortexA7.Desktop: Hdr:Machine.<Machine>
o.CortexA7.Desktop: Hdr:Machine.Machine
o.CortexA7.Desktop: Hdr:CPU.Generic26
o.CortexA7.Desktop: Hdr:CPU.Generic32
o.CortexA7.Desktop: Hdr:IO.GenericIO
o.CortexA7.Desktop: Hdr:RISCOS
o.CortexA7.Desktop: Hdr:ModHand
o.CortexA7.Desktop: Hdr:Services
o.CortexA7.Desktop: Hdr:Machine.<Machine>
o.CortexA7.Desktop: Hdr:Machine.Machine
o.CortexA7.Desktop: Hdr:UserIF.<UserIF>
o.CortexA7.Desktop: Hdr:UserIF.UserIF
o.CortexA7.Desktop: Hdr:CMOS
o.CortexA7.Desktop: Hdr:Proc
o.CortexA7.Desktop: Hdr:FSNumbers
o.CortexA7.Desktop: Hdr:HighFSI
o.CortexA7.Desktop: Hdr:LowFSi
o.CortexA7.Desktop: Hdr:NewErrors
o.CortexA7.Desktop: Hdr:Variables
o.CortexA7.Desktop: Hdr:Wimp
o.CortexA7.Desktop: Hdr:WimpSpace
o.CortexA7.Desktop: Hdr:Messages
o.CortexA7.Desktop: Hdr:ResourceFS
o.CortexA7.Desktop: Hdr:MsgTrans
o.CortexA7.Desktop: Hdr:Font
o.CortexA7.Desktop: Hdr:Draw
o.CortexA7.Desktop: Hdr:ColourTran
o.CortexA7.Desktop: VersionASM
o.CortexA7.Desktop: Hdr:NDRDebug
o.CortexA7.Desktop: Hdr:Sprite
o.CortexA7.Desktop: Hdr:Squash
o.CortexA7.Desktop: Hdr:ADFS
