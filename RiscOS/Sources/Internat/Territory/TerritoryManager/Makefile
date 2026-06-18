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
# Makefile for Territory Manager
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
# 21-Nov-00  SBF          Added StripDepnd support.
# 26-Feb-01  SBF          StripDepnd support moved to MkClean
#

COMPONENT  = TerritoryManager
TARGET     = TerrMgr
HEADER1    = Territory
SPRITEFILE = z.SystemDisc

ASFLAGS    = -PD "SpriteDisc SETS \"${SPRITEFILE}\""

include StdTools
include AAsmModule

${SA_OBJECT} ${DBG_OBJECT} ${ROM_OBJECT}: ${SPRITEFILE}

${SPRITEFILE}: SystemDisc
	${SQUASH} SystemDisc $@

clean ::
	${RM} ${SPRITEFILE}


# Dynamic dependencies:
o.CortexA7.TerrMgr: s.TerrMgr
o.CortexA7.TerrMgr: Hdr:ListOpts
o.CortexA7.TerrMgr: Hdr:Macros
o.CortexA7.TerrMgr: Hdr:System
o.CortexA7.TerrMgr: Hdr:SWIs
o.CortexA7.TerrMgr: Hdr:CPU.Arch
o.CortexA7.TerrMgr: Hdr:Machine.<Machine>
o.CortexA7.TerrMgr: Hdr:Machine.Machine
o.CortexA7.TerrMgr: Hdr:CPU.Generic26
o.CortexA7.TerrMgr: Hdr:CPU.Generic32
o.CortexA7.TerrMgr: Hdr:IO.GenericIO
o.CortexA7.TerrMgr: Hdr:RISCOS
o.CortexA7.TerrMgr: Hdr:Machine.<Machine>
o.CortexA7.TerrMgr: Hdr:Machine.Machine
o.CortexA7.TerrMgr: Hdr:UserIF.<UserIF>
o.CortexA7.TerrMgr: Hdr:UserIF.UserIF
o.CortexA7.TerrMgr: Hdr:ModHand
o.CortexA7.TerrMgr: Hdr:OsWords
o.CortexA7.TerrMgr: Hdr:Services
o.CortexA7.TerrMgr: Hdr:VduExt
o.CortexA7.TerrMgr: Hdr:Countries
o.CortexA7.TerrMgr: Hdr:FSNumbers
o.CortexA7.TerrMgr: Hdr:HighFSI
o.CortexA7.TerrMgr: Hdr:NewErrors
o.CortexA7.TerrMgr: Hdr:Variables
o.CortexA7.TerrMgr: Hdr:Proc
o.CortexA7.TerrMgr: Hdr:Sprite
o.CortexA7.TerrMgr: Hdr:Wimp
o.CortexA7.TerrMgr: Hdr:CMOS
o.CortexA7.TerrMgr: Hdr:OsBytes
o.CortexA7.TerrMgr: Hdr:MsgTrans
o.CortexA7.TerrMgr: Hdr:Squash
o.CortexA7.TerrMgr: Hdr:ColourTran
o.CortexA7.TerrMgr: Hdr:Internatio
o.CortexA7.TerrMgr: Hdr:Territory
o.CortexA7.TerrMgr: Hdr:NdrDebug
o.CortexA7.TerrMgr: VersionASM
o.CortexA7.TerrMgr: s.ModHead
o.CortexA7.TerrMgr: z.SystemDisc
o.CortexA7.TerrMgr: s.Daylight
o.CortexA7.TerrMgr: s.SWIs
o.CortexA7.TerrMgr: s.Tail
