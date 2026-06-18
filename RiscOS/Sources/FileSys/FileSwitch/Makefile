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
# Makefile for FileSwitch
#
# *************************************
# ***     C h a n g e   L i s t     ***
# *************************************
# Date         Name         Description
# ----         ----         -----------
# 11-Apr-2001  DSC          Created.
#

COMPONENT = FileSwitch

HEADER1     = LowFSI
HEADER2     = HighFSI
# C headers to generate from the assembler sources
ASMCHEADER1 = LowFSI
ASMCHEADER2 = HighFSI
EXPORTS     = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER} ${C_EXP_HDR}${SEP}${ASMCHEADER2}${SUFFIX_HEADER}
ASFLAGS    += -PD "ImageSize SETS \"${IMAGESIZE}\""

TOKHELPSRC  = ${TOKENSOURCE}
HELPSRC     = HelpSrc
SOURCES_TO_SYMLINK = HelpSrc

include AAsmModule

# Dynamic dependencies:
o.CortexA7.FileSwitch: s.FileSwitch
o.CortexA7.FileSwitch: s.FileSwHdr
o.CortexA7.FileSwitch: Hdr:ListOpts
o.CortexA7.FileSwitch: Hdr:Macros
o.CortexA7.FileSwitch: Hdr:System
o.CortexA7.FileSwitch: Hdr:SWIs
o.CortexA7.FileSwitch: Hdr:CPU.Arch
o.CortexA7.FileSwitch: Hdr:Machine.<Machine>
o.CortexA7.FileSwitch: Hdr:Machine.Machine
o.CortexA7.FileSwitch: Hdr:CPU.Generic26
o.CortexA7.FileSwitch: Hdr:CPU.Generic32
o.CortexA7.FileSwitch: Hdr:IO.GenericIO
o.CortexA7.FileSwitch: Hdr:RISCOS
o.CortexA7.FileSwitch: Hdr:Machine.<Machine>
o.CortexA7.FileSwitch: Hdr:Machine.Machine
o.CortexA7.FileSwitch: Hdr:UserIF.<UserIF>
o.CortexA7.FileSwitch: Hdr:UserIF.UserIF
o.CortexA7.FileSwitch: Hdr:ImageSize.<ImageSize>
o.CortexA7.FileSwitch: Hdr:CMOS
o.CortexA7.FileSwitch: Hdr:ModHand
o.CortexA7.FileSwitch: Hdr:Services
o.CortexA7.FileSwitch: Hdr:FSNumbers
o.CortexA7.FileSwitch: Hdr:HighFSI
o.CortexA7.FileSwitch: Hdr:NewErrors
o.CortexA7.FileSwitch: Hdr:Heap
o.CortexA7.FileSwitch: Hdr:Variables
o.CortexA7.FileSwitch: Hdr:EnvNumbers
o.CortexA7.FileSwitch: Hdr:Proc
o.CortexA7.FileSwitch: Hdr:PublicWS
o.CortexA7.FileSwitch: Hdr:Tokens
o.CortexA7.FileSwitch: Hdr:FileTypes
o.CortexA7.FileSwitch: Hdr:VduExt
o.CortexA7.FileSwitch: Hdr:UpCall
o.CortexA7.FileSwitch: Hdr:LowFSI
o.CortexA7.FileSwitch: Hdr:Wimp
o.CortexA7.FileSwitch: Hdr:MsgTrans
o.CortexA7.FileSwitch: Hdr:Territory
o.CortexA7.FileSwitch: Hdr:OSRSI6
o.CortexA7.FileSwitch: VersionASM
o.CortexA7.FileSwitch: s.DebugOpts
o.CortexA7.FileSwitch: s.FileSwBody
o.CortexA7.FileSwitch: HelpSrc
o.CortexA7.FileSwitch: s.FSCommands
o.CortexA7.FileSwitch: s.FSErrors
o.CortexA7.FileSwitch: s.FSCommon
o.CortexA7.FileSwitch: s.MsgsStuff
o.CortexA7.FileSwitch: s.SysVars
o.CortexA7.FileSwitch: s.Canonical
o.CortexA7.FileSwitch: s.Ensure
o.CortexA7.FileSwitch: s.FileTypes
o.CortexA7.FileSwitch: s.DirStore
o.CortexA7.FileSwitch: s.FSPath
o.CortexA7.FileSwitch: s.TopPath
o.CortexA7.FileSwitch: s.FSUtils
o.CortexA7.FileSwitch: s.FSUtils2
o.CortexA7.FileSwitch: s.FSUtils3
o.CortexA7.FileSwitch: s.FSControl
o.CortexA7.FileSwitch: s.CtrlUtils
o.CortexA7.FileSwitch: s.FSCtrl2
o.CortexA7.FileSwitch: s.StreamBits
o.CortexA7.FileSwitch: s.OSFile
o.CortexA7.FileSwitch: s.OSFind
o.CortexA7.FileSwitch: s.OSBGetBPut
o.CortexA7.FileSwitch: s.OSGBPB
o.CortexA7.FileSwitch: s.OSArgs
o.CortexA7.FileSwitch: s.LowLevel
o.CortexA7.FileSwitch: s.FSShared
