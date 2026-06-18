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
# Makefile for Serial
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 07-Mar-01  SNB          Recreated
#

COMPONENT  = DualSerial
TARGET    ?= DualSerial
ROM_SOURCE = init.s
RAM_SOURCE = init.s
CHEADER1   = serial
EXPORTS    = ${C_EXP_HDR}.${CHEADER1}

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.DualSerial: s.init
o.CortexA7.DualSerial: Hdr:ListOpts
o.CortexA7.DualSerial: Hdr:Macros
o.CortexA7.DualSerial: Hdr:System
o.CortexA7.DualSerial: Hdr:SWIs
o.CortexA7.DualSerial: Hdr:CPU.Arch
o.CortexA7.DualSerial: Hdr:Machine.<Machine>
o.CortexA7.DualSerial: Hdr:Machine.Machine
o.CortexA7.DualSerial: Hdr:CPU.Generic26
o.CortexA7.DualSerial: Hdr:CPU.Generic32
o.CortexA7.DualSerial: Hdr:IO.GenericIO
o.CortexA7.DualSerial: Hdr:RISCOS
o.CortexA7.DualSerial: Hdr:ModHand
o.CortexA7.DualSerial: Hdr:Machine.<Machine>
o.CortexA7.DualSerial: Hdr:Machine.Machine
o.CortexA7.DualSerial: Hdr:FSNumbers
o.CortexA7.DualSerial: Hdr:HighFSI
o.CortexA7.DualSerial: Hdr:NewErrors
o.CortexA7.DualSerial: Hdr:DevNos
o.CortexA7.DualSerial: Hdr:Services
o.CortexA7.DualSerial: Hdr:Symbols
o.CortexA7.DualSerial: Hdr:UpCall
o.CortexA7.DualSerial: Hdr:NdrDebug
o.CortexA7.DualSerial: Hdr:DDVMacros
o.CortexA7.DualSerial: Hdr:CMOS
o.CortexA7.DualSerial: Hdr:DeviceFS
o.CortexA7.DualSerial: Hdr:Serial
o.CortexA7.DualSerial: Hdr:RS423
o.CortexA7.DualSerial: Hdr:Buffer
o.CortexA7.DualSerial: Hdr:IO.IOMD
o.CortexA7.DualSerial: Hdr:IO.IOEB
o.CortexA7.DualSerial: Hdr:IO.IOC
o.CortexA7.DualSerial: Hdr:MsgTrans
o.CortexA7.DualSerial: Hdr:Proc
o.CortexA7.DualSerial: Hdr:ResourceFS
o.CortexA7.DualSerial: Hdr:Portable
o.CortexA7.DualSerial: Hdr:HALEntries
o.CortexA7.DualSerial: Hdr:HostFS
o.CortexA7.DualSerial: Hdr:OsBytes
o.CortexA7.DualSerial: VersionASM
o.CortexA7.DualSerial: s.macros
o.CortexA7.DualSerial: s.errors
o.CortexA7.DualSerial: s.main
o.CortexA7.DualSerial: s.common
o.CortexA7.DualSerial: s.serialhal
o.CortexA7.DualSerial: s.ioctl
