# Copyright 2002 Tematic Ltd
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
# Makefile for PCI
#

COMPONENT = PCI

#
# Program specific options:
#
HEADER1    = ${COMPONENT}
ASMCHEADER1= ${COMPONENT}
EXPORTS    = ${C_EXP_HDR}.${ASMCHEADER1}

TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpTexts
ROM_SOURCE = GetAll.s

ASFLAGS    = ${OPTIONS}

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.PCI: s.GetAll
o.CortexA7.PCI: Hdr:ListOpts
o.CortexA7.PCI: Hdr:Macros
o.CortexA7.PCI: Hdr:System
o.CortexA7.PCI: Hdr:SWIs
o.CortexA7.PCI: Hdr:CPU.Arch
o.CortexA7.PCI: Hdr:Machine.<Machine>
o.CortexA7.PCI: Hdr:Machine.Machine
o.CortexA7.PCI: Hdr:CPU.Generic26
o.CortexA7.PCI: Hdr:CPU.Generic32
o.CortexA7.PCI: Hdr:IO.GenericIO
o.CortexA7.PCI: Hdr:RISCOS
o.CortexA7.PCI: Hdr:MEMM.VMSAv6
o.CortexA7.PCI: Hdr:CMOS
o.CortexA7.PCI: Hdr:ModHand
o.CortexA7.PCI: Hdr:Debug
o.CortexA7.PCI: Hdr:PCI
o.CortexA7.PCI: Hdr:FSNumbers
o.CortexA7.PCI: Hdr:HighFSI
o.CortexA7.PCI: Hdr:NewErrors
o.CortexA7.PCI: Hdr:Services
o.CortexA7.PCI: Hdr:Tokens
o.CortexA7.PCI: Hdr:Proc
o.CortexA7.PCI: Hdr:Symbols
o.CortexA7.PCI: Hdr:HALEntries
o.CortexA7.PCI: Hdr:ResourceFS
o.CortexA7.PCI: Hdr:MsgTrans
o.CortexA7.PCI: Hdr:Heap
o.CortexA7.PCI: Hdr:OSMem
o.CortexA7.PCI: VersionASM
o.CortexA7.PCI: s.Structures
o.CortexA7.PCI: s.Module
o.CortexA7.PCI: s.Interface
o.CortexA7.PCI: s.Scan
o.CortexA7.PCI: s.Commands
o.CortexA7.PCI: s.Memory
o.CortexA7.PCI: s.Errors
o.CortexA7.PCI: HelpTexts
o.CortexA7.PCI: s.MsgCode
