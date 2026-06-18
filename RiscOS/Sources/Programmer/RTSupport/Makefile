# Copyright 2005 Castle Technology Ltd
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
# Makefile for RTSupport
#

DEBUG ?= FALSE

COMPONENT   = Real Time Support
TARGET      = RTSupport
OBJS        = debug global mess scheduler module
RES_AREA    = resmess_ResourcesFiles
CMHGDEPENDS = module
CMHGAUTOHDR = ${TARGET}
CMHGFILE_SWIPREFIX = RT
HDRS        =
ASMHDRS     = ${TARGET}
ASMCHDRS    = ${TARGET}
ROMCDEFINES = -DROM_MODULE
INSTRES_FILES = Priorities

ifeq ($(DEBUG),TRUE)
CFLAGS += -DDEBUGLIB
ASFLAGS += -PD "DEBUGLIB SETL {TRUE}"
LIBS = ${DEBUGLIBS} ${NET5LIBS}
endif

include CModule

CFLAGS     += -We
CDFLAGS    += -DDEBUGLIB

# Dynamic dependencies:
o.debug:	c.debug
o.debug:	C:h.swis
o.debug:	C:h.kernel
o.debug:	h.debug
o.global:	c.global
o.global:	h.global
o.global:	C:h.kernel
o.global:	C:tboxlibs.h.toolbox
o.global:	C:tboxlibs.h.wimp
o.mess:	c.mess
o.mess:	C:h.swis
o.mess:	C:h.kernel
o.mess:	h.global
o.mess:	C:h.kernel
o.mess:	C:tboxlibs.h.toolbox
o.mess:	C:tboxlibs.h.wimp
o.mess:	h.mess
o.mess:	C:h.kernel
o.scheduler: s.scheduler
o.scheduler: Hdr:ListOpts
o.scheduler: Hdr:Macros
o.scheduler: Hdr:System
o.scheduler: Hdr:SWIs
o.scheduler: Hdr:CPU.Arch
o.scheduler: Hdr:Machine.<Machine>
o.scheduler: Hdr:Machine.Machine
o.scheduler: Hdr:CPU.Generic26
o.scheduler: Hdr:CPU.Generic32
o.scheduler: Hdr:IO.GenericIO
o.scheduler: Hdr:RISCOS
o.scheduler: Hdr:APCS.<APCS>
o.scheduler: Hdr:APCS.Common
o.scheduler: Hdr:FSNumbers
o.scheduler: Hdr:NewErrors
o.scheduler: Hdr:UpCall
o.scheduler: Hdr:RTSupport
o.scheduler: Hdr:CPU.Arch
o.scheduler: Hdr:OSMisc
o.scheduler: Hdr:Proc
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.NewErrors
o.module:	C:Global.h.RISCOS
o.module:	C:Global.h.Services
o.module:	C:Global.h.OSRSI6
o.module:	C:Global.h.OSMisc
o.module:	C:Interface.h.RTSupport
o.module:	C:DebugLib.h.DebugLib
o.module:	h.debug
o.module:	h.global
o.module:	C:h.kernel
o.module:	C:tboxlibs.h.toolbox
o.module:	C:tboxlibs.h.wimp
o.module:	h.mess
o.module:	C:h.kernel
o.module:	h.RTSupportHdr
o.module:	h.resmess
o.module:	h.scheduler
o.module:	C:h.kernel
h.RTSupportHdr:	cmhg.RTSupportHdr
h.RTSupportHdr:	C:Global.h.RISCOS
h.RTSupportHdr:	C:Global.h.Services
h.RTSupportHdr:	C:Global.h.SWIs
h.RTSupportHdr:	VersionNum
o.RTSupportHdr:	cmhg.RTSupportHdr
o.RTSupportHdr:	C:Global.h.RISCOS
o.RTSupportHdr:	C:Global.h.Services
o.RTSupportHdr:	C:Global.h.SWIs
o.RTSupportHdr:	VersionNum
