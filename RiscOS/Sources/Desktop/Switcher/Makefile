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
# Makefile for Task Manager
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
# 18-Oct-94  AMcC         Templates copied to Resources as 'Templates' not 'Template3D'
#

COMPONENT = TaskManager
TARGET    = Switcher
HEADER1  = ${TARGET}

CMDHELP := special

include StdTools
include AAsmModule

resources-special:
	${MKDIR} ${RESFSDIR}
	Set SwitcherRes$Path LocalUserIFRes:,LocalRes:
	${CP} SwitcherRes:Messages  ${RESFSDIR}.Messages ${CPFLAGS}
	${CP} SwitcherRes:Templates ${RESFSDIR}.Templates ${CPFLAGS}
	Unset SwitcherRes$Path
	@echo ${COMPONENT}: resource files copied


# Dynamic dependencies:
o.CortexA7.Switcher: s.Switcher
o.CortexA7.Switcher: Hdr:ListOpts
o.CortexA7.Switcher: Hdr:Macros
o.CortexA7.Switcher: Hdr:System
o.CortexA7.Switcher: Hdr:SWIs
o.CortexA7.Switcher: Hdr:CPU.Arch
o.CortexA7.Switcher: Hdr:Machine.<Machine>
o.CortexA7.Switcher: Hdr:Machine.Machine
o.CortexA7.Switcher: Hdr:CPU.Generic26
o.CortexA7.Switcher: Hdr:CPU.Generic32
o.CortexA7.Switcher: Hdr:IO.GenericIO
o.CortexA7.Switcher: Hdr:RISCOS
o.CortexA7.Switcher: Hdr:Machine.<Machine>
o.CortexA7.Switcher: Hdr:Machine.Machine
o.CortexA7.Switcher: Hdr:UserIF.<UserIF>
o.CortexA7.Switcher: Hdr:UserIF.UserIF
o.CortexA7.Switcher: Hdr:Proc
o.CortexA7.Switcher: Hdr:CMOS
o.CortexA7.Switcher: Hdr:ModHand
o.CortexA7.Switcher: Hdr:Services
o.CortexA7.Switcher: Hdr:VduExt
o.CortexA7.Switcher: Hdr:FSNumbers
o.CortexA7.Switcher: Hdr:HighFSI
o.CortexA7.Switcher: Hdr:FileTypes
o.CortexA7.Switcher: Hdr:NewErrors
o.CortexA7.Switcher: Hdr:FileCore
o.CortexA7.Switcher: Hdr:Sprite
o.CortexA7.Switcher: Hdr:Variables
o.CortexA7.Switcher: Hdr:Wimp
o.CortexA7.Switcher: Hdr:WimpSpace
o.CortexA7.Switcher: Hdr:Font
o.CortexA7.Switcher: Hdr:Messages
o.CortexA7.Switcher: Hdr:MsgTrans
o.CortexA7.Switcher: Hdr:ResourceFS
o.CortexA7.Switcher: Hdr:Hourglass
o.CortexA7.Switcher: Hdr:Switcher
o.CortexA7.Switcher: Hdr:UpCall
o.CortexA7.Switcher: Hdr:MsgMenus
o.CortexA7.Switcher: Hdr:DragASprit
o.CortexA7.Switcher: Hdr:Portable
o.CortexA7.Switcher: Hdr:NDRDebug
o.CortexA7.Switcher: Hdr:OSRSI6
o.CortexA7.Switcher: Hdr:OsBytes
o.CortexA7.Switcher: Hdr:OsWords
o.CortexA7.Switcher: Hdr:OSMem
o.CortexA7.Switcher: VersionASM
