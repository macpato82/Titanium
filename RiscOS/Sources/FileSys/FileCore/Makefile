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
# Makefile for FileCore
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 14-May-01  SNB          Created.
#

COMPONENT = FileCore

HEADER1 = FileCore
HEADER2 = MultiFS
HEADER3 = FileCoreErr
ASMCHEADER1 = FileCore
CHEADER1 = FileCoreErr

EXPORTS = ${C_EXP_HDR}.FileCore ${C_EXP_HDR}.FileCoreErr

TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpText

include StdTools
include AAsmModule

h.FileCoreErr: o.FileCoreErr
	${MKDIR} h
	${LD} -bin -o $@ o.FileCoreErr
	SetType $@ Text

o.FileCoreErr: s.FileCoreErr
	${MKDIR} o
	${AS} -o $@ s.FileCoreErr -I<Hdr$Dir>.Global,<Hdr$Dir>.Interface

clean::
	@IfThere h Then ${ECHO} ${WIPE} h ${WFLAGS}
	@IfThere h Then ${WIPE} h ${WFLAGS}

# Dynamic dependencies:
o.CortexA7.FileCore: s.FileCore
o.CortexA7.FileCore: Hdr:ListOpts
o.CortexA7.FileCore: Hdr:Macros
o.CortexA7.FileCore: Hdr:System
o.CortexA7.FileCore: Hdr:SWIs
o.CortexA7.FileCore: Hdr:CPU.Arch
o.CortexA7.FileCore: Hdr:Machine.<Machine>
o.CortexA7.FileCore: Hdr:Machine.Machine
o.CortexA7.FileCore: Hdr:CPU.Generic26
o.CortexA7.FileCore: Hdr:CPU.Generic32
o.CortexA7.FileCore: Hdr:IO.GenericIO
o.CortexA7.FileCore: Hdr:RISCOS
o.CortexA7.FileCore: Hdr:Machine.<Machine>
o.CortexA7.FileCore: Hdr:Machine.Machine
o.CortexA7.FileCore: Hdr:HALEntries
o.CortexA7.FileCore: Hdr:CMOS
o.CortexA7.FileCore: Hdr:Services
o.CortexA7.FileCore: Hdr:ModHand
o.CortexA7.FileCore: Hdr:FSNumbers
o.CortexA7.FileCore: Hdr:HighFSI
o.CortexA7.FileCore: Hdr:PublicWS
o.CortexA7.FileCore: Hdr:Tokens
o.CortexA7.FileCore: Hdr:Wimp
o.CortexA7.FileCore: Hdr:UpCall
o.CortexA7.FileCore: Hdr:VduExt
o.CortexA7.FileCore: Hdr:LowFSI
o.CortexA7.FileCore: Hdr:Heap
o.CortexA7.FileCore: Hdr:FileCore
o.CortexA7.FileCore: Hdr:MsgTrans
o.CortexA7.FileCore: Hdr:FileTypes
o.CortexA7.FileCore: Hdr:OsWords
o.CortexA7.FileCore: Hdr:OsBytes
o.CortexA7.FileCore: Hdr:OSMem
o.CortexA7.FileCore: Hdr:MultiFS
o.CortexA7.FileCore: Hdr:NewErrors
o.CortexA7.FileCore: Hdr:Territory
o.CortexA7.FileCore: Hdr:OSRSI6
o.CortexA7.FileCore: VersionASM
o.CortexA7.FileCore: s.DebugOpts
o.CortexA7.FileCore: s.MyMacros
o.CortexA7.FileCore: s.Defns
o.CortexA7.FileCore: s.FileCore00
o.CortexA7.FileCore: s.Errors
o.CortexA7.FileCore: Hdr:FileCoreErr
o.CortexA7.FileCore: Hdr:ADFSErr
o.CortexA7.FileCore: Hdr:FileCoreErr
o.CortexA7.FileCore: s.FileCore05
o.CortexA7.FileCore: s.FileCore15
o.CortexA7.FileCore: s.FileCore20
o.CortexA7.FileCore: s.FileCore25
o.CortexA7.FileCore: s.FileCore30
o.CortexA7.FileCore: s.FileCore31
o.CortexA7.FileCore: s.FileCore32
o.CortexA7.FileCore: s.FileCore33
o.CortexA7.FileCore: s.FileCore35
o.CortexA7.FileCore: s.FileCore40
o.CortexA7.FileCore: s.FileCore45
o.CortexA7.FileCore: s.TokHelpSrc
o.CortexA7.FileCore: s.InitDieSvc
o.CortexA7.FileCore: s.Commands
o.CortexA7.FileCore: s.GenSWIs
o.CortexA7.FileCore: s.MsgsStuff
o.CortexA7.FileCore: s.FileCore60
o.CortexA7.FileCore: s.FileCore70
o.CortexA7.FileCore: s.FileCore80
o.CortexA7.FileCore: s.FormSrvcs
o.CortexA7.FileCore: s.FormSWIs
o.CortexA7.FileCore: s.Identify
o.CortexA7.FileCore: s.BigDirCode
