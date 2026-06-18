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
# Makefile for NetPrint
#

COMPONENT  = NetPrint
ROM_SOURCE = Module.s
TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpTexts

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.NetPrint: s.Module
o.CortexA7.NetPrint: Hdr:ListOpts
o.CortexA7.NetPrint: Hdr:Macros
o.CortexA7.NetPrint: Hdr:System
o.CortexA7.NetPrint: Hdr:SWIs
o.CortexA7.NetPrint: Hdr:CPU.Arch
o.CortexA7.NetPrint: Hdr:Machine.<Machine>
o.CortexA7.NetPrint: Hdr:Machine.Machine
o.CortexA7.NetPrint: Hdr:CPU.Generic26
o.CortexA7.NetPrint: Hdr:CPU.Generic32
o.CortexA7.NetPrint: Hdr:IO.GenericIO
o.CortexA7.NetPrint: Hdr:RISCOS
o.CortexA7.NetPrint: Hdr:CMOS
o.CortexA7.NetPrint: Hdr:ModHand
o.CortexA7.NetPrint: Hdr:Services
o.CortexA7.NetPrint: Hdr:Econet
o.CortexA7.NetPrint: Hdr:LowFSI
o.CortexA7.NetPrint: Hdr:FSNumbers
o.CortexA7.NetPrint: Hdr:HighFSI
o.CortexA7.NetPrint: Hdr:Debug
o.CortexA7.NetPrint: Hdr:NewErrors
o.CortexA7.NetPrint: Hdr:OsBytes
o.CortexA7.NetPrint: Hdr:Tokens
o.CortexA7.NetPrint: Hdr:MsgTrans
o.CortexA7.NetPrint: Hdr:Hourglass
o.CortexA7.NetPrint: Hdr:Territory
o.CortexA7.NetPrint: Hdr:Symbols
o.CortexA7.NetPrint: Hdr:Proc
o.CortexA7.NetPrint: Hdr:HostFS
o.CortexA7.NetPrint: Hdr:ResourceFS
o.CortexA7.NetPrint: VersionASM
o.CortexA7.NetPrint: s.Interface
o.CortexA7.NetPrint: s.Commands
o.CortexA7.NetPrint: s.TokHelpSrc
o.CortexA7.NetPrint: s.FileSystem
