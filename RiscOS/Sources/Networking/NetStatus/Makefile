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
# Makefile for NetStatus
#

COMPONENT = NetStatus
ROM_SOURCE = Module.s
CUSTOMRES = No

include AAsmModule

# Dynamic dependencies:
o.CortexA7.NetStatus: s.Module
o.CortexA7.NetStatus: Hdr:ListOpts
o.CortexA7.NetStatus: Hdr:Macros
o.CortexA7.NetStatus: Hdr:System
o.CortexA7.NetStatus: Hdr:SWIs
o.CortexA7.NetStatus: Hdr:CPU.Arch
o.CortexA7.NetStatus: Hdr:Machine.<Machine>
o.CortexA7.NetStatus: Hdr:Machine.Machine
o.CortexA7.NetStatus: Hdr:CPU.Generic26
o.CortexA7.NetStatus: Hdr:CPU.Generic32
o.CortexA7.NetStatus: Hdr:IO.GenericIO
o.CortexA7.NetStatus: Hdr:RISCOS
o.CortexA7.NetStatus: Hdr:ModHand
o.CortexA7.NetStatus: Hdr:Econet
o.CortexA7.NetStatus: Hdr:Hourglass
o.CortexA7.NetStatus: Hdr:Services
o.CortexA7.NetStatus: Hdr:Debug
o.CortexA7.NetStatus: Hdr:OsBytes
o.CortexA7.NetStatus: Hdr:CMOS
o.CortexA7.NetStatus: Hdr:Symbols
o.CortexA7.NetStatus: VersionASM
