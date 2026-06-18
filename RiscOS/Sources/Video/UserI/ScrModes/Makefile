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
# Makefile for ScrModes
#

COMPONENT     = ScrModes
OBJS          = ScrModes tables mdfsupport edidsupport
CMHGFILE      = ScrModesv
HDRS          =
ASMHDRS       = ScrModes
ASMCHDRS      = ScrModes
CDFLAGS       = -DDODEBUG=1
CMHGDEPENDS   = ScrModes
RESFSDIR      = ${RESDIR}.ScreenMode

include CModule

# Dynamic dependencies:
o.ScrModes:	c.ScrModes
o.ScrModes:	C:h.kernel
o.ScrModes:	C:h.swis
o.ScrModes:	C:Global.h.RISCOS
o.ScrModes:	C:Global.h.GraphicsV
o.ScrModes:	C:Global.h.Services
o.ScrModes:	C:Global.h.VduExt
o.ScrModes:	C:Global.h.Variables
o.ScrModes:	C:Global.h.FileTypes
o.ScrModes:	C:Global.h.OsBytes
o.ScrModes:	C:Global.h.CMOS
o.ScrModes:	C:Global.h.ModHand
o.ScrModes:	C:Global.h.VIDCList
o.ScrModes:	C:Interface.h.HighFSI
o.ScrModes:	C:Interface.h.ScrModes
o.ScrModes:	h.ScrModesv
o.ScrModes:	h.errors
o.ScrModes:	h.monitors
o.ScrModes:	h.modex
o.ScrModes:	h.mdfsupport
o.ScrModes:	h.edidsupport
h.ScrModesv:	cmhg.ScrModesv
h.ScrModesv:	VersionNum
h.ScrModesv:	C:Global.h.Services
o.tables:	c.tables
o.tables:	C:h.kernel
o.tables:	C:Global.h.VIDCList
o.tables:	h.modex
o.tables:	h.tables
o.mdfsupport:	c.mdfsupport
o.mdfsupport:	C:h.kernel
o.mdfsupport:	C:h.swis
o.mdfsupport:	C:Global.h.Services
o.mdfsupport:	C:Interface.h.HighFSI
o.mdfsupport:	h.errors
o.mdfsupport:	h.modex
o.mdfsupport:	h.monitors
o.mdfsupport:	h.mdfsupport
o.edidsupport:	c.edidsupport
o.edidsupport:	C:h.kernel
o.edidsupport:	C:h.swis
o.edidsupport:	C:Global.h.RISCOS
o.edidsupport:	C:Global.h.GraphicsV
o.edidsupport:	C:Global.h.Services
o.edidsupport:	C:Global.h.FileTypes
o.edidsupport:	C:Global.h.OsWords
o.edidsupport:	C:Global.h.VIDCList
o.edidsupport:	C:Global.h.VduExt
o.edidsupport:	C:Interface.h.HighFSI
o.edidsupport:	h.edidmemory
o.edidsupport:	h.errors
o.edidsupport:	h.monitors
o.edidsupport:	h.modex
o.edidsupport:	h.edidsupport
o.edidsupport:	h.tables
o.ScrModesv:	cmhg.ScrModesv
o.ScrModesv:	VersionNum
o.ScrModesv:	C:Global.h.Services
