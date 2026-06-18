#
# Copyright (c) 2014, Elesar Ltd
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met: 
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Elesar Ltd nor the names of its contributors
#       may be used to endorse or promote products derived from this software
#       without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
# 
# Makefile for EtherCPSW
#

COMPONENT    = EtherCPSW
TARGET      ?= EtherCPSW
OBJS         = ecpmodule if_cpsw glue filtering filteringasm
CMHGDEPENDS  = ecpmodule glue
ROMCDEFINES  = -DROM
RES_AREA     = ethercp_messages
HDRS         =
CINCLUDES    = -ITCPIPLibs:,C:
LIBS        += ${NET5LIBS} ${ASMUTILS}
CUSTOMSA     = custom

include CModule

CFLAGS      += -Wp -DRISCOS -D_KERNEL -DINET
CDFLAGS     += -DDEBUG

#
# Specials for install (and standalone because they use the same override)
#
standalone_custom: rm.${SA_TARGET}
        @${ECHO} ${COMPONENT}: ram module built

install_custom: install_${TARGET}; @

install_EtherY: rm.${SA_TARGET}
        ${MKDIR} ${INSTDIR}
        ${CP} rm.${SA_TARGET} ${INSTDIR}.${TARGET} ${CPFLAGS}
        @${ECHO} ${COMPONENT}: ram module installed

install_AutoSense: AutoSense.${COMPONENT}
        ${CP} AutoSense.${COMPONENT} ${INSTDIR}.${COMPONENT} ${CPFLAGS}
        @${ECHO} ${COMPONENT}: AutoSense file installed

