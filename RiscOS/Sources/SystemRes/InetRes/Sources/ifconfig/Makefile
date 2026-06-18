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
# Makefile for IfConfig
#

COMPONENT = IfConfig
OBJS      = IfConfig af_inet af_link
LIBS      = ${NET5LIBS}
CINCLUDES = ${TCPIPINC}
CDEFINES  = -DINET -Dlint
CFLAGS    = ${C_NOWARN_NON_ANSI_INCLUDES}

include CApp

# Dynamic dependencies:
o.IfConfig:	c.IfConfig
o.IfConfig:	TCPIPLibs:sys.h.param
o.IfConfig:	TCPIPLibs:sys.h.types
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:machine.h.endian
o.IfConfig:	TCPIPLibs:machine.h.ansi
o.IfConfig:	TCPIPLibs:machine.h.types
o.IfConfig:	TCPIPLibs:sys.h.syslimits
o.IfConfig:	TCPIPLibs:sys.h.signal
o.IfConfig:	TCPIPLibs:machine.h.signal
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:machine.h.param
o.IfConfig:	TCPIPLibs:machine.h.limits
o.IfConfig:	TCPIPLibs:sys.h.ioctl
o.IfConfig:	TCPIPLibs:sys.h.ttycom
o.IfConfig:	TCPIPLibs:sys.h.ioccom
o.IfConfig:	TCPIPLibs:sys.h.ioccom
o.IfConfig:	TCPIPLibs:sys.h.filio
o.IfConfig:	TCPIPLibs:sys.h.ioccom
o.IfConfig:	TCPIPLibs:sys.h.sockio
o.IfConfig:	TCPIPLibs:sys.h.ioccom
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:sys.h.queue
o.IfConfig:	TCPIPLibs:sys.h.socket
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:sys.h.time
o.IfConfig:	TCPIPLibs:sys.h.types
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:net.h.ethernet
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:net.h.if
o.IfConfig:	TCPIPLibs:sys.h.time
o.IfConfig:	TCPIPLibs:net.h.if_dl
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:net.h.if_types
o.IfConfig:	TCPIPLibs:net.h.route
o.IfConfig:	TCPIPLibs:net.h.radix
o.IfConfig:	TCPIPLibs:netinet.h.in
o.IfConfig:	TCPIPLibs:net.h.if_var
o.IfConfig:	TCPIPLibs:sys.h.queue
o.IfConfig:	TCPIPLibs:netinet.h.in_var
o.IfConfig:	TCPIPLibs:sys.h.queue
o.IfConfig:	TCPIPLibs:arpa.h.inet
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:h.netdb
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:h.ifaddrs
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:sys.h.errno
o.IfConfig:	C:h.kernel
o.IfConfig:	TCPIPLibs:h.unixlib
o.IfConfig:	TCPIPLibs:h.unistd
o.IfConfig:	TCPIPLibs:sys.h.cdefs
o.IfConfig:	TCPIPLibs:sys.h.types
o.IfConfig:	TCPIPLibs:sys.h.unistd
o.IfConfig:	TCPIPLibs:sys.h._posix
o.IfConfig:	h.ifconfig
o.af_inet:	c.af_inet
o.af_inet:	TCPIPLibs:sys.h.param
o.af_inet:	TCPIPLibs:sys.h.types
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:machine.h.endian
o.af_inet:	TCPIPLibs:machine.h.ansi
o.af_inet:	TCPIPLibs:machine.h.types
o.af_inet:	TCPIPLibs:sys.h.syslimits
o.af_inet:	TCPIPLibs:sys.h.signal
o.af_inet:	TCPIPLibs:machine.h.signal
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:machine.h.param
o.af_inet:	TCPIPLibs:machine.h.limits
o.af_inet:	TCPIPLibs:sys.h.ioctl
o.af_inet:	TCPIPLibs:sys.h.ttycom
o.af_inet:	TCPIPLibs:sys.h.ioccom
o.af_inet:	TCPIPLibs:sys.h.ioccom
o.af_inet:	TCPIPLibs:sys.h.filio
o.af_inet:	TCPIPLibs:sys.h.ioccom
o.af_inet:	TCPIPLibs:sys.h.sockio
o.af_inet:	TCPIPLibs:sys.h.ioccom
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:sys.h.socket
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:net.h.if
o.af_inet:	TCPIPLibs:sys.h.time
o.af_inet:	TCPIPLibs:sys.h.types
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:net.h.if_var
o.af_inet:	TCPIPLibs:sys.h.queue
o.af_inet:	TCPIPLibs:h.unixlib
o.af_inet:	C:h.swis
o.af_inet:	C:h.kernel
o.af_inet:	TCPIPLibs:h.unistd
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:sys.h.types
o.af_inet:	TCPIPLibs:sys.h.unistd
o.af_inet:	TCPIPLibs:sys.h._posix
o.af_inet:	TCPIPLibs:h.ifaddrs
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:netinet.h.in
o.af_inet:	TCPIPLibs:netinet.h.in_var
o.af_inet:	TCPIPLibs:sys.h.queue
o.af_inet:	TCPIPLibs:arpa.h.inet
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	TCPIPLibs:h.netdb
o.af_inet:	TCPIPLibs:sys.h.cdefs
o.af_inet:	h.ifconfig
o.af_link:	c.af_link
o.af_link:	TCPIPLibs:sys.h.types
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:machine.h.endian
o.af_link:	TCPIPLibs:machine.h.ansi
o.af_link:	TCPIPLibs:machine.h.types
o.af_link:	TCPIPLibs:sys.h.ioctl
o.af_link:	TCPIPLibs:sys.h.ttycom
o.af_link:	TCPIPLibs:sys.h.ioccom
o.af_link:	TCPIPLibs:sys.h.ioccom
o.af_link:	TCPIPLibs:sys.h.filio
o.af_link:	TCPIPLibs:sys.h.ioccom
o.af_link:	TCPIPLibs:sys.h.sockio
o.af_link:	TCPIPLibs:sys.h.ioccom
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:sys.h.socket
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:net.h.if
o.af_link:	TCPIPLibs:sys.h.time
o.af_link:	TCPIPLibs:sys.h.types
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:h.err
o.af_link:	TCPIPLibs:machine.h.ansi
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:h.ifaddrs
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:h.unistd
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:sys.h.types
o.af_link:	TCPIPLibs:sys.h.unistd
o.af_link:	TCPIPLibs:sys.h._posix
o.af_link:	TCPIPLibs:net.h.if_dl
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	TCPIPLibs:net.h.if_types
o.af_link:	TCPIPLibs:net.h.ethernet
o.af_link:	TCPIPLibs:sys.h.cdefs
o.af_link:	h.ifconfig
