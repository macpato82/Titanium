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
# Makefile for Obey
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 08-Jun-94  AMcC         Created.
#

COMPONENT   ?= Obey

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Obey: s.Obey
o.CortexA7.Obey: hdr:ListOpts
o.CortexA7.Obey: hdr:Macros
o.CortexA7.Obey: hdr:System
o.CortexA7.Obey: Hdr:SWIs
o.CortexA7.Obey: Hdr:CPU.Arch
o.CortexA7.Obey: Hdr:Machine.<Machine>
o.CortexA7.Obey: Hdr:Machine.Machine
o.CortexA7.Obey: Hdr:CPU.Generic26
o.CortexA7.Obey: Hdr:CPU.Generic32
o.CortexA7.Obey: Hdr:IO.GenericIO
o.CortexA7.Obey: Hdr:RISCOS
o.CortexA7.Obey: hdr:ModHand
o.CortexA7.Obey: hdr:Services
o.CortexA7.Obey: hdr:UpCall
o.CortexA7.Obey: hdr:Proc
o.CortexA7.Obey: hdr:FSNumbers
o.CortexA7.Obey: hdr:HighFSI
o.CortexA7.Obey: hdr:NewErrors
o.CortexA7.Obey: hdr:EnvNumbers
o.CortexA7.Obey: hdr:NdrDebug
o.CortexA7.Obey: hdr:MsgTrans
o.CortexA7.Obey: VersionASM
