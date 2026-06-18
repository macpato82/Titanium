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
# Makefile for ITable
#

COMPONENT = ITable
HEADER1   = ITable

ROM_LIBS  = ${ASMUTILS}

include StdTools
include ModuleLibs
include AAsmModule

# Dynamic dependencies:
o.CortexA7.ITable: s.ITable
o.CortexA7.ITable: Hdr:ListOpts
o.CortexA7.ITable: Hdr:Macros
o.CortexA7.ITable: Hdr:System
o.CortexA7.ITable: Hdr:SWIs
o.CortexA7.ITable: Hdr:CPU.Arch
o.CortexA7.ITable: Hdr:Machine.<Machine>
o.CortexA7.ITable: Hdr:Machine.Machine
o.CortexA7.ITable: Hdr:CPU.Generic26
o.CortexA7.ITable: Hdr:CPU.Generic32
o.CortexA7.ITable: Hdr:IO.GenericIO
o.CortexA7.ITable: Hdr:RISCOS
o.CortexA7.ITable: Hdr:ModHand
o.CortexA7.ITable: Hdr:Proc
o.CortexA7.ITable: Hdr:Services
o.CortexA7.ITable: Hdr:FSNumbers
o.CortexA7.ITable: Hdr:HighFSI
o.CortexA7.ITable: Hdr:NewErrors
o.CortexA7.ITable: Hdr:Variables
o.CortexA7.ITable: Hdr:VduExt
o.CortexA7.ITable: Hdr:ResourceFS
o.CortexA7.ITable: Hdr:MsgTrans
o.CortexA7.ITable: Hdr:Sprite
o.CortexA7.ITable: Hdr:ColourTran
o.CortexA7.ITable: Hdr:Hourglass
o.CortexA7.ITable: Hdr:NDRDebug
o.CortexA7.ITable: Hdr:PublicWS
o.CortexA7.ITable: Hdr:HostFS
o.CortexA7.ITable: Hdr:PaletteV
o.CortexA7.ITable: hdr.ITable
o.CortexA7.ITable: VersionASM
