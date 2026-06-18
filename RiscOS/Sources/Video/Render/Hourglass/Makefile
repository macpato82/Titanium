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
# Makefile for Hourglass
#

COMPONENT  = Hourglass
HEADER1    = Hourglass
ROM_SOURCE = Module.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Hourglass: s.Module
o.CortexA7.Hourglass: Hdr:ListOpts
o.CortexA7.Hourglass: Hdr:Macros
o.CortexA7.Hourglass: Hdr:System
o.CortexA7.Hourglass: Hdr:SWIs
o.CortexA7.Hourglass: Hdr:CPU.Arch
o.CortexA7.Hourglass: Hdr:Machine.<Machine>
o.CortexA7.Hourglass: Hdr:Machine.Machine
o.CortexA7.Hourglass: Hdr:CPU.Generic26
o.CortexA7.Hourglass: Hdr:CPU.Generic32
o.CortexA7.Hourglass: Hdr:IO.GenericIO
o.CortexA7.Hourglass: Hdr:RISCOS
o.CortexA7.Hourglass: Hdr:ModHand
o.CortexA7.Hourglass: Hdr:Services
o.CortexA7.Hourglass: Hdr:Hourglass
o.CortexA7.Hourglass: Hdr:MsgTrans
o.CortexA7.Hourglass: Hdr:FSNumbers
o.CortexA7.Hourglass: Hdr:OsBytes
o.CortexA7.Hourglass: Hdr:OsWords
o.CortexA7.Hourglass: Hdr:NewErrors
o.CortexA7.Hourglass: Hdr:Proc
o.CortexA7.Hourglass: Hdr:Wimp
o.CortexA7.Hourglass: VersionASM
o.CortexA7.Hourglass: Hdr:NdrDebug
o.CortexA7.Hourglass: Hdr:HostFS
