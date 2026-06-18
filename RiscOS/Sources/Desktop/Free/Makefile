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
# Makefile for FreeSpace
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 14-Mar-01  SNB          Recreated.
#

COMPONENT     = Free
HEADER1       = Free
ASMCHEADER1   = Free
INSTRES_FILES = Templates
EXPORTS       = ${C_EXP_HDR}.Free

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Free: s.Free
o.CortexA7.Free: Hdr:ListOpts
o.CortexA7.Free: Hdr:Macros
o.CortexA7.Free: Hdr:System
o.CortexA7.Free: Hdr:SWIs
o.CortexA7.Free: Hdr:CPU.Arch
o.CortexA7.Free: Hdr:Machine.<Machine>
o.CortexA7.Free: Hdr:Machine.Machine
o.CortexA7.Free: Hdr:CPU.Generic26
o.CortexA7.Free: Hdr:CPU.Generic32
o.CortexA7.Free: Hdr:IO.GenericIO
o.CortexA7.Free: Hdr:RISCOS
o.CortexA7.Free: Hdr:ModHand
o.CortexA7.Free: Hdr:Services
o.CortexA7.Free: Hdr:FSNumbers
o.CortexA7.Free: Hdr:HighFSI
o.CortexA7.Free: Hdr:NewErrors
o.CortexA7.Free: Hdr:Variables
o.CortexA7.Free: Hdr:Proc
o.CortexA7.Free: Hdr:Wimp
o.CortexA7.Free: Hdr:WimpSpace
o.CortexA7.Free: Hdr:Messages
o.CortexA7.Free: Hdr:CMOS
o.CortexA7.Free: Hdr:MsgTrans
o.CortexA7.Free: Hdr:ResourceFS
o.CortexA7.Free: Hdr:ADFS
o.CortexA7.Free: Hdr:RamFS
o.CortexA7.Free: Hdr:SCSIFS
o.CortexA7.Free: Hdr:Econet
o.CortexA7.Free: Hdr:PCCardFS
o.CortexA7.Free: Hdr:UpCall
o.CortexA7.Free: Hdr:HostFS
o.CortexA7.Free: Hdr:NdrDebug
o.CortexA7.Free: Hdr:ExtraLong
o.CortexA7.Free: Hdr:Free
o.CortexA7.Free: VersionASM
o.CortexA7.Free: s.ModHead
o.CortexA7.Free: s.StartLoop
o.CortexA7.Free: s.Messages
o.CortexA7.Free: s.ADFS
o.CortexA7.Free: s.RAMFS
o.CortexA7.Free: s.SCSI
o.CortexA7.Free: s.NETFS
o.CortexA7.Free: s.NFS
o.CortexA7.Free: s.PCCardFS
o.CortexA7.Free: s.SWIs
o.CortexA7.Free: s.Tail
