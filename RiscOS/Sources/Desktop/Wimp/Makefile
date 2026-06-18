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
# Makefile for Wimp
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name    Description
# ----       ----    -----------
# 25-May-94  AMcC    Created.
# 18-Oct-94  AMcC    Template3D now copied to Resources as 'Templates'
#                    Now correctly copies Tools3D to Resources:...Tools
# 26-Jun-95  JRH     Now copies STB (ie hacked-down) versions of Tools,
#                    Templates and Sprites. Doesn't copy Sprites22
# 23-Oct-98  BJGA    Changed to use objasm, so that we can override the
#                    choice of options file using an argument to amu
# 03-Aug-99  BJGA    No longer produces build errors if some resources are absent
#

#
# Program specific options:
#
COMPONENT = WindowManager
TARGET   ?= Wimp
HEADER1   = ${TARGET}
HEADER2   = WimpSpace
CUSTOMRES = custom

SA_FLAGS  =
ASFLAGS   = -NoWarn -PreDefine "Options SETS \"${OPTIONS}\""

ifeq (${TARGET},ThemeDefs)
CUSTOMSA  = custom
CUSTOMEXP = custom

install_custom:
	${MKDIR} ${INSTDIR}.${USERIF}
	| Give the disc ones in preference if they exist, else minimalist ROM ones
	IfThere LocalRes:${USERIF}.DiscSprites.Sprites   Then ${CP} LocalRes:${USERIF}.DiscSprites.Sprites   ${INSTDIR}.${USERIF}.Sprites   ${CPFLAGS} Else ${CP} LocalRes:${USERIF}.Sprites ${INSTDIR}.${USERIF}.Sprites ${CPFLAGS}
	IfThere LocalRes:${USERIF}.DiscSprites.Sprites11 Then ${CP} LocalRes:${USERIF}.DiscSprites.Sprites11 ${INSTDIR}.${USERIF}.Sprites11 ${CPFLAGS}
	IfThere LocalRes:${USERIF}.DiscSprites.Sprites22 Then ${CP} LocalRes:${USERIF}.DiscSprites.Sprites22 ${INSTDIR}.${USERIF}.Sprites22 ${CPFLAGS}
	IfThere LocalRes:${USERIF}.DiscSprites.Tools     Then ${CP} LocalRes:${USERIF}.DiscSprites.Tools     ${INSTDIR}.${USERIF}.Tools     ${CPFLAGS} Else ${CP} LocalRes:${USERIF}.Tools   ${INSTDIR}.${USERIF}.Tools   ${CPFLAGS}
	IfThere LocalRes:${USERIF}.DiscSprites.CoFlags   Then ${CP} LocalRes:${USERIF}.DiscSprites.CoFlags   ${INSTDIR}.${USERIF}.CoFlags   ${CPFLAGS}
	IfThere LocalRes:${USERIF}.DiscSprites.CoSprite  Then ${CP} LocalRes:${USERIF}.DiscSprites.CoSprite  ${INSTDIR}.${USERIF}.CoSprite  ${CPFLAGS}
	@${ECHO} ${COMPONENT}: disc theme resources installed

export_libs_custom export_hdrs_custom:
	@${ECHO} ${COMPONENT}: nothing to export when target is ${TARGET}
endif

include StdTools
include AAsmModule

# Definitions of rules for top-level phony targets are required until
# AAsmModule is updated. After this point, the definitions in AAsmModule
# will take precedence because they are encountered first: amu will emit a
# warning about the definitions below, but that can safely be ignored.
resources: resources_${CUSTOMRES}
	@${NOP}

resources_custom: resources-wimp-${CMDHELP}
	@echo ${COMPONENT}: resource files copied

resources-wimp_common:
	${MKDIR} ${RESFSDIR}
	IfThere LocalRes:<UserIF>.Messages  Then ${CP} LocalRes:<UserIF>.Messages  ${RESFSDIR}.Messages  ${CPFLAGS} Else IfThere LocalRes:Messages Then ${CP} LocalRes:Messages ${RESFSDIR}.Messages ${CPFLAGS}
	IfThere LocalRes:<UserIF>.Templates Then ${CP} LocalRes:<UserIF>.Templates ${RESFSDIR}.Templates ${CPFLAGS}
	IfThere LocalRes:<UserIF>.Sprites   Then ${CP} LocalRes:<UserIF>.Sprites   ${RESFSDIR}.Sprites   ${CPFLAGS}
	IfThere LocalRes:<UserIF>.Sprites22 Then ${CP} LocalRes:<UserIF>.Sprites22 ${RESFSDIR}.Sprites22 ${CPFLAGS}
	IfThere LocalRes:<UserIF>.TileN     Then ${CP} LocalRes:<UserIF>.TileN     ${RESFSDIR}.TileN     ${CPFLAGS}
	IfThere LocalRes:<UserIF>.TileV     Then ${CP} LocalRes:<UserIF>.TileV     ${RESFSDIR}.TileV     ${CPFLAGS}
	IfThere LocalRes:<UserIF>.Tools     Then ${CP} LocalRes:<UserIF>.Tools     ${RESFSDIR}.Tools     ${CPFLAGS}

resources-wimp-None: resources-wimp_common
	@|

resources-wimp-: resources-wimp_common
	@IfThere LocalRes:CmdHelp Then ${CAT} LocalRes:CmdHelp { >> ${RESFSDIR}.Messages }

