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
# Makefile for ToolAction module
#

COMPONENT     = ToolAction
OBJS          = main toolact
CMHGDEPENDS   = main
ROMCDEFINES   = -DROM
CINCLUDES     = -I${CEXPORTDIR} ${OSINC} ${TBOXINC}
CUSTOMEXP     = custom
LIBS          = ${TBOXINTLIB}
SOURCES_TO_SYMLINK = Documents/def/ToolAction

include CModule

ifeq (,${MAKE_VERSION})

# RISC OS / amu case

DEF_TOOLACTION = Documents.def.ToolAction
PREFIX_HEADER  = .h
PREFIX_LIBRARY = .o
VIA_FILE       = -via ViaFile

clean::
	${RM} h.ToolAction
	${RM} hdr.ToolAction
	${RM} ViaFile
	${XWIPE} DefMod ${WFLAGS}

else

# Posix / gmake case

DEF_TOOLACTION = Documents/ToolAction.def
SUFFIX_LIBRARY = .a
VIA_FILE       = DefMod/*.o

endif

export_hdrs_custom: h.ToolAction hdr.ToolAction
	${MKDIR} ${CEXPORTDIR}${PREFIX_HEADER}
	${MKDIR} ${EXPORTDIR}
	${CP} h.ToolAction   ${CEXPORTDIR}${PREFIX_HEADER}${SEP}ToolAction${SUFFIX_HEADER} ${CPFLAGS}
	${CP} hdr.ToolAction ${EXPORTDIR}${SEP}ToolAction ${CPFLAGS}
	@${ECHO} ${COMPONENT}: header export complete

export_libs_custom: o.ToolAction
	${MKDIR} ${CEXPORTDIR}${PREFIX_LIBRARY}
	${CP} o.ToolAction   ${CEXPORTDIR}${PREFIX_LIBRARY}${SEP}ToolAction${SUFFIX_LIBRARY} ${CPFLAGS}
	@${ECHO} ${COMPONENT}: library export complete

h.ToolAction: ${DEF_TOOLACTION}
	${DEFMOD} -h > h.ToolAction < ${DEF_TOOLACTION}

hdr.ToolAction: ${DEF_TOOLACTION}
	${MKDIR} hdr
	${DEFMOD} -hdr > hdr.ToolAction < ${DEF_TOOLACTION}

o.ToolAction: ${DEF_TOOLACTION}
	${MKDIR} o
	${DEFMOD} -l -o DefMod < ${DEF_TOOLACTION}
	${AR} ${ARFLAGS} o.ToolAction ${VIA_FILE}

# Dynamic dependencies:
o.main:	c.main
o.main:	C:h.swis
o.main:	C:h.kernel
o.main:	OS:h.os
o.main:	OS:oslib.h.types
o.main:	OS:oslib.h.oscore32
o.main:	OS:oslib.h.osf32
o.main:	OS:h.resourcefs
o.main:	OS:oslib.h.fileswitch
o.main:	OS:oslib.h.fileswch32
o.main:	h.ToolActionHdr
o.main:	C:tboxlibint.h.messages
o.main:	C:h.kernel
o.main:	C:tboxlibint.objects.h.toolbox
o.main:	C:tboxlibint.h.objmodule
o.main:	h.toolact
h.ToolActionHdr:	cmhg.ToolActionHdr
h.ToolActionHdr:	VersionNum
h.ToolActionHdr:	C:Global.h.Services
o.toolact:	c.toolact
o.toolact:	C:h.swis
o.toolact:	C:h.kernel
o.toolact:	C:tboxlibint.h.string32
o.toolact:	C:tboxlibint.h.messages
o.toolact:	C:h.kernel
o.toolact:	C:tboxlibint.objects.h.toolbox
o.toolact:	OS:h.macros
o.toolact:	OS:h.os
o.toolact:	OS:oslib.h.types
o.toolact:	OS:oslib.h.oscore32
o.toolact:	OS:oslib.h.osf32
o.toolact:	OS:h.gadget
o.toolact:	OS:oslib.h.toolbox
o.toolact:	OS:oslib.h.wimp
o.toolact:	OS:oslib.h.osspriteop
o.toolact:	OS:oslib.h.font
o.toolact:	OS:oslib.h.wimp32
o.toolact:	OS:oslib.h.messagetrans
o.toolact:	<cexport$dir>.h.ToolAction
o.toolact:	C:tboxlibint.h.debug
o.toolact:	h.toolact
o.toolact:	h.tbem
o.ToolActionHdr:	cmhg.ToolActionHdr
o.ToolActionHdr:	VersionNum
o.ToolActionHdr:	C:Global.h.Services
