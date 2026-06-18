# Copyright 2010 Castle Technology Ltd
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
# Makefile for Portable (HAL based)
#

COMPONENT = Portable
HEADER1   = Portable
ROM_SOURCE = GetAll.s
HEADER2   = CPUClkDevice
HEADER3   = BMUDevice
ASMCHEADER1 = Portable
CHEADER1  = CPUClkDevice
EXPORTS   = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER} \
            ${C_EXP_HDR}${SEP}${CHEADER1}${SUFFIX_HEADER}

include AAsmModule

# Dynamic dependencies:
o.CortexA7.Portable: s.GetAll
o.CortexA7.Portable: Hdr:ListOpts
o.CortexA7.Portable: Hdr:Macros
o.CortexA7.Portable: Hdr:System
o.CortexA7.Portable: Hdr:SWIs
o.CortexA7.Portable: Hdr:CPU.Arch
o.CortexA7.Portable: Hdr:Machine.<Machine>
o.CortexA7.Portable: Hdr:Machine.Machine
o.CortexA7.Portable: Hdr:CPU.Generic26
o.CortexA7.Portable: Hdr:CPU.Generic32
o.CortexA7.Portable: Hdr:IO.GenericIO
o.CortexA7.Portable: Hdr:RISCOS
o.CortexA7.Portable: Hdr:ModHand
o.CortexA7.Portable: Hdr:Services
o.CortexA7.Portable: Hdr:FSNumbers
o.CortexA7.Portable: Hdr:NewErrors
o.CortexA7.Portable: Hdr:MsgTrans
o.CortexA7.Portable: Hdr:ResourceFS
o.CortexA7.Portable: Hdr:Proc
o.CortexA7.Portable: Hdr:Portable
o.CortexA7.Portable: Hdr:HALEntries
o.CortexA7.Portable: Hdr:CPUClkDevice
o.CortexA7.Portable: hdr:HALDevice
o.CortexA7.Portable: Hdr:BMUDevice
o.CortexA7.Portable: Hdr:OSMisc
o.CortexA7.Portable: VersionASM
o.CortexA7.Portable: s.Front
o.CortexA7.Portable: s.StPortable
