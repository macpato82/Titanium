# Copyright 2010 Castle Technology Ltd
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
# Makefile for Sound DMA Handler (Sound0)
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 07-Mar-01  SNB          Recreated
#

COMPONENT = SoundDMA
TARGET    = Sound0
HEADER1   = Sound
HEADER2   = AudioDevice
ASMCHEADER1 = Sound
EXPORTS   = ${C_EXP_HDR}.${ASMCHEADER1}
HELPSRC   = HelpSrc
TOKHELPSRC= ${TOKENSOURCE}
RESFSDIR  = ${RESDIR}.${COMPONENT}

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Sound0: s.Sound0
o.CortexA7.Sound0: Hdr:ListOpts
o.CortexA7.Sound0: Hdr:Macros
o.CortexA7.Sound0: Hdr:System
o.CortexA7.Sound0: Hdr:SWIs
o.CortexA7.Sound0: Hdr:CPU.Arch
o.CortexA7.Sound0: Hdr:Machine.<Machine>
o.CortexA7.Sound0: Hdr:Machine.Machine
o.CortexA7.Sound0: Hdr:CPU.Generic26
o.CortexA7.Sound0: Hdr:CPU.Generic32
o.CortexA7.Sound0: Hdr:IO.GenericIO
o.CortexA7.Sound0: Hdr:RISCOS
o.CortexA7.Sound0: Hdr:Machine.<Machine>
o.CortexA7.Sound0: Hdr:Machine.Machine
o.CortexA7.Sound0: Hdr:VIDC.VIDC20
o.CortexA7.Sound0: Hdr:MEMM.VMSAv6
o.CortexA7.Sound0: Hdr:IO.IOMD
o.CortexA7.Sound0: Hdr:CMOS
o.CortexA7.Sound0: Hdr:ModHand
o.CortexA7.Sound0: Hdr:Services
o.CortexA7.Sound0: Hdr:FSNumbers
o.CortexA7.Sound0: Hdr:NewErrors
o.CortexA7.Sound0: Hdr:PublicWS
o.CortexA7.Sound0: Hdr:Tokens
o.CortexA7.Sound0: Hdr:DevNos
o.CortexA7.Sound0: Hdr:Proc
o.CortexA7.Sound0: Hdr:VduExt
o.CortexA7.Sound0: Hdr:MsgTrans
o.CortexA7.Sound0: Hdr:HostFS
o.CortexA7.Sound0: Hdr:DDVMacros
o.CortexA7.Sound0: Hdr:NDRDebug
o.CortexA7.Sound0: Hdr:HALEntries
o.CortexA7.Sound0: Hdr:DMA
o.CortexA7.Sound0: Hdr:CPU.Arch
o.CortexA7.Sound0: Hdr:RTSupport
o.CortexA7.Sound0: Hdr:OsBytes
o.CortexA7.Sound0: Hdr:Sound
o.CortexA7.Sound0: Hdr:Portable
o.CortexA7.Sound0: Hdr:PCI
o.CortexA7.Sound0: Version
o.CortexA7.Sound0: VersionASM
o.CortexA7.Sound0: Hdr:HALDevice
o.CortexA7.Sound0: Hdr:AudioDevice
o.CortexA7.Sound0: hdr:HALDevice
o.CortexA7.Sound0: Hdr:MixerDevice
o.CortexA7.Sound0: hdr:HALDevice
o.CortexA7.Sound0: Hdr:SoundCtrl
o.CortexA7.Sound0: s.TokHelpSrc
o.CortexA7.Sound0: s.Sound0NEON
o.CortexA7.Sound0: Hdr:VFPSupport
o.CortexA7.Sound0: s.SoftMix
o.CortexA7.Sound0: <Hdr$Dir>.Interface.MixerDevice
o.CortexA7.Sound0: hdr:HALDevice
o.CortexA7.Sound0: s.DeviceList
