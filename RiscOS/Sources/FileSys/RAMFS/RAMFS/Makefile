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
# Makefile for RAMFS
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 14-May-01  SNB          Recreated.
#

COMPONENT  = RAMFS

HEADER1    = RAMFS
HEADER2    = RAMFSErr
ASMCHEADER1 = RAMFSErr
TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpText

EXPORTS    = hdr.RAMFSErr ${C_EXP_HDR}.RAMFSErr

include StdTools
include AAsmModule

hdr.RAMFSErr: o.RAMFSErr
	${LD} -bin -o $@ o.RAMFSErr
	SetType $@ Text

o.RAMFSErr: s.RAMFSErr
	${MKDIR} o
	${AS} -o $@ s.RAMFSErr -I<Hdr$Dir>.Global,<Hdr$Dir>.Interface

clean::
	${RM} hdr.RAMFSErr
	@@echo ${COMPONENT}: cleaned 

# Dynamic dependencies:
o.CortexA7.RAMFS: s.RAMFS
o.CortexA7.RAMFS: Hdr:ListOpts
o.CortexA7.RAMFS: Hdr:Macros
o.CortexA7.RAMFS: Hdr:System
o.CortexA7.RAMFS: Hdr:SWIs
o.CortexA7.RAMFS: Hdr:CPU.Arch
o.CortexA7.RAMFS: Hdr:Machine.<Machine>
o.CortexA7.RAMFS: Hdr:Machine.Machine
o.CortexA7.RAMFS: Hdr:CPU.Generic26
o.CortexA7.RAMFS: Hdr:CPU.Generic32
o.CortexA7.RAMFS: Hdr:IO.GenericIO
o.CortexA7.RAMFS: Hdr:RISCOS
o.CortexA7.RAMFS: Hdr:Services
o.CortexA7.RAMFS: Hdr:ModHand
o.CortexA7.RAMFS: Hdr:UpCall
o.CortexA7.RAMFS: Hdr:Tokens
o.CortexA7.RAMFS: Hdr:Proc
o.CortexA7.RAMFS: Hdr:MsgTrans
o.CortexA7.RAMFS: Hdr:FileCore
o.CortexA7.RAMFS: Hdr:FileCoreErr
o.CortexA7.RAMFS: Hdr:HighFSI
o.CortexA7.RAMFS: Hdr:FSNumbers
o.CortexA7.RAMFS: Hdr:NewErrors
o.CortexA7.RAMFS: Hdr:PublicWS
o.CortexA7.RAMFS: Hdr:OSRSI6
o.CortexA7.RAMFS: VersionASM
o.CortexA7.RAMFS: s.Defns
o.CortexA7.RAMFS: s.RamFS05
o.CortexA7.RAMFS: s.RamFS15
o.CortexA7.RAMFS: s.RamFS50
o.CortexA7.RAMFS: s.MsgCode
o.CortexA7.RAMFS: s.TokHelpSrc
