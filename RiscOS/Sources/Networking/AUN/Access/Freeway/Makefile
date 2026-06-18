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
# Makefile for Freeway
#

COMPONENT    = Freeway
OBJS         = module objects
CMHGDEPENDS  = module
HDRS         =
ASMHDRS      = Freeway
CINCLUDES    = ${TCPIPINC}
CFLAGS       = -DAUTH32 ${C_NOWARN_NON_ANSI_INCLUDES}
CDFLAGS      = -DDEBUG -DDEBUGSER
LIBS        += ${INETLIB} ${SOCK5LIB} ${ASMUTILS}
ROMCDEFINES  = -DROM
CMHGDEPENDS  = module
ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif

include CModule

# Dynamic dependencies:
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.Services
o.module:	C:Global.h.CMOS
o.module:	C:Global.h.OsBytes
o.module:	C:Global.h.ModHand
o.module:	C:AsmUtils.h.irqs
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:machine.h.endian
o.module:	TCPIPLibs:machine.h.ansi
o.module:	TCPIPLibs:machine.h.types
o.module:	TCPIPLibs:sys.h.uio
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.socket
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.time
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.ioctl
o.module:	TCPIPLibs:sys.h.ttycom
o.module:	TCPIPLibs:sys.h.ioccom
o.module:	TCPIPLibs:sys.h.ioccom
o.module:	TCPIPLibs:sys.h.filio
o.module:	TCPIPLibs:sys.h.ioccom
o.module:	TCPIPLibs:sys.h.sockio
o.module:	TCPIPLibs:sys.h.ioccom
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.errno
o.module:	C:h.kernel
o.module:	TCPIPLibs:sys.h.dcistructs
o.module:	TCPIPLibs:netinet.h.in
o.module:	TCPIPLibs:net.h.if
o.module:	TCPIPLibs:sys.h.time
o.module:	TCPIPLibs:net.h.ethernet
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:h.socklib
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:sys.h.socket
o.module:	TCPIPLibs:sys.h.stat
o.module:	TCPIPLibs:sys.h.time
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.time
o.module:	TCPIPLibs:sys.h.uio
o.module:	C:h.kernel
o.module:	TCPIPLibs:h.inetlib
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:netinet.h.in
o.module:	h.module
o.module:	C:h.kernel
o.module:	C:Global.h.RISCOS
o.module:	C:Global.h.Services
o.module:	C:Global.h.UpCall
o.module:	C:DebugLib.h.DebugLib
o.module:	h.FreewayHdr
h.FreewayHdr:	cmhg.FreewayHdr
h.FreewayHdr:	VersionNum
h.FreewayHdr:	C:Global.h.SWIs
h.FreewayHdr:	C:Global.h.RISCOS
h.FreewayHdr:	C:Global.h.Services
o.objects:	c.objects
o.objects:	C:h.kernel
o.objects:	C:h.swis
o.objects:	TCPIPLibs:sys.h.types
o.objects:	TCPIPLibs:sys.h.cdefs
o.objects:	TCPIPLibs:machine.h.endian
o.objects:	TCPIPLibs:machine.h.ansi
o.objects:	TCPIPLibs:machine.h.types
o.objects:	TCPIPLibs:sys.h.uio
o.objects:	TCPIPLibs:sys.h.cdefs
o.objects:	TCPIPLibs:sys.h.socket
o.objects:	TCPIPLibs:sys.h.cdefs
o.objects:	TCPIPLibs:netinet.h.in
o.objects:	TCPIPLibs:net.h.if
o.objects:	TCPIPLibs:sys.h.time
o.objects:	TCPIPLibs:sys.h.types
o.objects:	TCPIPLibs:sys.h.cdefs
o.objects:	TCPIPLibs:h.inetlib
o.objects:	TCPIPLibs:sys.h.types
o.objects:	TCPIPLibs:netinet.h.in
o.objects:	h.module
o.objects:	C:h.kernel
o.objects:	C:Global.h.RISCOS
o.objects:	C:Global.h.Services
o.objects:	C:Global.h.UpCall
o.objects:	C:DebugLib.h.DebugLib
o.FreewayHdr:	cmhg.FreewayHdr
o.FreewayHdr:	VersionNum
o.FreewayHdr:	C:Global.h.SWIs
o.FreewayHdr:	C:Global.h.RISCOS
o.FreewayHdr:	C:Global.h.Services
