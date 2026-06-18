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
# Makefile for XHCI driver
#

COMPONENT    = XHCIDriver
OBJS         = xhcimodule xhci glue veneer usbroothub_subr
HDRS         =
CMHGDEPENDS  = xhcimodule
LIBS         = ${CALLXLIB} ${ASMUTILS}
CDEFINES     = -DRISCOS -DBRANCH_NHUSB -D_KERNEL -DDISABLE_PACKED
ROMCDEFINES  = -DROM
CINCLUDES    = ${USBINC} ${TCPIPINC}
CFLAGS       = ${C_NOWARN_NON_ANSI_INCLUDES}
SOURCES_TO_SYMLINK = $(wildcard sys/h/*)

ifeq (${DEBUG},TRUE)
CFLAGS      += -DDEBUGLIB
CMHGFLAGS   += -DDEBUGLIB
endif

include CModule

# Dynamic dependencies:
o.xhcimodule:	c.xhcimodule
o.xhcimodule:	C:h.swis
o.xhcimodule:	C:h.kernel
o.xhcimodule:	C:Global.h.Services
o.xhcimodule:	C:Global.h.OSEntries
o.xhcimodule:	C:Global.h.OSMisc
o.xhcimodule:	C:Global.h.HALEntries
o.xhcimodule:	C:Global.h.ModHand
o.xhcimodule:	C:Interface.h.USBDriver
o.xhcimodule:	C:Interface.h.PCI
o.xhcimodule:	C:callx.h.callx
o.xhcimodule:	C:h.kernel
o.xhcimodule:	TCPIPLibs:sys.h.types
o.xhcimodule:	TCPIPLibs:sys.h.cdefs
o.xhcimodule:	TCPIPLibs:machine.h.endian
o.xhcimodule:	TCPIPLibs:machine.h.ansi
o.xhcimodule:	TCPIPLibs:machine.h.types
o.xhcimodule:	TCPIPLibs:sys.h.systm
o.xhcimodule:	TCPIPLibs:machine.h.cpufunc
o.xhcimodule:	TCPIPLibs:machine.h.stdarg
o.xhcimodule:	TCPIPLibs:sys.h.callout
o.xhcimodule:	TCPIPLibs:sys.h.queue
o.xhcimodule:	C:USB.machine.h.bus
o.xhcimodule:	TCPIPLibs:sys.h.types
o.xhcimodule:	C:USB.dev.usb.h.usb
o.xhcimodule:	TCPIPLibs:sys.h.types
o.xhcimodule:	TCPIPLibs:sys.h.time
o.xhcimodule:	TCPIPLibs:sys.h.types
o.xhcimodule:	TCPIPLibs:sys.h.cdefs
o.xhcimodule:	C:USB.dev.usb.h.usb_port
o.xhcimodule:	C:USB.sys.h.device
o.xhcimodule:	TCPIPLibs:sys.h.queue
o.xhcimodule:	TCPIPLibs:h.errno
o.xhcimodule:	TCPIPLibs:sys.h.errno
o.xhcimodule:	C:h.kernel
o.xhcimodule:	TCPIPLibs:sys.h.ioccom
o.xhcimodule:	C:USB.dev.usb.h.usbdi
o.xhcimodule:	TCPIPLibs:sys.h.cdefs
o.xhcimodule:	C:USB.dev.usb.h.usbdivar
o.xhcimodule:	h.glue
o.xhcimodule:	h.XHCIDriverHdr
o.xhcimodule:	h.xhcimodule
o.xhcimodule:	h.xhcireg
o.xhcimodule:	h.xhcivar
o.xhcimodule:	sys.h.pool
o.xhcimodule:	C:USB.h.USBDevFS
o.xhcimodule:	C:DebugLib.h.DebugLib
h.XHCIDriverHdr:	cmhg.XHCIDriverHdr
h.XHCIDriverHdr:	C:Global.h.Services
h.XHCIDriverHdr:	cmhg.^.VersionNum
o.xhci:	c.xhci
o.xhci:	TCPIPLibs:sys.h.cdefs
o.xhci:	C:USB.machine.h.bus
o.xhci:	TCPIPLibs:sys.h.types
o.xhci:	TCPIPLibs:sys.h.cdefs
o.xhci:	TCPIPLibs:machine.h.endian
o.xhci:	TCPIPLibs:machine.h.ansi
o.xhci:	TCPIPLibs:machine.h.types
o.xhci:	TCPIPLibs:sys.h.param
o.xhci:	TCPIPLibs:sys.h.types
o.xhci:	TCPIPLibs:sys.h.syslimits
o.xhci:	TCPIPLibs:sys.h.signal
o.xhci:	TCPIPLibs:machine.h.signal
o.xhci:	TCPIPLibs:sys.h.cdefs
o.xhci:	TCPIPLibs:machine.h.param
o.xhci:	TCPIPLibs:machine.h.limits
o.xhci:	TCPIPLibs:sys.h.systm
o.xhci:	TCPIPLibs:machine.h.cpufunc
o.xhci:	TCPIPLibs:machine.h.stdarg
o.xhci:	TCPIPLibs:sys.h.callout
o.xhci:	TCPIPLibs:sys.h.queue
o.xhci:	sys.h.kmem
o.xhci:	TCPIPLibs:sys.h.types
o.xhci:	C:USB.dev.usb.h.usb
o.xhci:	TCPIPLibs:sys.h.types
o.xhci:	TCPIPLibs:sys.h.time
o.xhci:	TCPIPLibs:sys.h.types
o.xhci:	TCPIPLibs:sys.h.cdefs
o.xhci:	C:USB.dev.usb.h.usb_port
o.xhci:	C:USB.sys.h.device
o.xhci:	TCPIPLibs:sys.h.queue
o.xhci:	TCPIPLibs:h.errno
o.xhci:	TCPIPLibs:sys.h.errno
o.xhci:	C:h.kernel
o.xhci:	TCPIPLibs:sys.h.ioccom
o.xhci:	C:USB.dev.usb.h.usbdi
o.xhci:	TCPIPLibs:sys.h.cdefs
o.xhci:	C:USB.dev.usb.h.usbdivar
o.xhci:	h.usbroothub_subr
o.xhci:	h.glue
o.xhci:	h.xhcireg
o.xhci:	h.xhcivar
o.xhci:	sys.h.pool
o.xhci:	h.xhcimodule
o.glue:	c.glue
o.glue:	C:h.swis
o.glue:	C:h.kernel
o.glue:	C:Global.h.OSRSI6
o.glue:	C:Global.h.HALEntries
o.glue:	C:Interface.h.USBDriver
o.glue:	C:Interface.h.RTSupport
o.glue:	C:AsmUtils.h.clz
o.glue:	C:AsmUtils.h.callbacks
o.glue:	C:AsmUtils.h.irqs
o.glue:	C:callx.h.callx
o.glue:	C:h.kernel
o.glue:	C:USB.machine.h.bus
o.glue:	TCPIPLibs:sys.h.types
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	TCPIPLibs:machine.h.endian
o.glue:	TCPIPLibs:machine.h.ansi
o.glue:	TCPIPLibs:machine.h.types
o.glue:	TCPIPLibs:sys.h.param
o.glue:	TCPIPLibs:sys.h.types
o.glue:	TCPIPLibs:sys.h.syslimits
o.glue:	TCPIPLibs:sys.h.signal
o.glue:	TCPIPLibs:machine.h.signal
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	TCPIPLibs:machine.h.param
o.glue:	TCPIPLibs:machine.h.limits
o.glue:	TCPIPLibs:sys.h.systm
o.glue:	TCPIPLibs:machine.h.cpufunc
o.glue:	TCPIPLibs:machine.h.stdarg
o.glue:	TCPIPLibs:sys.h.callout
o.glue:	TCPIPLibs:sys.h.queue
o.glue:	TCPIPLibs:sys.h.types
o.glue:	sys.h.kmem
o.glue:	TCPIPLibs:sys.h.types
o.glue:	sys.h.pool
o.glue:	C:USB.dev.usb.h.usb
o.glue:	TCPIPLibs:sys.h.types
o.glue:	TCPIPLibs:sys.h.time
o.glue:	TCPIPLibs:sys.h.types
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	C:USB.dev.usb.h.usb_port
o.glue:	C:USB.sys.h.device
o.glue:	TCPIPLibs:sys.h.queue
o.glue:	TCPIPLibs:h.errno
o.glue:	TCPIPLibs:sys.h.errno
o.glue:	C:h.kernel
o.glue:	TCPIPLibs:sys.h.ioccom
o.glue:	C:USB.dev.usb.h.usbdi
o.glue:	TCPIPLibs:sys.h.cdefs
o.glue:	C:USB.dev.usb.h.usbdivar
o.glue:	h.glue
o.glue:	C:USB.h.USBDevFS
o.glue:	C:DebugLib.h.DebugLib
o.veneer: s.veneer
o.veneer: Hdr:ListOpts
o.veneer: Hdr:Macros
o.veneer: Hdr:System
o.veneer: Hdr:SWIs
o.veneer: Hdr:CPU.Arch
o.veneer: Hdr:Machine.<Machine>
o.veneer: Hdr:Machine.Machine
o.veneer: Hdr:CPU.Generic26
o.veneer: Hdr:CPU.Generic32
o.veneer: Hdr:IO.GenericIO
o.veneer: Hdr:RISCOS
o.veneer: Hdr:ModHand
o.veneer: Hdr:Proc
o.usbroothub_subr:	c.usbroothub_subr
o.usbroothub_subr:	C:USB.dev.usb.h.usb
o.usbroothub_subr:	TCPIPLibs:sys.h.types
o.usbroothub_subr:	TCPIPLibs:sys.h.cdefs
o.usbroothub_subr:	TCPIPLibs:machine.h.endian
o.usbroothub_subr:	TCPIPLibs:machine.h.ansi
o.usbroothub_subr:	TCPIPLibs:machine.h.types
o.usbroothub_subr:	TCPIPLibs:sys.h.time
o.usbroothub_subr:	TCPIPLibs:sys.h.types
o.usbroothub_subr:	TCPIPLibs:sys.h.cdefs
o.usbroothub_subr:	C:USB.dev.usb.h.usb_port
o.usbroothub_subr:	C:USB.sys.h.device
o.usbroothub_subr:	TCPIPLibs:sys.h.queue
o.usbroothub_subr:	TCPIPLibs:h.errno
o.usbroothub_subr:	TCPIPLibs:sys.h.errno
o.usbroothub_subr:	C:h.kernel
o.usbroothub_subr:	TCPIPLibs:sys.h.ioccom
o.usbroothub_subr:	h.usbroothub_subr
o.XHCIDriverHdr:	cmhg.XHCIDriverHdr
o.XHCIDriverHdr:	C:Global.h.Services
o.XHCIDriverHdr:	cmhg.^.VersionNum
