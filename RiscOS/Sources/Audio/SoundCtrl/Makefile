# Copyright 2003 Tematic Ltd
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
# Makefile for SoundCtrl
#

COMPONENT   = SoundCtrl
TARGET      = ${COMPONENT}
OBJS        = global mess module
RES_AREA    = resmess_ResourcesFiles
CMHGFILE    = modhdr
CMHGDEPENDS = module
ROMCDEFINES = -DROM_MODULE
ASMHDRS     = MixerDevice SoundCtrl
HDRS        = MixerDevice

include CModule

CDFLAGS    += -DDEBUGLIB
CFLAGS     += -IC:
DBG_LIBS   += ${NET5LIBS}

# Dynamic dependencies:
o.global:	c.global
o.global:	h.global
o.global:	C:tboxlibs.h.toolbox
o.global:	C:h.kernel
o.global:	C:tboxlibs.h.wimp
o.global:	C:Global.h.NewErrors
o.mess:	c.mess
o.mess:	C:h.swis
o.mess:	C:h.kernel
o.mess:	h.global
o.mess:	C:tboxlibs.h.toolbox
o.mess:	C:tboxlibs.h.wimp
o.mess:	C:Global.h.NewErrors
o.mess:	h.mess
o.mess:	C:h.kernel
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.HALDevice
o.module:	C:Global.h.Services
o.module:	C:Interface.h.MixerDevice
o.module:	C:Global.h.HALDevice
o.module:	C:Interface.h.Sound
o.module:	C:DebugLib.h.DebugLib
o.module:	h.global
o.module:	C:tboxlibs.h.toolbox
o.module:	C:tboxlibs.h.wimp
o.module:	C:Global.h.NewErrors
o.module:	h.mess
o.module:	C:h.kernel
o.module:	h.modhdr
o.module:	h.resmess
h.modhdr:	cmhg.modhdr
h.modhdr:	C:Global.h.Services
h.modhdr:	C:Global.h.SWIs
h.modhdr:	VersionNum
o.modhdr:	cmhg.modhdr
o.modhdr:	C:Global.h.Services
o.modhdr:	C:Global.h.SWIs
o.modhdr:	VersionNum
