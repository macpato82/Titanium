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
# Makefile for Serial Mouse
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 09-Mar-01  SNB          Recreated
#

COMPONENT  = SerialMouse
TARGET     = SerMouse
ROM_SOURCE = GetAll.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.SerMouse: s.GetAll
o.CortexA7.SerMouse: Hdr:ListOpts
o.CortexA7.SerMouse: Hdr:Macros
o.CortexA7.SerMouse: Hdr:System
o.CortexA7.SerMouse: Hdr:SWIs
o.CortexA7.SerMouse: Hdr:CPU.Arch
o.CortexA7.SerMouse: Hdr:Machine.<Machine>
o.CortexA7.SerMouse: Hdr:Machine.Machine
o.CortexA7.SerMouse: Hdr:CPU.Generic26
o.CortexA7.SerMouse: Hdr:CPU.Generic32
o.CortexA7.SerMouse: Hdr:IO.GenericIO
o.CortexA7.SerMouse: Hdr:RISCOS
o.CortexA7.SerMouse: Hdr:ModHand
o.CortexA7.SerMouse: Hdr:Services
o.CortexA7.SerMouse: Hdr:MsgTrans
o.CortexA7.SerMouse: Hdr:FSNumbers
o.CortexA7.SerMouse: Hdr:NewErrors
o.CortexA7.SerMouse: Hdr:ResourceFS
o.CortexA7.SerMouse: Hdr:Buffer
o.CortexA7.SerMouse: Hdr:HighFSI
o.CortexA7.SerMouse: Hdr:CMOS
o.CortexA7.SerMouse: Hdr:HostFS
o.CortexA7.SerMouse: Hdr:NdrDebug
o.CortexA7.SerMouse: Hdr:DDVMacros
o.CortexA7.SerMouse: Hdr:Proc
o.CortexA7.SerMouse: Hdr:Pointer
o.CortexA7.SerMouse: Hdr:SerialOp
o.CortexA7.SerMouse: VersionASM
o.CortexA7.SerMouse: s.Front
o.CortexA7.SerMouse: s.Macros
o.CortexA7.SerMouse: s.ModHead
o.CortexA7.SerMouse: s.SerMouse
o.CortexA7.SerMouse: s.Driver
o.CortexA7.SerMouse: s.Tail
