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
# Makefile for DrawFile

COMPONENT   = DrawFile
HDRS        =
OBJS        = bbox callback declare main render riscos textarea trfm verify
DBG_OBJS    = ${OBJS} hostfs jc_trace
ifeq ("${CMDHELP}","None")
CMHGFILE    = header310
else
CMHGFILE    = header
endif
LIBS        = ${OSLIB} ${ASMUTILS}
CINCLUDES   = ${OSINC} ${RINC}
CFLAGS     += ${C_NOWARN_NON_ANSI_INCLUDES}
CDFLAGS     = -DTRACE=1
CDEFINES    = -DDRAWFILE
RAMCDEFINES = -DSTANDALONE
RES_AREA    = files_messages
RESFSDIR    = ${RESDIR}.${COMPONENT}

include CModule

# Dynamic dependencies:
o.bbox:	c.bbox
o.bbox:	OS:h.drawfile
o.bbox:	OS:oslib.h.types
o.bbox:	OS:oslib.h.os
o.bbox:	OS:oslib.h.oscore32
o.bbox:	OS:oslib.h.osf32
o.bbox:	OS:oslib.h.osspriteop
o.bbox:	OS:oslib.h.draw
o.bbox:	OS:oslib.h.font
o.bbox:	OS:oslib.h.wimp
o.bbox:	OS:oslib.h.wimp32
o.bbox:	OS:oslib.h.jpeg
o.bbox:	OS:h.os
o.bbox:	h.jc_trace
o.bbox:	h.trfm
o.bbox:	h.bbox
o.bbox:	h.main
o.bbox:	C:h.kernel
o.bbox:	OS:h.messagetrans
o.bbox:	h.callback
o.bbox:	h.verify
o.callback:	c.callback
o.callback:	OS:h.types
o.callback:	h.callback
o.callback:	OS:h.os
o.callback:	OS:oslib.h.oscore32
o.callback:	OS:oslib.h.osf32
o.callback:	RISCOSLIB:h.trace
o.callback:	h.m
o.callback:	h.realloc
o.callback:	RISCOSLIB:h.trace
o.callback:	h.riscos
o.callback:	OS:h.territory
o.callback:	h.jc_trace
o.declare:	c.declare
o.declare:	OS:h.drawfile
o.declare:	OS:oslib.h.types
o.declare:	OS:oslib.h.os
o.declare:	OS:oslib.h.oscore32
o.declare:	OS:oslib.h.osf32
o.declare:	OS:oslib.h.osspriteop
o.declare:	OS:oslib.h.draw
o.declare:	OS:oslib.h.font
o.declare:	OS:oslib.h.wimp
o.declare:	OS:oslib.h.wimp32
o.declare:	OS:oslib.h.jpeg
o.declare:	OS:h.os
o.declare:	OS:h.pdriver
o.declare:	OS:oslib.h.messagetrans
o.declare:	OS:oslib.h.pdriver32
o.declare:	h.riscos
o.declare:	OS:h.territory
o.declare:	h.jc_trace
o.declare:	h.trfm
o.declare:	h.declare
o.declare:	h.callback
o.declare:	h.main
o.declare:	C:h.kernel
o.declare:	h.textarea
o.declare:	h.verify
o.main:	c.main
o.main:	C:h.kernel
o.main:	OS:h.messagetrans
o.main:	OS:oslib.h.types
o.main:	OS:oslib.h.os
o.main:	OS:oslib.h.oscore32
o.main:	OS:oslib.h.osf32
o.main:	OS:h.macros
o.main:	OS:h.os
o.main:	OS:h.osfile
o.main:	OS:oslib.h.fileswitch
o.main:	OS:oslib.h.fileswch32
o.main:	OS:h.osmodule
o.main:	OS:h.resourcefs
o.main:	h.m
o.main:	h.realloc
o.main:	RISCOSLIB:h.trace
o.main:	h.riscos
o.main:	OS:h.territory
o.main:	h.jc_trace
o.main:	h.bbox
o.main:	OS:h.drawfile
o.main:	OS:oslib.h.osspriteop
o.main:	OS:oslib.h.draw
o.main:	OS:oslib.h.font
o.main:	OS:oslib.h.wimp
o.main:	OS:oslib.h.wimp32
o.main:	OS:oslib.h.jpeg
o.main:	h.declare
o.main:	h.callback
o.main:	h.main
o.main:	C:h.kernel
o.main:	h.files
o.main:	h.render
o.main:	h.verify
o.render:	c.render
o.render:	OS:h.colourtrans
o.render:	OS:oslib.h.types
o.render:	OS:oslib.h.os
o.render:	OS:oslib.h.oscore32
o.render:	OS:oslib.h.osf32
o.render:	OS:oslib.h.osspriteop
o.render:	OS:oslib.h.font
o.render:	OS:oslib.h.coltrans32
o.render:	OS:h.draw
o.render:	OS:h.jpeg
o.render:	OS:h.macros
o.render:	OS:h.os
o.render:	h.callback
o.render:	RISCOSLIB:h.trace
o.render:	h.muldiv
o.render:	h.riscos
o.render:	OS:h.territory
o.render:	h.jc_trace
o.render:	h.trfm
o.render:	OS:h.drawfile
o.render:	OS:oslib.h.wimp
o.render:	OS:oslib.h.wimp32
o.render:	h.main
o.render:	C:h.kernel
o.render:	OS:h.messagetrans
o.render:	h.render
o.render:	h.textarea
o.render:	h.verify
o.riscos:	c.riscos
o.riscos:	OS:h.messagetrans
o.riscos:	OS:oslib.h.types
o.riscos:	OS:oslib.h.os
o.riscos:	OS:oslib.h.oscore32
o.riscos:	OS:oslib.h.osf32
o.riscos:	OS:h.macros
o.riscos:	OS:h.os
o.riscos:	OS:h.territory
o.riscos:	OS:h.wimp
o.riscos:	OS:oslib.h.osspriteop
o.riscos:	OS:oslib.h.font
o.riscos:	OS:oslib.h.wimp32
o.riscos:	h.m
o.riscos:	h.realloc
o.riscos:	RISCOSLIB:h.trace
o.riscos:	h.riscos
o.riscos:	h.jc_trace
o.textarea:	c.textarea
o.textarea:	OS:h.colourtrans
o.textarea:	OS:oslib.h.types
o.textarea:	OS:oslib.h.os
o.textarea:	OS:oslib.h.oscore32
o.textarea:	OS:oslib.h.osf32
o.textarea:	OS:oslib.h.osspriteop
o.textarea:	OS:oslib.h.font
o.textarea:	OS:oslib.h.coltrans32
o.textarea:	OS:h.draw
o.textarea:	OS:h.macros
o.textarea:	OS:h.os
o.textarea:	OS:h.pdriver
o.textarea:	OS:oslib.h.wimp
o.textarea:	OS:oslib.h.wimp32
o.textarea:	OS:oslib.h.messagetrans
o.textarea:	OS:oslib.h.jpeg
o.textarea:	OS:oslib.h.pdriver32
o.textarea:	h.callback
o.textarea:	RISCOSLIB:h.trace
o.textarea:	h.riscos
o.textarea:	OS:h.territory
o.textarea:	h.jc_trace
o.textarea:	h.trfm
o.textarea:	OS:h.drawfile
o.textarea:	h.main
o.textarea:	C:h.kernel
o.textarea:	h.render
o.textarea:	h.textarea
o.textarea:	h.verify
o.trfm:	c.trfm
o.trfm:	OS:h.macros
o.trfm:	OS:h.os
o.trfm:	OS:oslib.h.types
o.trfm:	OS:oslib.h.oscore32
o.trfm:	OS:oslib.h.osf32
o.trfm:	h.muldiv
o.trfm:	h.jc_trace
o.trfm:	h.trfm
o.verify:	c.verify
o.verify:	OS:h.macros
o.verify:	OS:h.os
o.verify:	OS:oslib.h.types
o.verify:	OS:oslib.h.oscore32
o.verify:	OS:oslib.h.osf32
o.verify:	h.riscos
o.verify:	OS:h.territory
o.verify:	h.jc_trace
o.verify:	OS:h.drawfile
o.verify:	OS:oslib.h.osspriteop
o.verify:	OS:oslib.h.draw
o.verify:	OS:oslib.h.font
o.verify:	OS:oslib.h.wimp
o.verify:	OS:oslib.h.wimp32
o.verify:	OS:oslib.h.jpeg
o.verify:	h.main
o.verify:	C:h.kernel
o.verify:	OS:h.messagetrans
o.verify:	h.callback
o.verify:	h.verify
o.header:	cmhg.header
o.header:	VersionNum
