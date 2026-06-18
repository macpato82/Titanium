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
# Makefile for FSLock
#

COMPONENT = FSLock
HEADER1   = FSLock
CUSTOMROM = custom
CUSTOMSA  = custom
SOURCES_TO_SYMLINK = $(wildcard c/*)

include AAsmModule

rom_common: ${ROM_MODULE} scrambler
	${RUN}scrambler ${ROM_MODULE}

rom_custom: rom_common
	@${ECHO} ${COMPONENT}: rom module built & scrambled

install_rom_custom: rom_common
	${CP} ${ROM_MODULE} ${INSTDIR}${SEP}${TARGET} ${CPFLAGS}
	${CP} ${ROM_MODULE}_gpa ${INSTDIR}${SEP}${TARGET}_gpa ${CPFLAGS}
	@${ECHO} ${COMPONENT}: rom module installed

standalone_custom install_custom:
	@${ECHO} ${COMPONENT}: skipped as this component is only in ROM

clean::
	${MAKE} -f scrambler${EXT}mk TARGET=scrambler clean
	${STRIPDEPEND} scrambler${EXT}mk

scrambler: scrambler.c
	${MAKE} -f scrambler${EXT}mk TARGET=scrambler THROWBACK=${THROWBACK}

# Dynamic dependencies:
o.CortexA7.FSLock: s.FSLock
o.CortexA7.FSLock: Hdr:ListOpts
o.CortexA7.FSLock: Hdr:Macros
o.CortexA7.FSLock: Hdr:System
o.CortexA7.FSLock: Hdr:SWIs
o.CortexA7.FSLock: Hdr:CPU.Arch
o.CortexA7.FSLock: Hdr:Machine.<Machine>
o.CortexA7.FSLock: Hdr:Machine.Machine
o.CortexA7.FSLock: Hdr:CPU.Generic26
o.CortexA7.FSLock: Hdr:CPU.Generic32
o.CortexA7.FSLock: Hdr:IO.GenericIO
o.CortexA7.FSLock: Hdr:RISCOS
o.CortexA7.FSLock: Hdr:ModHand
o.CortexA7.FSLock: Hdr:FSNumbers
o.CortexA7.FSLock: Hdr:NewErrors
o.CortexA7.FSLock: Hdr:OsBytes
o.CortexA7.FSLock: Hdr:HighFSI
o.CortexA7.FSLock: Hdr:LowFSI
o.CortexA7.FSLock: Hdr:CMOS
o.CortexA7.FSLock: Hdr:NdrDebug
o.CortexA7.FSLock: Hdr:MsgTrans
o.CortexA7.FSLock: hdr.FSLock
o.CortexA7.FSLock: VersionASM
