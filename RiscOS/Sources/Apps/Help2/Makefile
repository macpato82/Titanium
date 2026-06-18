# Copyright 1998 Acorn Computers Ltd
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
# Makefile for Help2

COMPONENT       = Help
override TARGET = !RunImage
OBJS            = common help main
LIBS            = ${TBOXLIBS}
INSTTYPE        = app
INSTAPP_FILES   = !Boot !Help !Run !RunImage !Sprites !Sprites22 Messages Res
INSTAPP_VERSION = Messages
RES_FILES       = Messages Res
RESAPP_FILES    = !Boot !Help !Run

include CApp

# Dynamic dependencies:
oz.common:	c.common
oz.common:	C:h.kernel
oz.common:	C:tboxlibs.h.wimplib
oz.common:	C:tboxlibs.h.wimp
oz.common:	C:tboxlibs.h.toolbox
oz.common:	C:h.swis
oz.common:	h.common
oz.help:	c.help
oz.help:	C:h.swis
oz.help:	C:h.kernel
oz.help:	C:tboxlibs.h.gadgets
oz.help:	C:tboxlibs.h.toolbox
oz.help:	C:tboxlibs.h.wimp
oz.help:	h.common
oz.help:	h.help
oz.main:	c.main
oz.main:	C:tboxlibs.h.wimp
oz.main:	C:h.swis
oz.main:	C:h.kernel
oz.main:	C:tboxlibs.h.wimplib
oz.main:	C:tboxlibs.h.toolbox
oz.main:	C:tboxlibs.h.event
oz.main:	C:tboxlibs.h.window
oz.main:	C:tboxlibs.h.gadgets
oz.main:	C:tboxlibs.h.iconbar
oz.main:	C:tboxlibs.h.proginfo
oz.main:	C:tboxlibs.h.menu
oz.main:	h.help
oz.main:	h.common
oz.main:	h.defines
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
