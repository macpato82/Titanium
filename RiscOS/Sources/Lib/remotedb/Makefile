# Copyright 1997 Acorn Computers Ltd
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
# Makefile for remotedb
#

COMPONENT = RemoteDebug
override TARGET = remotedb
OBJS      = remote
HDRS      = remote
CFLAGS    = ${C_NOWARN_NON_ANSI_INCLUDES}
CINCLUDES = ${TCPIPINC}

include CLibrary

# Dynamic dependencies:
oz.remote:	c.remote
oz.remote:	TCPIPLibs:sys.h.types
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	TCPIPLibs:machine.h.endian
oz.remote:	TCPIPLibs:machine.h.ansi
oz.remote:	TCPIPLibs:machine.h.types
oz.remote:	TCPIPLibs:sys.h.socket
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	TCPIPLibs:sys.h.time
oz.remote:	TCPIPLibs:sys.h.types
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	TCPIPLibs:h.netdb
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	TCPIPLibs:netinet.h.in
oz.remote:	TCPIPLibs:h.socklib
oz.remote:	TCPIPLibs:sys.h.types
oz.remote:	TCPIPLibs:sys.h.socket
oz.remote:	TCPIPLibs:sys.h.stat
oz.remote:	TCPIPLibs:sys.h.time
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	TCPIPLibs:sys.h.time
oz.remote:	TCPIPLibs:sys.h.uio
oz.remote:	TCPIPLibs:sys.h.cdefs
oz.remote:	C:h.kernel
oz.remote:	h.remote
oz.remote:	VersionNum
o.remote:	c.remote
o.remote:	TCPIPLibs:sys.h.types
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	TCPIPLibs:machine.h.endian
o.remote:	TCPIPLibs:machine.h.ansi
o.remote:	TCPIPLibs:machine.h.types
o.remote:	TCPIPLibs:sys.h.socket
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	TCPIPLibs:sys.h.time
o.remote:	TCPIPLibs:sys.h.types
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	TCPIPLibs:h.netdb
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	TCPIPLibs:netinet.h.in
o.remote:	TCPIPLibs:h.socklib
o.remote:	TCPIPLibs:sys.h.types
o.remote:	TCPIPLibs:sys.h.socket
o.remote:	TCPIPLibs:sys.h.stat
o.remote:	TCPIPLibs:sys.h.time
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	TCPIPLibs:sys.h.time
o.remote:	TCPIPLibs:sys.h.uio
o.remote:	TCPIPLibs:sys.h.cdefs
o.remote:	C:h.kernel
o.remote:	h.remote
o.remote:	VersionNum
