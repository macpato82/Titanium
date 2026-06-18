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
# Makefile for Filer Action

COMPONENT    ?= Filer_Action
TARGET       ?= FilerAct
HDRS          =
ASMHDRS       = FilerAct
INSTRES_FILES = Templates
CMHGFILE      =
OBJS          = actionwind Initialise Buttons allerrs memmanage listfiles Chains dboxlong debug
CINCLUDES     = ${RINC}
RES_OBJ       =
SA_LIBS       = ${RSTUBS}
ROM_LIBS      = ${ROMSTUBS}
ROM_SYMS      = ${ABSSYM}
CFLAGS        = ${C_STKCHK}
MODULEWRAP    = yes

include CModule

# Dynamic dependencies:
o.actionwind:	c.actionwind
o.actionwind:	C:Global.h.FSNumbers
o.actionwind:	C:Interface.h.HighFSI
o.actionwind:	C:h.swis
o.actionwind:	C:h.kernel
o.actionwind:	RISCOSLIB:h.os
o.actionwind:	RISCOSLIB:h.akbd
o.actionwind:	RISCOSLIB:h.wimp
o.actionwind:	RISCOSLIB:h.sprite
o.actionwind:	RISCOSLIB:h.wimpt
o.actionwind:	RISCOSLIB:h.werr
o.actionwind:	RISCOSLIB:h.win
o.actionwind:	RISCOSLIB:h.res
o.actionwind:	RISCOSLIB:h.resspr
o.actionwind:	RISCOSLIB:h.template
o.actionwind:	RISCOSLIB:h.msgs
o.actionwind:	RISCOSLIB:h.event
o.actionwind:	RISCOSLIB:h.menu
o.actionwind:	RISCOSLIB:h.dbox
o.actionwind:	RISCOSLIB:h.dboxquery
o.actionwind:	RISCOSLIB:h.flex
o.actionwind:	RISCOSLIB:h.heap
o.actionwind:	RISCOSLIB:h.bbc
o.actionwind:	h.Options
o.actionwind:	h.allerrs
o.actionwind:	h.malloc+
o.actionwind:	h.listfiles
o.actionwind:	h.memmanage
o.actionwind:	h.actionwind
o.actionwind:	h.Initialise
o.actionwind:	h.Buttons
o.actionwind:	h.debug
o.actionwind:	h.dboxlong
o.Initialise:	c.Initialise
o.Initialise:	RISCOSLIB:h.os
o.Initialise:	C:h.kernel
o.Initialise:	RISCOSLIB:h.wimp
o.Initialise:	RISCOSLIB:h.sprite
o.Initialise:	RISCOSLIB:h.wimpt
o.Initialise:	RISCOSLIB:h.win
o.Initialise:	RISCOSLIB:h.event
o.Initialise:	RISCOSLIB:h.menu
o.Initialise:	RISCOSLIB:h.res
o.Initialise:	RISCOSLIB:h.template
o.Initialise:	RISCOSLIB:h.dbox
o.Initialise:	RISCOSLIB:h.dboxquery
o.Initialise:	RISCOSLIB:h.msgs
o.Initialise:	RISCOSLIB:h.menu
o.Initialise:	h.Options
o.Initialise:	h.allerrs
o.Initialise:	C:h.string
o.Initialise:	h.malloc+
o.Initialise:	h.listfiles
o.Initialise:	h.memmanage
o.Initialise:	h.actionwind
o.Initialise:	h.Initialise
o.Initialise:	h.Buttons
o.Initialise:	h.debug
o.Buttons:	c.Buttons
o.Buttons:	RISCOSLIB:h.os
o.Buttons:	C:h.kernel
o.Buttons:	RISCOSLIB:h.wimp
o.Buttons:	RISCOSLIB:h.sprite
o.Buttons:	RISCOSLIB:h.wimpt
o.Buttons:	RISCOSLIB:h.event
o.Buttons:	RISCOSLIB:h.menu
o.Buttons:	RISCOSLIB:h.dbox
o.Buttons:	RISCOSLIB:h.msgs
o.Buttons:	h.Options
o.Buttons:	h.malloc+
o.Buttons:	h.listfiles
o.Buttons:	h.memmanage
o.Buttons:	h.allerrs
o.Buttons:	h.actionwind
o.Buttons:	h.Buttons
o.Buttons:	h.debug
o.allerrs: s.allerrs
o.memmanage:	c.memmanage
o.memmanage:	C:h.kernel
o.memmanage:	C:Interface.h.HighFSI
o.memmanage:	RISCOSLIB:h.os
o.memmanage:	RISCOSLIB:h.wimp
o.memmanage:	RISCOSLIB:h.sprite
o.memmanage:	h.Options
o.memmanage:	h.Chains
o.memmanage:	h.allerrs
o.memmanage:	RISCOSLIB:h.msgs
o.memmanage:	h.malloc+
o.memmanage:	h.memmanage
o.memmanage:	h.debug
o.listfiles:	c.listfiles
o.listfiles:	C:Interface.h.HighFSI
o.listfiles:	RISCOSLIB:h.os
o.listfiles:	C:h.kernel
o.listfiles:	h.Options
o.listfiles:	h.malloc+
o.listfiles:	h.listfiles
o.listfiles:	h.allerrs
o.listfiles:	RISCOSLIB:h.msgs
o.listfiles:	h.debug
o.listfiles:	h.memmanage
o.Chains:	c.Chains
o.Chains:	h.debug
o.Chains:	h.Chains
o.dboxlong:	c.dboxlong
o.dboxlong:	RISCOSLIB:h.dbox
o.dboxlong:	h.Options
o.dboxlong:	h.dboxlong
o.debug:	c.debug
o.debug:	RISCOSLIB:h.os
o.debug:	C:h.kernel
o.debug:	h.debug
o.modulewrap: s.modulewrap
o.modulewrap: s.AppName
o.modulewrap: VersionASM
o.modulewrap: Hdr:ListOpts
o.modulewrap: Hdr:Macros
o.modulewrap: Hdr:System
o.modulewrap: Hdr:SWIs
o.modulewrap: Hdr:CPU.Arch
o.modulewrap: Hdr:Machine.<Machine>
o.modulewrap: Hdr:Machine.Machine
o.modulewrap: Hdr:CPU.Generic26
o.modulewrap: Hdr:CPU.Generic32
o.modulewrap: Hdr:IO.GenericIO
o.modulewrap: Hdr:RISCOS
o.modulewrap: Hdr:ModHand
o.modulewrap: Hdr:EnvNumbers
o.modulewrap: Hdr:Proc
o.modulewrap: Hdr:FSNumbers
o.modulewrap: Hdr:NewErrors
o.modulewrap: Hdr:Services
o.modulewrap: Hdr:ResourceFS
o.modulewrap: Hdr:MsgTrans
o.modulewrap: Hdr:Variables
o.modulewrap: Hdr:UpCall
