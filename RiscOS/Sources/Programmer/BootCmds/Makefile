# Copyright 1997 Acorn Computers Ltd
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
# Makefile for BootCommands
#

COMPONENT    = BootCmds
CMHGFILE     = header
CINCLUDES    = ${OSINC} ${CONINC}
CDEFINES    += -DTRACE=0
OBJS         = main
LIBS        += ${OSLIB} ${CONLIB}
HDRS         =
RES_AREA     = files_messages
RAMCDEFINES += -DSTANDALONE=1
INSTRES_FILES   = Repeat
INSTRES_DEPENDS = Repeat${SUFFIX_ABSOLUTE}

ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif

include CModule

#
# Static dependencies
#
Repeat${SUFFIX_ABSOLUTE}: repeatcmd.c
	${CC} ${CINCLUDES} -o $@ repeatcmd.c ${CLIB} ${OSLIB}

clean::
	${RM} Repeat${SUFFIX_ABSOLUTE}

# Dynamic dependencies:
o.main:	c.main
o.main:	C:h.kernel
o.main:	C:Global.h.NewErrors
o.main:	OS:h.econet
o.main:	OS:oslib.h.types
o.main:	OS:oslib.h.os
o.main:	OS:oslib.h.oscore32
o.main:	OS:oslib.h.osf32
o.main:	OS:h.macros
o.main:	OS:h.messagetrans
o.main:	OS:h.netfs
o.main:	OS:oslib.h.fileswitch
o.main:	OS:oslib.h.fileswch32
o.main:	OS:h.os
o.main:	OS:h.osargs
o.main:	OS:oslib.h.osargs32
o.main:	OS:h.osbyte
o.main:	OS:h.osfile
o.main:	OS:h.osfscontrol
o.main:	OS:oslib.h.osfsctrl32
o.main:	OS:h.osfind
o.main:	OS:oslib.h.osfind32
o.main:	OS:h.osgbpb
o.main:	OS:oslib.h.osgbpb32
o.main:	OS:h.osmodule
o.main:	OS:h.resourcefs
o.main:	OS:h.wimp
o.main:	OS:oslib.h.osspriteop
o.main:	OS:oslib.h.font
o.main:	OS:oslib.h.wimp32
o.main:	OS:h.territory
o.main:	C:ConfigLib.h.str
o.main:	h.files
o.main:	h.main
o.main:	h.jc_trace
o.header:	cmhg.header
o.header:	VersionNum
