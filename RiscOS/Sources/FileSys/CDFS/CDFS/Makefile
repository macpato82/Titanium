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
# Makefile for CDFS
#

COMPONENT  = CDFS
HEADER1    = CDFS
ROM_SOURCE = Main.s

include AAsmModule

# Dynamic dependencies:
o.CortexA7.CDFS: s.Main
o.CortexA7.CDFS: Hdr:ListOpts
o.CortexA7.CDFS: Hdr:Macros
o.CortexA7.CDFS: Hdr:System
o.CortexA7.CDFS: Hdr:SWIs
o.CortexA7.CDFS: Hdr:CPU.Arch
o.CortexA7.CDFS: Hdr:Machine.<Machine>
o.CortexA7.CDFS: Hdr:Machine.Machine
o.CortexA7.CDFS: Hdr:CPU.Generic26
o.CortexA7.CDFS: Hdr:CPU.Generic32
o.CortexA7.CDFS: Hdr:IO.GenericIO
o.CortexA7.CDFS: Hdr:RISCOS
o.CortexA7.CDFS: Hdr:MsgTrans
o.CortexA7.CDFS: Hdr:ModHand
o.CortexA7.CDFS: Hdr:Free
o.CortexA7.CDFS: Hdr:FSNumbers
o.CortexA7.CDFS: Hdr:FileTypes
o.CortexA7.CDFS: Hdr:HighFSI
o.CortexA7.CDFS: Hdr:LowFSI
o.CortexA7.CDFS: Hdr:Services
o.CortexA7.CDFS: Hdr:Variables
o.CortexA7.CDFS: Hdr:OsBytes
o.CortexA7.CDFS: Hdr:MimeMap
o.CortexA7.CDFS: Hdr:CDROM
o.CortexA7.CDFS: Hdr:CDErrors
o.CortexA7.CDFS: Hdr:CMOS
o.CortexA7.CDFS: Hdr:HostFS
o.CortexA7.CDFS: Hdr:UpCall
o.CortexA7.CDFS: Hdr:Proc
o.CortexA7.CDFS: Hdr:NdrDebug
o.CortexA7.CDFS: Hdr:ResourceFS
o.CortexA7.CDFS: hdr.Options
o.CortexA7.CDFS: hdr.Hashes
o.CortexA7.CDFS: hdr.MyMacros
o.CortexA7.CDFS: hdr.CDFS
o.CortexA7.CDFS: VersionASM
o.CortexA7.CDFS: s.Args
o.CortexA7.CDFS: s.Strings
o.CortexA7.CDFS: s.Misc
o.CortexA7.CDFS: s.DiscOp
o.CortexA7.CDFS: s.FileMan
o.CortexA7.CDFS: s.Filer
o.CortexA7.CDFS: s.Directory
o.CortexA7.CDFS: s.EntryFile
o.CortexA7.CDFS: s.Open
o.CortexA7.CDFS: s.SWI
o.CortexA7.CDFS: s.Error
o.CortexA7.CDFS: s.Tables
o.CortexA7.CDFS: s.StarHelp
o.CortexA7.CDFS: s.WordTable3
o.CortexA7.CDFS: s.Variables
o.CortexA7.CDFS: s.ByteCopy
o.CortexA7.CDFS: s.Free
