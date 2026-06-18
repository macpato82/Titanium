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
# Makefile for SCSIFS
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
#

COMPONENT = SCSIFS

#
# Program specific options:
#
CHEADER1  = ${COMPONENT}
HEADER1   = ${COMPONENT}
HEADER2   = SCSIFSErr
ASMCHEADER1 = SCSIFSErr

EXPORTS   = hdr.SCSIFSErr ${C_EXP_HDR}.SCSIFSErr

TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpText
ROM_SOURCE = Hdr_fst.s

include StdTools
include AAsmModule

hdr.SCSIFSErr: o.SCSIFSErr
	${LD} -bin -o $@ o.SCSIFSErr
	SetType $@ Text

o.SCSIFSErr: s.SCSIFSErr
	${MKDIR} o
	${AS} -o $@ s.SCSIFSErr -I<Hdr$Dir>.Global,<Hdr$Dir>.Interface

#
# Generic rules:
#
clean::
	${WIPE} o ${WFLAGS}
	${RM} hdr.SCSIFSErr

# Dynamic dependencies:
o.CortexA7.SCSIFS: s.Hdr_fst
o.CortexA7.SCSIFS: Hdr:ListOpts
o.CortexA7.SCSIFS: Hdr:Macros
o.CortexA7.SCSIFS: Hdr:System
o.CortexA7.SCSIFS: Hdr:SWIs
o.CortexA7.SCSIFS: Hdr:CPU.Arch
o.CortexA7.SCSIFS: Hdr:Machine.<Machine>
o.CortexA7.SCSIFS: Hdr:Machine.Machine
o.CortexA7.SCSIFS: Hdr:CPU.Generic26
o.CortexA7.SCSIFS: Hdr:CPU.Generic32
o.CortexA7.SCSIFS: Hdr:IO.GenericIO
o.CortexA7.SCSIFS: Hdr:RISCOS
o.CortexA7.SCSIFS: Hdr:Proc
o.CortexA7.SCSIFS: Hdr:CMOS
o.CortexA7.SCSIFS: Hdr:HighFSI
o.CortexA7.SCSIFS: Hdr:FSNumbers
o.CortexA7.SCSIFS: Hdr:OsBytes
o.CortexA7.SCSIFS: Hdr:FileCore
o.CortexA7.SCSIFS: Hdr:Services
o.CortexA7.SCSIFS: Hdr:ModHand
o.CortexA7.SCSIFS: Hdr:PublicWS
o.CortexA7.SCSIFS: Hdr:Tokens
o.CortexA7.SCSIFS: Hdr:UpCall
o.CortexA7.SCSIFS: Hdr:NewErrors
o.CortexA7.SCSIFS: Hdr:MsgTrans
o.CortexA7.SCSIFS: Hdr:ResourceFS
o.CortexA7.SCSIFS: Hdr:SCSI
o.CortexA7.SCSIFS: Hdr:SCSIErr
o.CortexA7.SCSIFS: Hdr:OSRSI6
o.CortexA7.SCSIFS: Hdr:Portable
o.CortexA7.SCSIFS: VersionASM
o.CortexA7.SCSIFS: s.ScsiFs00
o.CortexA7.SCSIFS: hdr.MyMacros
o.CortexA7.SCSIFS: hdr.MyErrors
o.CortexA7.SCSIFS: Hdr:FileCoreErr
o.CortexA7.SCSIFS: Hdr:SCSIFSErr
o.CortexA7.SCSIFS: s.ScsiFs05
o.CortexA7.SCSIFS: s.ScsiFs15
o.CortexA7.SCSIFS: s.ScsiFs20
o.CortexA7.SCSIFS: s.TokHelpSrc
o.CortexA7.SCSIFS: s.MsgCode
o.CortexA7.SCSIFS: s.ScsiFs50
