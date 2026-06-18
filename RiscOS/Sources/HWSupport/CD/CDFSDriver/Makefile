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
# Makefile for CDFS Driver

COMPONENT  = CDFSDriver
HEADER1    = CDROM
HEADER2    = CDErrors
ASMCHEADER1 = CDErrors
EXPORTS    = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER}
RESFSDIR   = ${RESDIR}${SEP}CDFSDriver${SEP}${TARGET}
ROM_SOURCE = Main.s

include AAsmModule

# Dynamic dependencies:
o.CortexA7.CDFSDriver: s.Main
o.CortexA7.CDFSDriver: Hdr:ListOpts
o.CortexA7.CDFSDriver: Hdr:Macros
o.CortexA7.CDFSDriver: Hdr:System
o.CortexA7.CDFSDriver: Hdr:SWIs
o.CortexA7.CDFSDriver: Hdr:CPU.Arch
o.CortexA7.CDFSDriver: Hdr:Machine.<Machine>
o.CortexA7.CDFSDriver: Hdr:Machine.Machine
o.CortexA7.CDFSDriver: Hdr:CPU.Generic26
o.CortexA7.CDFSDriver: Hdr:CPU.Generic32
o.CortexA7.CDFSDriver: Hdr:IO.GenericIO
o.CortexA7.CDFSDriver: Hdr:RISCOS
o.CortexA7.CDFSDriver: Hdr:CMOS
o.CortexA7.CDFSDriver: Hdr:Services
o.CortexA7.CDFSDriver: Hdr:OsBytes
o.CortexA7.CDFSDriver: Hdr:ModHand
o.CortexA7.CDFSDriver: Hdr:SCSI
o.CortexA7.CDFSDriver: Hdr:SCSIErr
o.CortexA7.CDFSDriver: Hdr:CDROM
o.CortexA7.CDFSDriver: Hdr:MsgTrans
o.CortexA7.CDFSDriver: Hdr:ResourceFS
o.CortexA7.CDFSDriver: Hdr:HostFS
o.CortexA7.CDFSDriver: hdr.hashes
o.CortexA7.CDFSDriver: hdr.CDMacros
o.CortexA7.CDFSDriver: VersionASM
o.CortexA7.CDFSDriver: s.Strings
o.CortexA7.CDFSDriver: s.Tables
o.CortexA7.CDFSDriver: s.Module
o.CortexA7.CDFSDriver: s.Register
o.CortexA7.CDFSDriver: s.Unregister
o.CortexA7.CDFSDriver: s.Identify
o.CortexA7.CDFSDriver: s.CD_Routs
o.CortexA7.CDFSDriver: s.OnError
o.CortexA7.CDFSDriver: s.ExtraBits
o.CortexA7.CDFSDriver: s.ByteCopy
o.CortexA7.CDFSDriver: s.variables
