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
# Makefile for Buffer Manager
#

COMPONENT   = BufferManager
TARGET      = Buffers
HEADER1     = Buffer
ASMCHEADER1 = Buffer
EXPORTS     = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER}

include AAsmModule

# Dynamic dependencies:
o.CortexA7.Buffers: s.Buffers
o.CortexA7.Buffers: Hdr:ListOpts
o.CortexA7.Buffers: Hdr:Macros
o.CortexA7.Buffers: Hdr:System
o.CortexA7.Buffers: Hdr:SWIs
o.CortexA7.Buffers: Hdr:CPU.Arch
o.CortexA7.Buffers: Hdr:Machine.<Machine>
o.CortexA7.Buffers: Hdr:Machine.Machine
o.CortexA7.Buffers: Hdr:CPU.Generic26
o.CortexA7.Buffers: Hdr:CPU.Generic32
o.CortexA7.Buffers: Hdr:IO.GenericIO
o.CortexA7.Buffers: Hdr:RISCOS
o.CortexA7.Buffers: Hdr:ModHand
o.CortexA7.Buffers: Hdr:FSNumbers
o.CortexA7.Buffers: Hdr:NewErrors
o.CortexA7.Buffers: Hdr:Services
o.CortexA7.Buffers: Hdr:Symbols
o.CortexA7.Buffers: Hdr:NdrDebug
o.CortexA7.Buffers: Hdr:DDVMacros
o.CortexA7.Buffers: Hdr:UpCall
o.CortexA7.Buffers: Hdr:MsgTrans
o.CortexA7.Buffers: Hdr:Proc
o.CortexA7.Buffers: Hdr:ResourceFS
o.CortexA7.Buffers: Hdr:HostFS
o.CortexA7.Buffers: VersionASM
o.CortexA7.Buffers: s.Errors
o.CortexA7.Buffers: s.MoveBlock
