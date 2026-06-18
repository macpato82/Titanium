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
# Makefile for Filter Manager
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 06-Mar-01  SNB          Recreated
#

COMPONENT = FilterManager
TARGET    = FilterMgr
HEADER1   = Filter

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.FilterMgr: s.FilterMgr
o.CortexA7.FilterMgr: Hdr:ListOpts
o.CortexA7.FilterMgr: Hdr:Macros
o.CortexA7.FilterMgr: Hdr:System
o.CortexA7.FilterMgr: Hdr:SWIs
o.CortexA7.FilterMgr: Hdr:CPU.Arch
o.CortexA7.FilterMgr: Hdr:Machine.<Machine>
o.CortexA7.FilterMgr: Hdr:Machine.Machine
o.CortexA7.FilterMgr: Hdr:CPU.Generic26
o.CortexA7.FilterMgr: Hdr:CPU.Generic32
o.CortexA7.FilterMgr: Hdr:IO.GenericIO
o.CortexA7.FilterMgr: Hdr:RISCOS
o.CortexA7.FilterMgr: Hdr:ModHand
o.CortexA7.FilterMgr: Hdr:Services
o.CortexA7.FilterMgr: Hdr:FSNumbers
o.CortexA7.FilterMgr: Hdr:NewErrors
o.CortexA7.FilterMgr: Hdr:Proc
o.CortexA7.FilterMgr: Hdr:Wimp
o.CortexA7.FilterMgr: Hdr:Messages
o.CortexA7.FilterMgr: Hdr:MsgTrans
o.CortexA7.FilterMgr: Hdr:ResourceFS
o.CortexA7.FilterMgr: Hdr:HostFS
o.CortexA7.FilterMgr: Hdr:NdrDebug
o.CortexA7.FilterMgr: Hdr:Switcher
o.CortexA7.FilterMgr: VersionASM
o.CortexA7.FilterMgr: s.ModHead
o.CortexA7.FilterMgr: s.SWIs
o.CortexA7.FilterMgr: s.MsgTrans
o.CortexA7.FilterMgr: s.PreFilter
o.CortexA7.FilterMgr: s.RectFilter
o.CortexA7.FilterMgr: s.PoRtFilter
o.CortexA7.FilterMgr: s.PoIcFilter
o.CortexA7.FilterMgr: s.CopyFilter
o.CortexA7.FilterMgr: s.PostFilter
o.CortexA7.FilterMgr: s.Tail
