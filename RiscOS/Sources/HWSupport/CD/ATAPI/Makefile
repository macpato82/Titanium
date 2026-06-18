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
# Makefile for the ATAPI Driver module
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name   Description
# ----       ----   -----------
# 07-Dec-94  AMcC   Created.
# 03-Jan-95  AMcC   Now exports hdr.ATAPI
# 06-Nov-02  BJGA   Now uses shared makefiles
#

COMPONENT  = ATAPI
HEADER1    = ATAPI
RESFSDIR   = ${RESDIR}.CDFSDriver.${TARGET}
ROM_SOURCE = Main.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.ATAPI: s.Main
o.CortexA7.ATAPI: hdr:ListOpts
o.CortexA7.ATAPI: hdr:Macros
o.CortexA7.ATAPI: hdr:System
o.CortexA7.ATAPI: Hdr:SWIs
o.CortexA7.ATAPI: Hdr:CPU.Arch
o.CortexA7.ATAPI: Hdr:Machine.<Machine>
o.CortexA7.ATAPI: Hdr:Machine.Machine
o.CortexA7.ATAPI: Hdr:CPU.Generic26
o.CortexA7.ATAPI: Hdr:CPU.Generic32
o.CortexA7.ATAPI: Hdr:IO.GenericIO
o.CortexA7.ATAPI: Hdr:RISCOS
o.CortexA7.ATAPI: hdr:ADFS
o.CortexA7.ATAPI: hdr:FSNumbers
o.CortexA7.ATAPI: hdr:NewErrors
o.CortexA7.ATAPI: hdr:ATA
o.CortexA7.ATAPI: hdr:MsgTrans
o.CortexA7.ATAPI: hdr:ModHand
o.CortexA7.ATAPI: hdr:OsBytes
o.CortexA7.ATAPI: hdr:CMOS
o.CortexA7.ATAPI: hdr:HostFS
o.CortexA7.ATAPI: VersionASM
o.CortexA7.ATAPI: hdr.Hashes
o.CortexA7.ATAPI: hdr.IDEdefs
o.CortexA7.ATAPI: hdr.MyMacros
o.CortexA7.ATAPI: hdr.ATAPI
o.CortexA7.ATAPI: hdr:Debug
o.CortexA7.ATAPI: s.DriverCode
o.CortexA7.ATAPI: s.ATAPIStuff
o.CortexA7.ATAPI: s.Extras
o.CortexA7.ATAPI: s.OnError
o.CortexA7.ATAPI: s.Module
o.CortexA7.ATAPI: s.Variables
o.CortexA7.ATAPI: s.Strings
