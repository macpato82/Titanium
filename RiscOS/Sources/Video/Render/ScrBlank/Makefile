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
# Makefile for Screen Blanker
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 23-Mar-01  SNB          Recreated.
#

COMPONENT  = ScreenBlanker
TARGET     = ScrBlank
RESFSDIR   = ${RESDIR}.ScrBlanker
HEADER1    = ScrBlank

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.ScrBlank: s.ScrBlank
o.CortexA7.ScrBlank: Hdr:ListOpts
o.CortexA7.ScrBlank: Hdr:Macros
o.CortexA7.ScrBlank: Hdr:System
o.CortexA7.ScrBlank: Hdr:SWIs
o.CortexA7.ScrBlank: Hdr:CPU.Arch
o.CortexA7.ScrBlank: Hdr:Machine.<Machine>
o.CortexA7.ScrBlank: Hdr:Machine.Machine
o.CortexA7.ScrBlank: Hdr:CPU.Generic26
o.CortexA7.ScrBlank: Hdr:CPU.Generic32
o.CortexA7.ScrBlank: Hdr:IO.GenericIO
o.CortexA7.ScrBlank: Hdr:RISCOS
o.CortexA7.ScrBlank: Hdr:Machine.<Machine>
o.CortexA7.ScrBlank: Hdr:Machine.Machine
o.CortexA7.ScrBlank: Hdr:IO.IOMD
o.CortexA7.ScrBlank: Hdr:ModHand
o.CortexA7.ScrBlank: Hdr:FSNumbers
o.CortexA7.ScrBlank: Hdr:NewErrors
o.CortexA7.ScrBlank: Hdr:Services
o.CortexA7.ScrBlank: Hdr:CMOS
o.CortexA7.ScrBlank: Hdr:MsgTrans
o.CortexA7.ScrBlank: Hdr:Portable
o.CortexA7.ScrBlank: Hdr:Proc
o.CortexA7.ScrBlank: Hdr:ColourTran
o.CortexA7.ScrBlank: Hdr:ScrBlank
o.CortexA7.ScrBlank: Hdr:PaletteV
o.CortexA7.ScrBlank: Hdr:UpCall
o.CortexA7.ScrBlank: Hdr:Keyboard
o.CortexA7.ScrBlank: Hdr:HostFS
o.CortexA7.ScrBlank: Hdr:Debug
o.CortexA7.ScrBlank: VersionASM
