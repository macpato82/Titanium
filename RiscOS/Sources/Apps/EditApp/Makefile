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
# Makefile for Edit

COMPONENT       = Edit
override TARGET = !RunImage
CFLAGS         += ${C_NOWARN_NON_ANSI_INCLUDES}
CDFLAGS         = -DTRACE=1
OBJS            = edit editv message slist
CINCLUDES       = ${RINC}
LIBS            = ${RLIB}
INSTTYPE        = app
INSTAPP_FILES   = !Boot !Help !Run !RunImage !Sprites !Sprites22 Export Messages Templates
INSTAPP_VERSION = Messages
RES_FILES       = Export Messages Templates
RESAPP_FILES    = !Boot !Help !Run

include CApp

# Dynamic dependencies:
oz.edit:	c.edit
oz.edit:	C:h.kernel
oz.edit:	RISCOSLIB:h.akbd
oz.edit:	RISCOSLIB:h.help
oz.edit:	RISCOSLIB:h.wimp
oz.edit:	RISCOSLIB:h.os
oz.edit:	RISCOSLIB:h.sprite
oz.edit:	RISCOSLIB:h.event
oz.edit:	RISCOSLIB:h.menu
oz.edit:	RISCOSLIB:h.dbox
oz.edit:	RISCOSLIB:h.flex
oz.edit:	RISCOSLIB:h.os
oz.edit:	C:h.swis
oz.edit:	RISCOSLIB:h.wimp
oz.edit:	RISCOSLIB:h.sprite
oz.edit:	RISCOSLIB:h.wimpt
oz.edit:	RISCOSLIB:h.werr
oz.edit:	RISCOSLIB:h.win
oz.edit:	RISCOSLIB:h.menu
oz.edit:	RISCOSLIB:h.template
oz.edit:	RISCOSLIB:h.dbox
oz.edit:	RISCOSLIB:h.txt
oz.edit:	RISCOSLIB:h.txtscrap
oz.edit:	RISCOSLIB:h.typdat
oz.edit:	RISCOSLIB:h.txtedit
oz.edit:	RISCOSLIB:h.event
oz.edit:	RISCOSLIB:h.res
oz.edit:	RISCOSLIB:h.resspr
oz.edit:	RISCOSLIB:h.trace
oz.edit:	RISCOSLIB:h.dboxquery
oz.edit:	h.editv
oz.edit:	RISCOSLIB:h.baricon
oz.edit:	h.taskwin
oz.edit:	RISCOSLIB:h.xferrecv
oz.edit:	RISCOSLIB:h.msgs
oz.edit:	RISCOSLIB:h.visdelay
oz.edit:	RISCOSLIB:h.pointer
oz.editv:	c.editv
oz.editv:	RISCOSLIB:h.txt
oz.editv:	RISCOSLIB:h.dbox
oz.editv:	RISCOSLIB:h.help
oz.editv:	RISCOSLIB:h.wimp
oz.editv:	RISCOSLIB:h.os
oz.editv:	C:h.kernel
oz.editv:	RISCOSLIB:h.sprite
oz.editv:	RISCOSLIB:h.event
oz.editv:	RISCOSLIB:h.menu
oz.editv:	RISCOSLIB:h.msgs
oz.editv:	h.editv
oz.message:	c.message
oz.message:	RISCOSLIB:h.akbd
oz.message:	RISCOSLIB:h.dboxquery
oz.message:	RISCOSLIB:h.flex
oz.message:	RISCOSLIB:h.os
oz.message:	C:h.kernel
oz.message:	RISCOSLIB:h.menu
oz.message:	RISCOSLIB:h.event
oz.message:	RISCOSLIB:h.wimp
oz.message:	RISCOSLIB:h.sprite
oz.message:	RISCOSLIB:h.txt
oz.message:	RISCOSLIB:h.txtscrap
oz.message:	RISCOSLIB:h.typdat
oz.message:	RISCOSLIB:h.txtedit
oz.message:	RISCOSLIB:h.txtwin
oz.message:	RISCOSLIB:h.trace
oz.message:	RISCOSLIB:h.werr
oz.message:	RISCOSLIB:h.wimp
oz.message:	RISCOSLIB:h.wimpt
oz.message:	RISCOSLIB:h.win
oz.message:	RISCOSLIB:h.xferrecv
oz.message:	h.taskwin
oz.message:	h.slist
oz.message:	RISCOSLIB:h.msgs
oz.message:	RISCOSLIB:h.msgtrans
oz.message:	C:h.swis
oz.message:	RISCOSLIB:h.help
oz.message:	RISCOSLIB:h.dbox
oz.slist:	c.slist
oz.slist:	h.slist
oz.modulewrap: s.modulewrap
oz.modulewrap: s.AppName
oz.modulewrap: VersionASM
oz.modulewrap: Hdr:ListOpts
oz.modulewrap: Hdr:Macros
oz.modulewrap: Hdr:System
oz.modulewrap: Hdr:SWIs
oz.modulewrap: Hdr:CPU.Arch
oz.modulewrap: Hdr:Machine.<Machine>
oz.modulewrap: Hdr:Machine.Machine
oz.modulewrap: Hdr:CPU.Generic26
oz.modulewrap: Hdr:CPU.Generic32
oz.modulewrap: Hdr:IO.GenericIO
oz.modulewrap: Hdr:RISCOS
oz.modulewrap: Hdr:ModHand
oz.modulewrap: Hdr:EnvNumbers
oz.modulewrap: Hdr:Proc
oz.modulewrap: Hdr:FSNumbers
oz.modulewrap: Hdr:NewErrors
oz.modulewrap: Hdr:Services
oz.modulewrap: Hdr:ResourceFS
oz.modulewrap: Hdr:MsgTrans
oz.modulewrap: Hdr:Variables
oz.modulewrap: Hdr:UpCall
oz.modulewrap: s.ResFiles
