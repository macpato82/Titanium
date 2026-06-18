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
# Makefile for Sound Channel Handler (Sound1)
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 07-Mar-01  SNB          Recreated
#

COMPONENT = SoundChannels
TARGET    = Sound1
HELPSRC   = HelpSrc
TOKHELPSRC= ${TOKENSOURCE}
RESFSDIR  = ${RESDIR}${SEP}SoundChann

include AAsmModule

# Dynamic dependencies:
o.CortexA7.Sound1: s.Sound1
o.CortexA7.Sound1: Hdr:ListOpts
o.CortexA7.Sound1: Hdr:Macros
o.CortexA7.Sound1: Hdr:System
o.CortexA7.Sound1: Hdr:SWIs
o.CortexA7.Sound1: Hdr:CPU.Arch
o.CortexA7.Sound1: Hdr:Machine.<Machine>
o.CortexA7.Sound1: Hdr:Machine.Machine
o.CortexA7.Sound1: Hdr:CPU.Generic26
o.CortexA7.Sound1: Hdr:CPU.Generic32
o.CortexA7.Sound1: Hdr:IO.GenericIO
o.CortexA7.Sound1: Hdr:RISCOS
o.CortexA7.Sound1: Hdr:ModHand
o.CortexA7.Sound1: Hdr:Services
o.CortexA7.Sound1: Hdr:FSNumbers
o.CortexA7.Sound1: Hdr:NewErrors
o.CortexA7.Sound1: Hdr:PublicWS
o.CortexA7.Sound1: Hdr:Proc
o.CortexA7.Sound1: Hdr:CMOS
o.CortexA7.Sound1: Hdr:Tokens
o.CortexA7.Sound1: Hdr:MsgTrans
o.CortexA7.Sound1: Hdr:Debug
o.CortexA7.Sound1: Hdr:OSRSI6
o.CortexA7.Sound1: Hdr:OsBytes
o.CortexA7.Sound1: Hdr:Sound
o.CortexA7.Sound1: VersionASM
o.CortexA7.Sound1: s.TokHelpSrc