# Dynamic dependencies:
o.ecpmodule:	c.ecpmodule
o.ecpmodule:	C:Global.h.OsBytes
o.ecpmodule:	C:Global.h.Services
o.ecpmodule:	C:Global.h.Variables
o.ecpmodule:	C:Global.h.CMOS
o.ecpmodule:	C:Global.h.HALDevice
o.ecpmodule:	C:Global.h.HALEntries
o.ecpmodule:	C:Global.h.NewErrors
o.ecpmodule:	C:AsmUtils.h.irqs
o.ecpmodule:	C:h.swis
o.ecpmodule:	C:h.kernel
o.ecpmodule:	TCPIPLibs:sys.h.types
o.ecpmodule:	TCPIPLibs:sys.h.cdefs
o.ecpmodule:	TCPIPLibs:machine.h.endian
o.ecpmodule:	TCPIPLibs:machine.h.ansi
o.ecpmodule:	TCPIPLibs:machine.h.types
o.ecpmodule:	TCPIPLibs:sys.h.dcistructs
o.ecpmodule:	TCPIPLibs:sys.h.errno
o.ecpmodule:	C:h.kernel
o.ecpmodule:	TCPIPLibs:sys.h.mbuf
o.ecpmodule:	TCPIPLibs:sys.h.malloc
o.ecpmodule:	TCPIPLibs:sys.h.queue
o.ecpmodule:	TCPIPLibs:net.h.ethernet
o.ecpmodule:	TCPIPLibs:sys.h.cdefs
o.ecpmodule:	h.EtherCPSWHdr
o.ecpmodule:	h.filtering
o.ecpmodule:	h.glue
o.ecpmodule:	h.if_cpswreg
o.ecpmodule:	h.ecpmodule
o.if_cpsw:	c.if_cpsw
o.if_cpsw:	TCPIPLibs:sys.h.types
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	TCPIPLibs:machine.h.endian
o.if_cpsw:	TCPIPLibs:machine.h.ansi
o.if_cpsw:	TCPIPLibs:machine.h.types
o.if_cpsw:	TCPIPLibs:sys.h.ioctl
o.if_cpsw:	TCPIPLibs:sys.h.ttycom
o.if_cpsw:	TCPIPLibs:sys.h.ioccom
o.if_cpsw:	TCPIPLibs:sys.h.ioccom
o.if_cpsw:	TCPIPLibs:sys.h.filio
o.if_cpsw:	TCPIPLibs:sys.h.ioccom
o.if_cpsw:	TCPIPLibs:sys.h.sockio
o.if_cpsw:	TCPIPLibs:sys.h.ioccom
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	TCPIPLibs:sys.h.systm
o.if_cpsw:	TCPIPLibs:machine.h.cpufunc
o.if_cpsw:	TCPIPLibs:machine.h.stdarg
o.if_cpsw:	TCPIPLibs:sys.h.callout
o.if_cpsw:	TCPIPLibs:sys.h.queue
o.if_cpsw:	TCPIPLibs:sys.h.kernel
o.if_cpsw:	TCPIPLibs:sys.h.linker_set
o.if_cpsw:	TCPIPLibs:sys.h.errno
o.if_cpsw:	C:h.kernel
o.if_cpsw:	TCPIPLibs:sys.h.mbuf
o.if_cpsw:	TCPIPLibs:sys.h.malloc
o.if_cpsw:	TCPIPLibs:sys.h.socket
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	TCPIPLibs:net.h.if
o.if_cpsw:	TCPIPLibs:sys.h.time
o.if_cpsw:	TCPIPLibs:sys.h.types
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	TCPIPLibs:net.h.if_dl
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	TCPIPLibs:net.h.ethernet
o.if_cpsw:	TCPIPLibs:sys.h.cdefs
o.if_cpsw:	C:AsmUtils.h.irqs
o.if_cpsw:	h.bus
o.if_cpsw:	h.glue
o.if_cpsw:	h.mii
o.if_cpsw:	h.miivar
o.if_cpsw:	h.if_cpswreg
o.glue:	c.glue
o.glue:	C:h.swis
o.glue:	C:h.kernel
o.glue:	TCPIPLibs:sys.h.types
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	TCPIPLibs:machine.h.endian
o.glue:	TCPIPLibs:machine.h.ansi
o.glue:	TCPIPLibs:machine.h.types
o.glue:	TCPIPLibs:sys.h.systm
o.glue:	TCPIPLibs:machine.h.cpufunc
o.glue:	TCPIPLibs:machine.h.stdarg
o.glue:	TCPIPLibs:sys.h.callout
o.glue:	TCPIPLibs:sys.h.queue
o.glue:	TCPIPLibs:sys.h.errno
o.glue:	C:h.kernel
o.glue:	TCPIPLibs:sys.h.mbuf
o.glue:	TCPIPLibs:sys.h.malloc
o.glue:	TCPIPLibs:sys.h.queue
o.glue:	TCPIPLibs:sys.h.dcistructs
o.glue:	TCPIPLibs:net.h.ethernet
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	C:AsmUtils.h.clz
o.glue:	C:AsmUtils.h.irqs
o.glue:	C:Global.h.HALDevice
o.glue:	C:Global.h.HALEntries
o.glue:	C:Global.h.OSRSI6
o.glue:	C:Global.h.OSMisc
o.glue:	C:Global.h.OSMem
o.glue:	C:Global.h.NewErrors
o.glue:	h.EtherCPSWHdr
o.glue:	h.filtering
o.glue:	h.bus
o.glue:	h.glue
o.glue:	h.if_cpswreg
o.glue:	h.ecpmodule
o.glue:	h.mii
o.glue:	h.miivar
h.EtherCPSWHdr:	cmhg.EtherCPSWHdr
h.EtherCPSWHdr:	C:Global.h.Services
h.EtherCPSWHdr:	VersionNum
o.filtering:	c.filtering
o.filtering:	C:h.swis
o.filtering:	C:h.kernel
o.filtering:	C:AsmUtils.h.irqs
o.filtering:	TCPIPLibs:sys.h.types
o.filtering:	TCPIPLibs:sys.h.cdefs
o.filtering:	TCPIPLibs:machine.h.endian
o.filtering:	TCPIPLibs:machine.h.ansi
o.filtering:	TCPIPLibs:machine.h.types
o.filtering:	TCPIPLibs:sys.h.dcistructs
o.filtering:	TCPIPLibs:sys.h.errno
o.filtering:	C:h.kernel
o.filtering:	TCPIPLibs:sys.h.mbuf
o.filtering:	TCPIPLibs:sys.h.malloc
o.filtering:	TCPIPLibs:net.h.ethernet
o.filtering:	TCPIPLibs:sys.h.cdefs
o.filtering:	h.filtering
o.filtering:	h.glue
o.filtering:	h.ecpmodule
o.filteringasm: s.filteringasm
o.filteringasm: Hdr:ListOpts
o.filteringasm: Hdr:Macros
o.filteringasm: Hdr:System
o.filteringasm: Hdr:SWIs
o.filteringasm: Hdr:CPU.Arch
o.filteringasm: Hdr:Machine.<Machine>
o.filteringasm: Hdr:Machine.Machine
o.filteringasm: Hdr:CPU.Generic26
o.filteringasm: Hdr:CPU.Generic32
o.filteringasm: Hdr:IO.GenericIO
o.filteringasm: Hdr:RISCOS
o.EtherCPSWHdr:	cmhg.EtherCPSWHdr
o.EtherCPSWHdr:	C:Global.h.Services
o.EtherCPSWHdr:	VersionNum
