# Copyright 1999 Element 14 Ltd
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
# Makefile for DHCP
#

COMPONENT    = DHCP
OBJS         = dhcp dhcpinform module interfaces\
               iparp packets sockets voting
CMHGDEPENDS  = module
#
# Available build options (passed in OPTIONS)
#
# -DMINIMUM_OPTIONS_LENGTH=4
#    Sets the length of options check.  Set this to 4 to disable the
#    length checks.  Defaults to 64 (what the DHCP standard requires)
#
CDEFINES     = ${OPTIONS} -UTRACE
CINCLUDES    = ${TCPIPINC}
C_EXP_HDR    = ${CEXPORTDIR}
HDRS         = DHCP
CMHGAUTOHDR  = DHCP
ROMCDEFINES  = -DROM
LIBS        += ${NET5LIBS} ${ASMUTILS}
ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif
CFLAGS       = ${C_NOWARN_NON_ANSI_INCLUDES}

include CModule

# Dynamic dependencies:
o.dhcp:	c.dhcp
o.dhcp:	C:h.kernel
o.dhcp:	C:h.swis
o.dhcp:	TCPIPLibs:sys.h.types
o.dhcp:	TCPIPLibs:sys.h.cdefs
o.dhcp:	TCPIPLibs:machine.h.endian
o.dhcp:	TCPIPLibs:machine.h.ansi
o.dhcp:	TCPIPLibs:machine.h.types
o.dhcp:	TCPIPLibs:sys.h.socket
o.dhcp:	TCPIPLibs:sys.h.cdefs
o.dhcp:	TCPIPLibs:sys.h.dcistructs
o.dhcp:	TCPIPLibs:net.h.if
o.dhcp:	TCPIPLibs:sys.h.time
o.dhcp:	TCPIPLibs:sys.h.types
o.dhcp:	TCPIPLibs:sys.h.cdefs
o.dhcp:	TCPIPLibs:protocols.h.dhcp
o.dhcp:	TCPIPLibs:netinet.h.in
o.dhcp:	TCPIPLibs:arpa.h.inet
o.dhcp:	TCPIPLibs:sys.h.cdefs
o.dhcp:	h.dhcpintern
o.dhcp:	h.DHCP
o.dhcp:	h.interfaces
o.dhcp:	h.packets
o.dhcp:	h.consts
o.dhcp:	h.module
o.dhcp:	h.sockets
o.dhcp:	h.dhcpinform
o.dhcp:	h.iparp
o.dhcp:	h.voting
o.dhcpinform:	c.dhcpinform
o.dhcpinform:	C:h.kernel
o.dhcpinform:	C:h.swis
o.dhcpinform:	TCPIPLibs:sys.h.types
o.dhcpinform:	TCPIPLibs:sys.h.cdefs
o.dhcpinform:	TCPIPLibs:machine.h.endian
o.dhcpinform:	TCPIPLibs:machine.h.ansi
o.dhcpinform:	TCPIPLibs:machine.h.types
o.dhcpinform:	TCPIPLibs:sys.h.socket
o.dhcpinform:	TCPIPLibs:sys.h.cdefs
o.dhcpinform:	TCPIPLibs:sys.h.dcistructs
o.dhcpinform:	TCPIPLibs:net.h.if
o.dhcpinform:	TCPIPLibs:sys.h.time
o.dhcpinform:	TCPIPLibs:sys.h.types
o.dhcpinform:	TCPIPLibs:sys.h.cdefs
o.dhcpinform:	TCPIPLibs:netinet.h.in
o.dhcpinform:	TCPIPLibs:protocols.h.dhcp
o.dhcpinform:	TCPIPLibs:arpa.h.inet
o.dhcpinform:	TCPIPLibs:sys.h.cdefs
o.dhcpinform:	h.dhcpintern
o.dhcpinform:	h.DHCP
o.dhcpinform:	h.interfaces
o.dhcpinform:	h.sockets
o.dhcpinform:	h.module
o.dhcpinform:	h.packets
o.dhcpinform:	h.dhcpinform
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:Global.h.Services
o.module:	C:Global.h.NewErrors
o.module:	C:Global.h.RISCOS
o.module:	VersionNum
o.module:	h.DHCPHdr
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:machine.h.endian
o.module:	TCPIPLibs:machine.h.ansi
o.module:	TCPIPLibs:machine.h.types
o.module:	TCPIPLibs:sys.h.socket
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:sys.h.dcistructs
o.module:	TCPIPLibs:net.h.if
o.module:	TCPIPLibs:sys.h.time
o.module:	TCPIPLibs:sys.h.types
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	TCPIPLibs:protocols.h.dhcp
o.module:	TCPIPLibs:netinet.h.in
o.module:	TCPIPLibs:arpa.h.inet
o.module:	TCPIPLibs:sys.h.cdefs
o.module:	h.dhcpintern
o.module:	h.DHCP
o.module:	h.interfaces
o.module:	h.sockets
o.module:	h.module
o.module:	h.packets
o.module:	h.dhcpinform
o.module:	h.iparp
h.DHCPHdr:	cmhg.DHCPHdr
h.DHCPHdr:	VersionNum
h.DHCPHdr:	C:Global.h.Services
h.DHCPHdr:	C:Global.h.RISCOS
h.DHCPHdr:	C:Global.h.SWIs
o.interfaces:	c.interfaces
o.interfaces:	C:h.kernel
o.interfaces:	C:h.swis
o.interfaces:	C:Global.h.OsWords
o.interfaces:	TCPIPLibs:sys.h.types
o.interfaces:	TCPIPLibs:sys.h.cdefs
o.interfaces:	TCPIPLibs:machine.h.endian
o.interfaces:	TCPIPLibs:machine.h.ansi
o.interfaces:	TCPIPLibs:machine.h.types
o.interfaces:	TCPIPLibs:sys.h.socket
o.interfaces:	TCPIPLibs:sys.h.cdefs
o.interfaces:	TCPIPLibs:net.h.if
o.interfaces:	TCPIPLibs:sys.h.time
o.interfaces:	TCPIPLibs:sys.h.types
o.interfaces:	TCPIPLibs:sys.h.cdefs
o.interfaces:	TCPIPLibs:protocols.h.dhcp
o.interfaces:	TCPIPLibs:sys.h.dcistructs
o.interfaces:	TCPIPLibs:netinet.h.in
o.interfaces:	TCPIPLibs:arpa.h.inet
o.interfaces:	TCPIPLibs:sys.h.cdefs
o.interfaces:	h.dhcpintern
o.interfaces:	h.DHCP
o.interfaces:	h.interfaces
o.interfaces:	h.sockets
o.interfaces:	h.module
o.interfaces:	h.packets
o.interfaces:	h.voting
o.iparp:	c.iparp
o.iparp:	C:h.kernel
o.iparp:	C:h.swis
o.iparp:	TCPIPLibs:sys.h.types
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:machine.h.endian
o.iparp:	TCPIPLibs:machine.h.ansi
o.iparp:	TCPIPLibs:machine.h.types
o.iparp:	TCPIPLibs:sys.h.dcistructs
o.iparp:	TCPIPLibs:sys.h.file
o.iparp:	TCPIPLibs:sys.h.fcntl
o.iparp:	TCPIPLibs:sys.h.types
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:sys.h.unistd
o.iparp:	TCPIPLibs:sys.h._posix
o.iparp:	TCPIPLibs:sys.h.socket
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:sys.h.sysctl
o.iparp:	TCPIPLibs:sys.h._posix
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:net.h.if
o.iparp:	TCPIPLibs:sys.h.time
o.iparp:	TCPIPLibs:sys.h.types
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:net.h.if_dl
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:net.h.if_types
o.iparp:	TCPIPLibs:net.h.route
o.iparp:	TCPIPLibs:net.h.radix
o.iparp:	TCPIPLibs:netinet.h.in
o.iparp:	TCPIPLibs:netinet.h.if_ether
o.iparp:	TCPIPLibs:net.h.ethernet
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:net.h.if_arp
o.iparp:	TCPIPLibs:sys.h.socket
o.iparp:	TCPIPLibs:arpa.h.inet
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:protocols.h.dhcp
o.iparp:	TCPIPLibs:sys.h.errno
o.iparp:	C:h.kernel
o.iparp:	TCPIPLibs:h.socklib
o.iparp:	TCPIPLibs:sys.h.types
o.iparp:	TCPIPLibs:sys.h.socket
o.iparp:	TCPIPLibs:sys.h.stat
o.iparp:	TCPIPLibs:sys.h.time
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	TCPIPLibs:sys.h.time
o.iparp:	TCPIPLibs:sys.h.uio
o.iparp:	TCPIPLibs:sys.h.cdefs
o.iparp:	C:h.kernel
o.iparp:	h.dhcpintern
o.iparp:	h.DHCP
o.iparp:	h.interfaces
o.iparp:	h.packets
o.iparp:	h.consts
o.iparp:	h.module
o.iparp:	h.sockets
o.iparp:	h.iparp
o.packets:	c.packets
o.packets:	C:h.kernel
o.packets:	C:h.swis
o.packets:	TCPIPLibs:sys.h.types
o.packets:	TCPIPLibs:sys.h.cdefs
o.packets:	TCPIPLibs:machine.h.endian
o.packets:	TCPIPLibs:machine.h.ansi
o.packets:	TCPIPLibs:machine.h.types
o.packets:	TCPIPLibs:sys.h.socket
o.packets:	TCPIPLibs:sys.h.cdefs
o.packets:	TCPIPLibs:sys.h.dcistructs
o.packets:	TCPIPLibs:net.h.if
o.packets:	TCPIPLibs:sys.h.time
o.packets:	TCPIPLibs:sys.h.types
o.packets:	TCPIPLibs:sys.h.cdefs
o.packets:	TCPIPLibs:protocols.h.dhcp
o.packets:	TCPIPLibs:netinet.h.in
o.packets:	TCPIPLibs:netinet.h.if_ether
o.packets:	TCPIPLibs:net.h.ethernet
o.packets:	TCPIPLibs:sys.h.cdefs
o.packets:	TCPIPLibs:net.h.if_arp
o.packets:	TCPIPLibs:sys.h.socket
o.packets:	h.dhcpintern
o.packets:	h.DHCP
o.packets:	h.interfaces
o.packets:	h.packets
o.packets:	h.consts
o.packets:	h.sockets
o.sockets:	c.sockets
o.sockets:	C:h.kernel
o.sockets:	C:h.swis
o.sockets:	TCPIPLibs:sys.h.types
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:machine.h.endian
o.sockets:	TCPIPLibs:machine.h.ansi
o.sockets:	TCPIPLibs:machine.h.types
o.sockets:	TCPIPLibs:sys.h.socket
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:sys.h.ioctl
o.sockets:	TCPIPLibs:sys.h.ttycom
o.sockets:	TCPIPLibs:sys.h.ioccom
o.sockets:	TCPIPLibs:sys.h.ioccom
o.sockets:	TCPIPLibs:sys.h.filio
o.sockets:	TCPIPLibs:sys.h.ioccom
o.sockets:	TCPIPLibs:sys.h.sockio
o.sockets:	TCPIPLibs:sys.h.ioccom
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:sys.h.filio
o.sockets:	TCPIPLibs:sys.h.sockio
o.sockets:	TCPIPLibs:net.h.if
o.sockets:	TCPIPLibs:sys.h.time
o.sockets:	TCPIPLibs:sys.h.types
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:protocols.h.dhcp
o.sockets:	TCPIPLibs:sys.h.dcistructs
o.sockets:	TCPIPLibs:netinet.h.in
o.sockets:	TCPIPLibs:arpa.h.inet
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:net.h.if_dl
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:net.h.if_arp
o.sockets:	TCPIPLibs:sys.h.socket
o.sockets:	TCPIPLibs:net.h.if_types
o.sockets:	TCPIPLibs:sys.h.errno
o.sockets:	C:h.kernel
o.sockets:	h.dhcpintern
o.sockets:	h.DHCP
o.sockets:	h.interfaces
o.sockets:	h.sockets
o.sockets:	TCPIPLibs:h.socklib
o.sockets:	TCPIPLibs:sys.h.types
o.sockets:	TCPIPLibs:sys.h.socket
o.sockets:	TCPIPLibs:sys.h.stat
o.sockets:	TCPIPLibs:sys.h.time
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	TCPIPLibs:sys.h.time
o.sockets:	TCPIPLibs:sys.h.uio
o.sockets:	TCPIPLibs:sys.h.cdefs
o.sockets:	C:h.kernel
o.sockets:	h.packets
o.sockets:	h.iparp
o.sockets:	h.module
o.voting:	c.voting
o.voting:	C:h.kernel
o.voting:	C:h.swis
o.voting:	TCPIPLibs:sys.h.types
o.voting:	TCPIPLibs:sys.h.cdefs
o.voting:	TCPIPLibs:machine.h.endian
o.voting:	TCPIPLibs:machine.h.ansi
o.voting:	TCPIPLibs:machine.h.types
o.voting:	TCPIPLibs:sys.h.socket
o.voting:	TCPIPLibs:sys.h.cdefs
o.voting:	TCPIPLibs:net.h.if
o.voting:	TCPIPLibs:sys.h.time
o.voting:	TCPIPLibs:sys.h.types
o.voting:	TCPIPLibs:sys.h.cdefs
o.voting:	TCPIPLibs:protocols.h.dhcp
o.voting:	TCPIPLibs:sys.h.dcistructs
o.voting:	TCPIPLibs:netinet.h.in
o.voting:	TCPIPLibs:arpa.h.inet
o.voting:	TCPIPLibs:sys.h.cdefs
o.voting:	h.dhcpintern
o.voting:	h.DHCP
o.voting:	h.interfaces
o.voting:	h.packets
o.voting:	h.voting
o.DHCPHdr:	cmhg.DHCPHdr
o.DHCPHdr:	VersionNum
o.DHCPHdr:	C:Global.h.Services
o.DHCPHdr:	C:Global.h.RISCOS
o.DHCPHdr:	C:Global.h.SWIs
