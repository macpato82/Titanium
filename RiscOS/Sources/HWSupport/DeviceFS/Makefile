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
# Makefile for DeviceFS
#

COMPONENT = DeviceFS
HEADER1   = DeviceFS

# C headers to generate from the assembler sources
ASMCHEADER1  = DeviceFS
EXPORTS      = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER}

include AAsmModule

# Dynamic dependencies:
o.CortexA7.DeviceFS: s.DeviceFS
o.CortexA7.DeviceFS: hdr:ListOpts
o.CortexA7.DeviceFS: hdr:Macros
o.CortexA7.DeviceFS: hdr:System
o.CortexA7.DeviceFS: Hdr:SWIs
o.CortexA7.DeviceFS: Hdr:CPU.Arch
o.CortexA7.DeviceFS: Hdr:Machine.<Machine>
o.CortexA7.DeviceFS: Hdr:Machine.Machine
o.CortexA7.DeviceFS: Hdr:CPU.Generic26
o.CortexA7.DeviceFS: Hdr:CPU.Generic32
o.CortexA7.DeviceFS: Hdr:IO.GenericIO
o.CortexA7.DeviceFS: Hdr:RISCOS
o.CortexA7.DeviceFS: hdr:ModHand
o.CortexA7.DeviceFS: hdr:PublicWS
o.CortexA7.DeviceFS: hdr:FSNumbers
o.CortexA7.DeviceFS: Hdr:HighFSI
o.CortexA7.DeviceFS: hdr:LowFSI
o.CortexA7.DeviceFS: hdr:MsgTrans
o.CortexA7.DeviceFS: hdr:Buffer
o.CortexA7.DeviceFS: hdr:DeviceFS
o.CortexA7.DeviceFS: hdr:FileTypes
o.CortexA7.DeviceFS: hdr:UpCall
o.CortexA7.DeviceFS: hdr:Services
o.CortexA7.DeviceFS: hdr:Symbols
o.CortexA7.DeviceFS: hdr:Variables
o.CortexA7.DeviceFS: hdr:NewErrors
o.CortexA7.DeviceFS: hdr:Territory
o.CortexA7.DeviceFS: hdr:NdrDebug
o.CortexA7.DeviceFS: hdr:DDVMacros
o.CortexA7.DeviceFS: hdr:Proc
o.CortexA7.DeviceFS: hdr:ResourceFS
o.CortexA7.DeviceFS: VersionASM
o.CortexA7.DeviceFS: s.Version
o.CortexA7.DeviceFS: s.Errors
o.CortexA7.DeviceFS: s.Macros
o.CortexA7.DeviceFS: s.FSystem
o.CortexA7.DeviceFS: s.Special
