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
# Makefile for NetFS
#

COMPONENT  = NetFS
ROM_SOURCE = Module.s
TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpTexts
SOURCES_TO_SYMLINK = HelpTexts

include AAsmModule

# Dynamic dependencies:
o.CortexA7.NetFS: s.Module
o.CortexA7.NetFS: Hdr:ListOpts
o.CortexA7.NetFS: Hdr:Macros
o.CortexA7.NetFS: Hdr:System
o.CortexA7.NetFS: Hdr:SWIs
o.CortexA7.NetFS: Hdr:CPU.Arch
o.CortexA7.NetFS: Hdr:Machine.<Machine>
o.CortexA7.NetFS: Hdr:Machine.Machine
o.CortexA7.NetFS: Hdr:CPU.Generic26
o.CortexA7.NetFS: Hdr:CPU.Generic32
o.CortexA7.NetFS: Hdr:IO.GenericIO
o.CortexA7.NetFS: Hdr:RISCOS
o.CortexA7.NetFS: Hdr:Proc
o.CortexA7.NetFS: Hdr:CMOS
o.CortexA7.NetFS: Hdr:ModHand
o.CortexA7.NetFS: Hdr:Heap
o.CortexA7.NetFS: Hdr:Services
o.CortexA7.NetFS: Hdr:Debug
o.CortexA7.NetFS: Hdr:FSNumbers
o.CortexA7.NetFS: Hdr:HighFSI
o.CortexA7.NetFS: Hdr:LowFSI
o.CortexA7.NetFS: Hdr:Econet
o.CortexA7.NetFS: Hdr:OsBytes
o.CortexA7.NetFS: Hdr:NewErrors
o.CortexA7.NetFS: Hdr:VduExt
o.CortexA7.NetFS: Hdr:Tokens
o.CortexA7.NetFS: Hdr:MsgTrans
o.CortexA7.NetFS: Hdr:Territory
o.CortexA7.NetFS: Hdr:Symbols
o.CortexA7.NetFS: Hdr:Portable
o.CortexA7.NetFS: Hdr:ResourceFS
o.CortexA7.NetFS: VersionASM
o.CortexA7.NetFS: s.Memory
o.CortexA7.NetFS: s.Interface
o.CortexA7.NetFS: s.FileSystem
o.CortexA7.NetFS: s.Commands
o.CortexA7.NetFS: s.Configure
o.CortexA7.NetFS: s.OsFile
o.CortexA7.NetFS: s.Random
o.CortexA7.NetFS: s.Functions
o.CortexA7.NetFS: s.Catalog
o.CortexA7.NetFS: s.TokHelpSrc
