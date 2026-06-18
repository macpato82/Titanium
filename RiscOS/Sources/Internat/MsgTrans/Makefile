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
# Makefile for MsgTrans
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
#

COMPONENT = MessageTrans
TARGET    = MsgTrans
HEADER1   = MsgTrans
HEADER2   = MsgMenus

ASDFLAGS  =\
 -PD "AltTitleAndSWI SETL {TRUE}" \
 -PD "standalone SETL {TRUE}" \
 -PD "MergedMsgs SETS \"${MERGEDMSGS}\""

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.MsgTrans: s.MsgTrans
o.CortexA7.MsgTrans: Hdr:ListOpts
o.CortexA7.MsgTrans: Hdr:Macros
o.CortexA7.MsgTrans: Hdr:Symbols
o.CortexA7.MsgTrans: Hdr:System
o.CortexA7.MsgTrans: Hdr:SWIs
o.CortexA7.MsgTrans: Hdr:CPU.Arch
o.CortexA7.MsgTrans: Hdr:Machine.<Machine>
o.CortexA7.MsgTrans: Hdr:Machine.Machine
o.CortexA7.MsgTrans: Hdr:CPU.Generic26
o.CortexA7.MsgTrans: Hdr:CPU.Generic32
o.CortexA7.MsgTrans: Hdr:IO.GenericIO
o.CortexA7.MsgTrans: Hdr:RISCOS
o.CortexA7.MsgTrans: Hdr:ModHand
o.CortexA7.MsgTrans: Hdr:FSNumbers
o.CortexA7.MsgTrans: Hdr:HighFSI
o.CortexA7.MsgTrans: Hdr:NewErrors
o.CortexA7.MsgTrans: Hdr:WimpSpace
o.CortexA7.MsgTrans: Hdr:Messages
o.CortexA7.MsgTrans: Hdr:Proc
o.CortexA7.MsgTrans: Hdr:Services
o.CortexA7.MsgTrans: Hdr:MsgTrans
o.CortexA7.MsgTrans: Hdr:HostFS
o.CortexA7.MsgTrans: Hdr:NDRDebug
o.CortexA7.MsgTrans: Hdr:PublicWS
o.CortexA7.MsgTrans: Hdr:Squash
o.CortexA7.MsgTrans: Hdr:OSRSI6
o.CortexA7.MsgTrans: VersionASM
