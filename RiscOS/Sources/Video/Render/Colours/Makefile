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
# Makefile for Colour Translation module
#

COMPONENT = ColourTrans
TARGET    = Colours
ROM_SOURCE = Header.s
HEADER1   = ColourTran
INSTRES_FILES = Tables.4greys:Tables   Palettes.4greys:Palettes \
                Tables.8greys:Tables   Palettes.8greys:Palettes \
                Tables.4desktop:Tables Palettes.4desktop:Palettes \
                Tables.8desktop:Tables Palettes.8desktop:Palettes
INSTRES_DEPENDS = maketables
SOURCES_TO_SYMLINK = MkTables/c/maketables

include AAsmModule

clean::
	${XWIPE} Tables ${WFLAGS}
	${XWIPE} Palettes ${WFLAGS}
	${MAKE} -f MkTables${SEP}maketables${EXT}mk clean COMPONENT=maketables TARGET=maketables
	${STRIPDEPEND} MkTables${SEP}maketables${EXT}mk

#
# Static dependencies:
#
maketables: ${DIRS}
	${MAKE} -f MkTables${SEP}maketables${EXT}mk COMPONENT=maketables TARGET=maketables THROWBACK=${THROWBACK}
	${XWIPE} Palettes ${WFLAGS}
	${XWIPE} Tables ${WFLAGS}
	${MKDIR} Palettes
	${MKDIR} Tables
	${RUN}maketables
	${SQUASH} Tables${SEP}4greys${SUFFIX_DATA}
	${SQUASH} Tables${SEP}8greys${SUFFIX_DATA}
	${SQUASH} Tables${SEP}4desktop${SUFFIX_DATA}

# Dynamic dependencies:
o.CortexA7.Colours: s.Header
o.CortexA7.Colours: hdr:ListOpts
o.CortexA7.Colours: hdr:Macros
o.CortexA7.Colours: hdr:System
o.CortexA7.Colours: Hdr:SWIs
o.CortexA7.Colours: Hdr:CPU.Arch
o.CortexA7.Colours: Hdr:Machine.<Machine>
o.CortexA7.Colours: Hdr:Machine.Machine
o.CortexA7.Colours: Hdr:CPU.Generic26
o.CortexA7.Colours: Hdr:CPU.Generic32
o.CortexA7.Colours: Hdr:IO.GenericIO
o.CortexA7.Colours: Hdr:RISCOS
o.CortexA7.Colours: hdr:FSNumbers
o.CortexA7.Colours: hdr:ModHand
o.CortexA7.Colours: hdr:NewErrors
o.CortexA7.Colours: hdr:VduExt
o.CortexA7.Colours: hdr:Services
o.CortexA7.Colours: hdr:Font
o.CortexA7.Colours: hdr:Sprite
o.CortexA7.Colours: hdr:PublicWS
o.CortexA7.Colours: hdr:ExtraLong
o.CortexA7.Colours: hdr:Proc
o.CortexA7.Colours: hdr:MsgTrans
o.CortexA7.Colours: hdr:DDVMacros
o.CortexA7.Colours: hdr:PaletteV
o.CortexA7.Colours: hdr:ColourTran
o.CortexA7.Colours: hdr:Symbols
o.CortexA7.Colours: hdr:HostFS
o.CortexA7.Colours: hdr:Variables
o.CortexA7.Colours: hdr:HighFSI
o.CortexA7.Colours: hdr:FileTypes
o.CortexA7.Colours: hdr:Squash
o.CortexA7.Colours: hdr:NdrDebug
o.CortexA7.Colours: VersionASM
o.CortexA7.Colours: s.Commons
o.CortexA7.Colours: s.MainSWIs
o.CortexA7.Colours: s.Cache
o.CortexA7.Colours: s.FontColour
o.CortexA7.Colours: s.Dither
o.CortexA7.Colours: s.NewModels
o.CortexA7.Colours: s.Palettes
o.CortexA7.Colours: s.MsgCode
o.CortexA7.Colours: s.FileCal
o.CortexA7.Colours: s.Calibrate
o.CortexA7.Colours: s.DevicePal
o.CortexA7.Colours: s.DevicePal2
o.CortexA7.Colours: s.Enhanced
o.CortexA7.Colours: s.Tables32K
o.CortexA7.Colours: s.TablesAlgo
o.CortexA7.Colours: s.TablesAlgo
o.CortexA7.Colours: s.TablesAlgo
o.CortexA7.Colours: s.TablesAlgo
o.CortexA7.Colours: s.TablesAlgo
o.CortexA7.Colours: s.TablesAlgo
