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
# Makefile for DMA
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 07-Mar-01  SNB          Recreated
#

#
# Program specific options:
#
COMPONENT  = DMAManager
TARGET     = DMA
HEADER1    = DMA
HEADER2    = DMADevice
ROM_SOURCE = GetAll.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.DMA: s.GetAll
o.CortexA7.DMA: Hdr:ListOpts
o.CortexA7.DMA: Hdr:Macros
o.CortexA7.DMA: Hdr:System
o.CortexA7.DMA: Hdr:SWIs
o.CortexA7.DMA: Hdr:CPU.Arch
o.CortexA7.DMA: Hdr:Machine.<Machine>
o.CortexA7.DMA: Hdr:Machine.Machine
o.CortexA7.DMA: Hdr:CPU.Generic26
o.CortexA7.DMA: Hdr:CPU.Generic32
o.CortexA7.DMA: Hdr:IO.GenericIO
o.CortexA7.DMA: Hdr:RISCOS
o.CortexA7.DMA: Hdr:ModHand
o.CortexA7.DMA: Hdr:Machine.<Machine>
o.CortexA7.DMA: Hdr:Machine.Machine
o.CortexA7.DMA: Hdr:IO.IOMD
o.CortexA7.DMA: Hdr:Services
o.CortexA7.DMA: Hdr:MsgTrans
o.CortexA7.DMA: Hdr:ResourceFS
o.CortexA7.DMA: Hdr:DevNos
o.CortexA7.DMA: Hdr:Proc
o.CortexA7.DMA: Hdr:FSNumbers
o.CortexA7.DMA: Hdr:NewErrors
o.CortexA7.DMA: Hdr:HostFS
o.CortexA7.DMA: Hdr:NdrDebug
o.CortexA7.DMA: Hdr:DDVMacros
o.CortexA7.DMA: Hdr:Variables
o.CortexA7.DMA: Hdr:DMADevice
o.CortexA7.DMA: hdr:HALDevice
o.CortexA7.DMA: Hdr:PCI
o.CortexA7.DMA: Hdr:HALEntries
o.CortexA7.DMA: VersionASM
o.CortexA7.DMA: s.CallHAL
o.CortexA7.DMA: s.Front
o.CortexA7.DMA: s.Macros
o.CortexA7.DMA: s.Errors
o.CortexA7.DMA: s.ModHead
o.CortexA7.DMA: s.SWI
o.CortexA7.DMA: s.DMA
o.CortexA7.DMA: s.Command
o.CortexA7.DMA: s.Tail
