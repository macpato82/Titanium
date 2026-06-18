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
# Makefile for SysCtl
#

COMPONENT = SysCtl
OBJS      = SysCtl
LIBS      = ${NET5LIBS}
CINCLUDES = ${TCPIPINC}
CFLAGS    = ${C_NOWARN_NON_ANSI_INCLUDES}
CDEFINES  = -Dlint

include CApp

# Dynamic dependencies:
o.SysCtl:	c.SysCtl
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.param
o.SysCtl:	TCPIPLibs:sys.h.types
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:machine.h.endian
o.SysCtl:	TCPIPLibs:machine.h.ansi
o.SysCtl:	TCPIPLibs:machine.h.types
o.SysCtl:	TCPIPLibs:sys.h.syslimits
o.SysCtl:	TCPIPLibs:sys.h.signal
o.SysCtl:	TCPIPLibs:machine.h.signal
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:machine.h.param
o.SysCtl:	TCPIPLibs:machine.h.limits
o.SysCtl:	TCPIPLibs:sys.h.time
o.SysCtl:	TCPIPLibs:sys.h.types
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.resource
o.SysCtl:	TCPIPLibs:sys.h.types
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.stat
o.SysCtl:	TCPIPLibs:sys.h.time
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.sysctl
o.SysCtl:	TCPIPLibs:sys.h._posix
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.errno
o.SysCtl:	C:h.kernel
o.SysCtl:	TCPIPLibs:h.unixlib
o.SysCtl:	TCPIPLibs:h.sysexits
o.SysCtl:	TCPIPLibs:h.unistd
o.SysCtl:	TCPIPLibs:sys.h.cdefs
o.SysCtl:	TCPIPLibs:sys.h.types
o.SysCtl:	TCPIPLibs:sys.h.unistd
o.SysCtl:	TCPIPLibs:sys.h._posix
