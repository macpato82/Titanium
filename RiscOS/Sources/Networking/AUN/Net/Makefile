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
# Makefile for Net[I|E|G]
#

COMPONENT    = Net
VPATH        = gwroute
LIBS         = ${NET5LIBS} ${ASMUTILS}
OBJS         = ${OBJ${TARGET}}
CINCLUDES    = ${TCPIPINC}
HDRS         =
CFLAGS       = ${C_NOWARN_NON_ANSI_INCLUDES}
ROMCDEFINES  = -DROM
RESFSDIR     = ${RESDIR}${SEP}Net
CMHGDEPENDS  = mns mnsg mnsi
ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif
SOURCES_TO_SYMLINK = $(wildcard gwroute/c/*) $(wildcard gwroute/h/*)

#
# Objects implicated in the various targets
#
OBJNet       = mns  mnscommon io   swis   configure netasm text inetfn debug route showrt
OBJNetI      = mnsi mnscommon io   swis   configure netasm text inetfn debug
OBJNetE      = mnsi mnscommon io_e swis_e configure netasm text inetfn debug
OBJNetG      = mnsg mnscommon io   swis   configure netasm text inetfn \
               showrt af if input output startup tables timer trace inet data

include CModule

#
# Custom rules
#
swis_e.o:
	${CC} -DEDDS ${CFLAGS} -o $@ swis.c

io_e.o:
	${CC} -DEDDS ${CFLAGS} -o $@ io.c

# Dynamic dependencies:
o.mns:	c.mns
o.mns:	C:h.kernel
o.mns:	C:h.swis
o.mns:	C:Global.h.OsBytes
o.mns:	C:Global.h.CMOS
o.mns:	C:Global.h.RISCOS
o.mns:	TCPIPLibs:sys.h.types
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:machine.h.endian
o.mns:	TCPIPLibs:machine.h.ansi
o.mns:	TCPIPLibs:machine.h.types
o.mns:	TCPIPLibs:sys.h.uio
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:sys.h.socket
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:sys.h.time
o.mns:	TCPIPLibs:sys.h.types
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:sys.h.ioctl
o.mns:	TCPIPLibs:sys.h.ttycom
o.mns:	TCPIPLibs:sys.h.ioccom
o.mns:	TCPIPLibs:sys.h.ioccom
o.mns:	TCPIPLibs:sys.h.filio
o.mns:	TCPIPLibs:sys.h.ioccom
o.mns:	TCPIPLibs:sys.h.sockio
o.mns:	TCPIPLibs:sys.h.ioccom
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:sys.h.dcistructs
o.mns:	TCPIPLibs:netinet.h.in
o.mns:	TCPIPLibs:net.h.if
o.mns:	TCPIPLibs:sys.h.time
o.mns:	TCPIPLibs:protocols.h.routed
o.mns:	h.netasm
o.mns:	C:AsmUtils.h.callbacks
o.mns:	C:AsmUtils.h.irqs
o.mns:	h.module
o.mns:	h.mnscommon
o.mns:	h.configure
o.mns:	h.debug
o.mns:	h.inetfn
o.mns:	h.io
o.mns:	h.showrt
o.mns:	TCPIPLibs:h.socklib
o.mns:	TCPIPLibs:sys.h.types
o.mns:	TCPIPLibs:sys.h.socket
o.mns:	TCPIPLibs:sys.h.stat
o.mns:	TCPIPLibs:sys.h.time
o.mns:	TCPIPLibs:sys.h.cdefs
o.mns:	TCPIPLibs:sys.h.time
o.mns:	TCPIPLibs:sys.h.uio
o.mns:	C:h.kernel
o.mns:	h.swicode
o.mns:	h.text
o.mns:	h.routecode
o.mns:	h.mns
o.mns:	h.NetHdr
h.NetHdr:	cmhg.NetHdr
h.NetHdr:	VersionNum
o.mnscommon:	c.mnscommon
o.mnscommon:	C:h.kernel
o.mnscommon:	C:h.swis
o.mnscommon:	C:Global.h.Services
o.mnscommon:	C:Global.h.OsBytes
o.mnscommon:	C:Global.h.RISCOS
o.mnscommon:	TCPIPLibs:sys.h.types
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	TCPIPLibs:machine.h.endian
o.mnscommon:	TCPIPLibs:machine.h.ansi
o.mnscommon:	TCPIPLibs:machine.h.types
o.mnscommon:	TCPIPLibs:sys.h.socket
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	TCPIPLibs:sys.h.ioctl
o.mnscommon:	TCPIPLibs:sys.h.ttycom
o.mnscommon:	TCPIPLibs:sys.h.ioccom
o.mnscommon:	TCPIPLibs:sys.h.ioccom
o.mnscommon:	TCPIPLibs:sys.h.filio
o.mnscommon:	TCPIPLibs:sys.h.ioccom
o.mnscommon:	TCPIPLibs:sys.h.sockio
o.mnscommon:	TCPIPLibs:sys.h.ioccom
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	TCPIPLibs:netinet.h.in
o.mnscommon:	TCPIPLibs:sys.h.dcistructs
o.mnscommon:	h.netasm
o.mnscommon:	C:AsmUtils.h.callbacks
o.mnscommon:	C:AsmUtils.h.irqs
o.mnscommon:	h.module
o.mnscommon:	h.debug
o.mnscommon:	h.mns
o.mnscommon:	h.mnscommon
o.mnscommon:	h.text
o.mnscommon:	h.configure
o.mnscommon:	h.swicode
o.mnscommon:	TCPIPLibs:h.socklib
o.mnscommon:	TCPIPLibs:sys.h.types
o.mnscommon:	TCPIPLibs:sys.h.socket
o.mnscommon:	TCPIPLibs:sys.h.stat
o.mnscommon:	TCPIPLibs:sys.h.time
o.mnscommon:	TCPIPLibs:sys.h.types
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	TCPIPLibs:sys.h.time
o.mnscommon:	TCPIPLibs:sys.h.uio
o.mnscommon:	TCPIPLibs:sys.h.cdefs
o.mnscommon:	C:h.kernel
o.io:	c.io
o.io:	TCPIPLibs:sys.h.types
o.io:	TCPIPLibs:sys.h.cdefs
o.io:	TCPIPLibs:machine.h.endian
o.io:	TCPIPLibs:machine.h.ansi
o.io:	TCPIPLibs:machine.h.types
o.io:	TCPIPLibs:sys.h.socket
o.io:	TCPIPLibs:sys.h.cdefs
o.io:	TCPIPLibs:netinet.h.in
o.io:	TCPIPLibs:netinet.h.in_systm
o.io:	TCPIPLibs:netinet.h.ip
o.io:	TCPIPLibs:netinet.h.ip_var
o.io:	TCPIPLibs:netinet.h.udp
o.io:	TCPIPLibs:netinet.h.udp_var
o.io:	TCPIPLibs:sys.h.errno
o.io:	C:h.kernel
o.io:	TCPIPLibs:sys.h.mbuf
o.io:	C:h.kernel
o.io:	C:h.swis
o.io:	h.module
o.io:	h.swicode
o.io:	h.io
o.io:	h.mns
o.io:	h.mnscommon
o.io:	h.netasm
o.io:	C:AsmUtils.h.callbacks
o.io:	C:AsmUtils.h.irqs
o.io:	TCPIPLibs:h.socklib
o.io:	TCPIPLibs:sys.h.types
o.io:	TCPIPLibs:sys.h.socket
o.io:	TCPIPLibs:sys.h.stat
o.io:	TCPIPLibs:sys.h.time
o.io:	TCPIPLibs:sys.h.types
o.io:	TCPIPLibs:sys.h.cdefs
o.io:	TCPIPLibs:sys.h.cdefs
o.io:	TCPIPLibs:sys.h.time
o.io:	TCPIPLibs:sys.h.uio
o.io:	TCPIPLibs:sys.h.cdefs
o.io:	C:h.kernel
o.io:	VersionNum
o.swis:	c.swis
o.swis:	C:h.kernel
o.swis:	C:h.swis
o.swis:	TCPIPLibs:sys.h.types
o.swis:	TCPIPLibs:sys.h.cdefs
o.swis:	TCPIPLibs:machine.h.endian
o.swis:	TCPIPLibs:machine.h.ansi
o.swis:	TCPIPLibs:machine.h.types
o.swis:	h.configure
o.swis:	h.module
o.swis:	h.debug
o.swis:	h.inetfn
o.swis:	h.mns
o.swis:	h.mnscommon
o.swis:	h.netasm
o.swis:	C:AsmUtils.h.callbacks
o.swis:	C:AsmUtils.h.irqs
o.swis:	h.io
o.swis:	h.swicode
o.swis:	VersionNum
o.configure:	c.configure
o.configure:	C:h.kernel
o.configure:	C:h.swis
o.configure:	C:Global.h.OsBytes
o.configure:	C:Global.h.CMOS
o.configure:	TCPIPLibs:sys.h.types
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	TCPIPLibs:machine.h.endian
o.configure:	TCPIPLibs:machine.h.ansi
o.configure:	TCPIPLibs:machine.h.types
o.configure:	TCPIPLibs:sys.h.socket
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	TCPIPLibs:sys.h.ioctl
o.configure:	TCPIPLibs:sys.h.ttycom
o.configure:	TCPIPLibs:sys.h.ioccom
o.configure:	TCPIPLibs:sys.h.ioccom
o.configure:	TCPIPLibs:sys.h.filio
o.configure:	TCPIPLibs:sys.h.ioccom
o.configure:	TCPIPLibs:sys.h.sockio
o.configure:	TCPIPLibs:sys.h.ioccom
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	TCPIPLibs:sys.h.dcistructs
o.configure:	TCPIPLibs:net.h.if
o.configure:	TCPIPLibs:sys.h.time
o.configure:	TCPIPLibs:sys.h.types
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	h.configure
o.configure:	h.swicode
o.configure:	h.module
o.configure:	h.debug
o.configure:	TCPIPLibs:h.socklib
o.configure:	TCPIPLibs:sys.h.types
o.configure:	TCPIPLibs:sys.h.socket
o.configure:	TCPIPLibs:sys.h.stat
o.configure:	TCPIPLibs:sys.h.time
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	TCPIPLibs:sys.h.time
o.configure:	TCPIPLibs:sys.h.uio
o.configure:	TCPIPLibs:sys.h.cdefs
o.configure:	C:h.kernel
o.netasm: s.netasm
o.netasm: Hdr:ListOpts
o.netasm: Hdr:Macros
o.netasm: Hdr:System
o.netasm: Hdr:SWIs
o.netasm: Hdr:CPU.Arch
o.netasm: Hdr:Machine.<Machine>
o.netasm: Hdr:Machine.Machine
o.netasm: Hdr:CPU.Generic26
o.netasm: Hdr:CPU.Generic32
o.netasm: Hdr:IO.GenericIO
o.netasm: Hdr:RISCOS
o.netasm: Hdr:APCS.<APCS>
o.netasm: Hdr:APCS.Common
o.netasm: Hdr:FSNumbers
o.netasm: Hdr:NewErrors
o.netasm: Hdr:OsBytes
o.netasm: Hdr:Econet
o.netasm: Hdr:MsgTrans
o.text:	c.text
o.text:	C:Global.h.NewErrors
o.text:	TCPIPLibs:sys.h.types
o.text:	TCPIPLibs:sys.h.cdefs
o.text:	TCPIPLibs:machine.h.endian
o.text:	TCPIPLibs:machine.h.ansi
o.text:	TCPIPLibs:machine.h.types
o.text:	h.module
o.text:	h.text
o.inetfn:	c.inetfn
o.inetfn:	TCPIPLibs:sys.h.types
o.inetfn:	TCPIPLibs:sys.h.cdefs
o.inetfn:	TCPIPLibs:machine.h.endian
o.inetfn:	TCPIPLibs:machine.h.ansi
o.inetfn:	TCPIPLibs:machine.h.types
o.inetfn:	TCPIPLibs:netinet.h.in
o.inetfn:	h.inetfn
o.debug:	c.debug
o.debug:	C:h.kernel
o.debug:	C:h.swis
o.debug:	h.debug
o.route:	c.route
o.route:	TCPIPLibs:sys.h.types
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	TCPIPLibs:machine.h.endian
o.route:	TCPIPLibs:machine.h.ansi
o.route:	TCPIPLibs:machine.h.types
o.route:	TCPIPLibs:sys.h.socket
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	TCPIPLibs:sys.h.ioctl
o.route:	TCPIPLibs:sys.h.ttycom
o.route:	TCPIPLibs:sys.h.ioccom
o.route:	TCPIPLibs:sys.h.ioccom
o.route:	TCPIPLibs:sys.h.filio
o.route:	TCPIPLibs:sys.h.ioccom
o.route:	TCPIPLibs:sys.h.sockio
o.route:	TCPIPLibs:sys.h.ioccom
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	TCPIPLibs:net.h.route
o.route:	TCPIPLibs:net.h.radix
o.route:	TCPIPLibs:protocols.h.routed
o.route:	TCPIPLibs:netinet.h.in
o.route:	h.module
o.route:	h.routecode
o.route:	h.inetfn
o.route:	TCPIPLibs:h.unixlib
o.route:	TCPIPLibs:h.socklib
o.route:	TCPIPLibs:sys.h.types
o.route:	TCPIPLibs:sys.h.socket
o.route:	TCPIPLibs:sys.h.stat
o.route:	TCPIPLibs:sys.h.time
o.route:	TCPIPLibs:sys.h.types
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	TCPIPLibs:sys.h.time
o.route:	TCPIPLibs:sys.h.uio
o.route:	TCPIPLibs:sys.h.cdefs
o.route:	C:h.kernel
o.showrt:	c.showrt
o.showrt:	C:h.kernel
o.showrt:	TCPIPLibs:sys.h.types
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	TCPIPLibs:machine.h.endian
o.showrt:	TCPIPLibs:machine.h.ansi
o.showrt:	TCPIPLibs:machine.h.types
o.showrt:	TCPIPLibs:sys.h.socket
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	TCPIPLibs:sys.h.ioctl
o.showrt:	TCPIPLibs:sys.h.ttycom
o.showrt:	TCPIPLibs:sys.h.ioccom
o.showrt:	TCPIPLibs:sys.h.ioccom
o.showrt:	TCPIPLibs:sys.h.filio
o.showrt:	TCPIPLibs:sys.h.ioccom
o.showrt:	TCPIPLibs:sys.h.sockio
o.showrt:	TCPIPLibs:sys.h.ioccom
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	TCPIPLibs:sys.h.mbuf
o.showrt:	TCPIPLibs:net.h.route
o.showrt:	TCPIPLibs:net.h.radix
o.showrt:	TCPIPLibs:netinet.h.in
o.showrt:	TCPIPLibs:h.nlist
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	h.module
o.showrt:	h.mnscommon
o.showrt:	h.mns
o.showrt:	h.showrt
o.showrt:	TCPIPLibs:h.socklib
o.showrt:	TCPIPLibs:sys.h.types
o.showrt:	TCPIPLibs:sys.h.socket
o.showrt:	TCPIPLibs:sys.h.stat
o.showrt:	TCPIPLibs:sys.h.time
o.showrt:	TCPIPLibs:sys.h.types
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	TCPIPLibs:sys.h.time
o.showrt:	TCPIPLibs:sys.h.uio
o.showrt:	TCPIPLibs:sys.h.cdefs
o.showrt:	C:h.kernel
o.NetHdr:	cmhg.NetHdr
o.NetHdr:	VersionNum