BBETYPE = wimp
bbe-wimp: bbe-generic-resources-get-alias
	BBE_Export_File_In_Dir Resources.${LOCALE} Messages
	BBE_Export_File_In_Dir Resources.${LOCALE} CmdHelp
	BBE_Export_Dir Resources.${LOCALE}.${USERIF}
	BBE_Export_File VersionNum

# Dynamic dependencies:
o.CortexA7.Wimp: s.Wimp
o.CortexA7.Wimp: Hdr:ListOpts
o.CortexA7.Wimp: Hdr:Macros
o.CortexA7.Wimp: Hdr:System
o.CortexA7.Wimp: Hdr:SWIs
o.CortexA7.Wimp: Hdr:CPU.Arch
o.CortexA7.Wimp: Hdr:Machine.<Machine>
o.CortexA7.Wimp: Hdr:Machine.Machine
o.CortexA7.Wimp: Hdr:CPU.Generic26
o.CortexA7.Wimp: Hdr:CPU.Generic32
o.CortexA7.Wimp: Hdr:IO.GenericIO
o.CortexA7.Wimp: Hdr:RISCOS
o.CortexA7.Wimp: Hdr:Machine.<Machine>
o.CortexA7.Wimp: Hdr:Machine.Machine
o.CortexA7.Wimp: Hdr:CMOS
o.CortexA7.Wimp: Hdr:PublicWS
o.CortexA7.Wimp: Hdr:ModHand
o.CortexA7.Wimp: Hdr:Proc
o.CortexA7.Wimp: Hdr:EnvNumbers
o.CortexA7.Wimp: Hdr:Services
o.CortexA7.Wimp: Hdr:UpCall
o.CortexA7.Wimp: Hdr:VduExt
o.CortexA7.Wimp: Hdr:FSNumbers
o.CortexA7.Wimp: Hdr:HighFSI
o.CortexA7.Wimp: Hdr:HostFS
o.CortexA7.Wimp: Hdr:NDRDebug
o.CortexA7.Wimp: Hdr:Font
o.CortexA7.Wimp: Hdr:Wimp
o.CortexA7.Wimp: Hdr:Messages
o.CortexA7.Wimp: Hdr:NewErrors
o.CortexA7.Wimp: Hdr:Sprite
o.CortexA7.Wimp: Hdr:Variables
o.CortexA7.Wimp: Hdr:FileTypes
o.CortexA7.Wimp: Hdr:Hourglass
o.CortexA7.Wimp: Hdr:ResourceFS
o.CortexA7.Wimp: Hdr:Portable
o.CortexA7.Wimp: Hdr:MsgTrans
o.CortexA7.Wimp: hdr:ColourTran
o.CortexA7.Wimp: hdr:FPEmulator
o.CortexA7.Wimp: hdr:Territory
o.CortexA7.Wimp: hdr:Switcher
o.CortexA7.Wimp: hdr:PDriver
o.CortexA7.Wimp: hdr:ScrBlank
o.CortexA7.Wimp: hdr:OsBytes
o.CortexA7.Wimp: hdr:OsWords
o.CortexA7.Wimp: hdr:Countries
o.CortexA7.Wimp: hdr:Internatio
o.CortexA7.Wimp: hdr:VFPSupport
o.CortexA7.Wimp: hdr:OSRSI6
o.CortexA7.Wimp: hdr:OSMem
o.CortexA7.Wimp: VersionASM
o.CortexA7.Wimp: hdr.WIMPMacros
o.CortexA7.Wimp: hdr.IconHigh
o.CortexA7.Wimp: Options.s.!Default
o.CortexA7.Wimp: Options.s.Ursula
o.CortexA7.Wimp: Hdr:ImageSize.<ImageSize>
o.CortexA7.Wimp: Options.s.!Common
o.CortexA7.Wimp: Options.s.!Debug
o.CortexA7.Wimp: s.Wimp01
o.CortexA7.Wimp: s.!Palette
o.CortexA7.Wimp: s.Memory
o.CortexA7.Wimp: s.Wimp02
o.CortexA7.Wimp: s.Watchdog
o.CortexA7.Wimp: s.Tiling3D
o.CortexA7.Wimp: s.Wimp03
o.CortexA7.Wimp: s.Wimp04
o.CortexA7.Wimp: s.Wimp05
o.CortexA7.Wimp: s.CnPCaret
o.CortexA7.Wimp: s.Wimp06
o.CortexA7.Wimp: s.Iconbar
o.CortexA7.Wimp: s.Wimp07
o.CortexA7.Wimp: s.ProgErrs
o.CortexA7.Wimp: s.Wimp08
o.CortexA7.Wimp: s.Wimp08s
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Encoding
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Encoding
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Encoding
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Encoding
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.f240x120
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.f240x120
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.f240x120
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.f240x120
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.IntMetrics
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.IntMetrics
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.IntMetrics
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.IntMetrics
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Outlines
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Outlines
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Outlines
o.CortexA7.Wimp: Resources.!WIMPSym.WIMPSymbol.Outlines
o.CortexA7.Wimp: s.Wimp09
o.CortexA7.Wimp: s.Wimp10
o.CortexA7.Wimp: s.NewSWIs
o.CortexA7.Wimp: s.AutoScroll
o.CortexA7.Wimp: s.Clipboard
o.CortexA7.Wimp: s.CBTask
