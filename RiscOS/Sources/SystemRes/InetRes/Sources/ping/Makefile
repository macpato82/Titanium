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
# Makefile for Ping
#

COMPONENT = Ping
OBJS      = Ping utils
LIBS      = ${NET5LIBS} ${ASMUTILS}
CINCLUDES = ${TCPIPINC}
CFLAGS    = ${C_NOWARN_NON_ANSI_INCLUDES}

include CApp

# Dynamic dependencies:
o.Ping:	c.Ping
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:sys.h.param
o.Ping:	TCPIPLibs:sys.h.types
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:machine.h.endian
o.Ping:	TCPIPLibs:machine.h.ansi
o.Ping:	TCPIPLibs:machine.h.types
o.Ping:	TCPIPLibs:sys.h.syslimits
o.Ping:	TCPIPLibs:sys.h.signal
o.Ping:	TCPIPLibs:machine.h.signal
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:machine.h.param
o.Ping:	TCPIPLibs:machine.h.limits
o.Ping:	TCPIPLibs:sys.h.capsicum
o.Ping:	TCPIPLibs:sys.h.socket
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:sys.h.sysctl
o.Ping:	TCPIPLibs:sys.h._posix
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:sys.h.time
o.Ping:	TCPIPLibs:sys.h.types
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:sys.h.uio
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:netinet.h.in
o.Ping:	TCPIPLibs:netinet.h.in_systm
o.Ping:	TCPIPLibs:netinet.h.ip
o.Ping:	TCPIPLibs:netinet.h.ip_icmp
o.Ping:	TCPIPLibs:netinet.h.ip_var
o.Ping:	TCPIPLibs:arpa.h.inet
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:h.err
o.Ping:	TCPIPLibs:machine.h.ansi
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	C:AsmUtils.h.escape
o.Ping:	TCPIPLibs:sys.h.errno
o.Ping:	C:h.kernel
o.Ping:	TCPIPLibs:sys.h.filio
o.Ping:	TCPIPLibs:sys.h.ioccom
o.Ping:	TCPIPLibs:h.inetlib
o.Ping:	TCPIPLibs:sys.h.types
o.Ping:	TCPIPLibs:netinet.h.in
o.Ping:	TCPIPLibs:h.unixlib
o.Ping:	TCPIPLibs:h.netdb
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:h.sysexits
o.Ping:	TCPIPLibs:h.unistd
o.Ping:	TCPIPLibs:sys.h.cdefs
o.Ping:	TCPIPLibs:sys.h.types
o.Ping:	TCPIPLibs:sys.h.unistd
o.Ping:	TCPIPLibs:sys.h._posix
o.Ping:	h.utils
o.Ping:	TCPIPLibs:sys.h.types
o.utils:	c.utils
o.utils:	TCPIPLibs:sys.h.cdefs
o.utils:	h.utils
o.utils:	TCPIPLibs:sys.h.types
o.utils:	TCPIPLibs:sys.h.cdefs
o.utils:	TCPIPLibs:machine.h.endian
o.utils:	TCPIPLibs:machine.h.ansi
o.utils:	TCPIPLibs:machine.h.types
