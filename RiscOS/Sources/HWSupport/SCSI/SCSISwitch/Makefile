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
# Makefile for SCSI driver
#

COMPONENT    = SCSIDriver
OBJS         = module scsi asm
CMHGDEPENDS  = module scsi
CMHGFILE     = header
HDRS         =
CFLAGS       = -We
CDFLAGS      = -DDEBUGLIB
LIBS         = ${CALLXLIB} ${ASMUTILS}
ROMCDEFINES  = -DROM
ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif

include CModule 

DBG_LIBS    += ${NET5LIBS}

# Dynamic dependencies:
o.module:	c.module
o.module:	C:h.swis
o.module:	C:h.kernel
o.module:	C:debuglib.h.debuglib
o.module:	C:callx.h.callx
o.module:	C:h.kernel
o.module:	C:Global.h.Services
o.module:	C:Global.h.Variables
o.module:	h.header
o.module:	h.scsiswitch
o.module:	h.module
o.scsi:	c.scsi
o.scsi:	C:h.swis
o.scsi:	C:h.kernel
o.scsi:	h.scsiswitch
o.scsi:	h.asm
o.scsi:	h.module
o.scsi:	C:debuglib.h.debuglib
o.scsi:	C:callx.h.callx
o.scsi:	C:h.kernel
o.scsi:	h.header
h.header:	cmhg.header
h.header:	VersionNum
h.header:	C:Global.h.Services
o.asm: s.asm
o.header:	cmhg.header
o.header:	VersionNum
o.header:	C:Global.h.Services
