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
# Makefile for BootNet
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name    Description
# ----       ----    -----------
# 14-May-01  SNB     Recreated.
#

COMPONENT = BootNet

TOKHELPSRC = ${TOKENSOURCE}
HELPSRC    = HelpTexts
ROM_SOURCE = Module.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.BootNet: s.Module
o.CortexA7.BootNet: Hdr:ListOpts
o.CortexA7.BootNet: Hdr:Macros
o.CortexA7.BootNet: Hdr:System
o.CortexA7.BootNet: Hdr:SWIs
o.CortexA7.BootNet: Hdr:CPU.Arch
o.CortexA7.BootNet: Hdr:Machine.<Machine>
o.CortexA7.BootNet: Hdr:Machine.Machine
o.CortexA7.BootNet: Hdr:CPU.Generic26
o.CortexA7.BootNet: Hdr:CPU.Generic32
o.CortexA7.BootNet: Hdr:IO.GenericIO
o.CortexA7.BootNet: Hdr:RISCOS
o.CortexA7.BootNet: Hdr:CMOS
o.CortexA7.BootNet: Hdr:ModHand
o.CortexA7.BootNet: Hdr:Debug
o.CortexA7.BootNet: Hdr:Tokens
o.CortexA7.BootNet: Hdr:FSNumbers
o.CortexA7.BootNet: Hdr:NewErrors
o.CortexA7.BootNet: Hdr:MsgTrans
o.CortexA7.BootNet: VersionASM
o.CortexA7.BootNet: s.Commands
o.CortexA7.BootNet: s.TokHelpSrc
