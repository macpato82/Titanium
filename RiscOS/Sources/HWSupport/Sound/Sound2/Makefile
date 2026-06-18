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
# Makefile for Sound Event Scheduler (Sound2)

# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 07-Mar-01  SNB          Recreated
#

COMPONENT = SoundScheduler
TARGET    = Sound2
HELPSRC   = HelpSrc
TOKHELPSRC= ${TOKENSOURCE}
RESFSDIR  = ${RESDIR}.SoundSched

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Sound2: s.Sound2
o.CortexA7.Sound2: Hdr:ListOpts
o.CortexA7.Sound2: Hdr:Macros
o.CortexA7.Sound2: Hdr:System
o.CortexA7.Sound2: Hdr:SWIs
o.CortexA7.Sound2: Hdr:CPU.Arch
o.CortexA7.Sound2: Hdr:Machine.<Machine>
o.CortexA7.Sound2: Hdr:Machine.Machine
o.CortexA7.Sound2: Hdr:CPU.Generic26
o.CortexA7.Sound2: Hdr:CPU.Generic32
o.CortexA7.Sound2: Hdr:IO.GenericIO
o.CortexA7.Sound2: Hdr:RISCOS
o.CortexA7.Sound2: Hdr:ModHand
o.CortexA7.Sound2: Hdr:Services
o.CortexA7.Sound2: Hdr:FSNumbers
o.CortexA7.Sound2: Hdr:NewErrors
o.CortexA7.Sound2: Hdr:PublicWS
o.CortexA7.Sound2: Hdr:Proc
o.CortexA7.Sound2: Hdr:Tokens
o.CortexA7.Sound2: Hdr:MsgTrans
o.CortexA7.Sound2: Hdr:Sound
o.CortexA7.Sound2: VersionASM
o.CortexA7.Sound2: s.TokHelpSrc
