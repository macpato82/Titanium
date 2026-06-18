# Makefile for SATA driver

COMPONENT   = SATADriver
ASMHDRS     = ATA AHCIDevice
ASMCHDRS    = ATA AHCIDevice
HDRS        =
CMHGDEPENDS = device module
OBJS        = coroutine command device fgopcb globals module message op swi trampoline util
LIBS        = ${SYNCLIB}
ROMCDEFINES = -DROM_MODULE

# Enable one of the following groups, depending on what sort of debug you want

#CFLAGS     += -DDEBUG_ENABLED

#CFLAGS     += -DDEBUG_ENABLED -DDEBUGLIB -DDEBUGLIB_NOBRACKETS
#LIBS       += ${DEBUGLIBS} ${NET5LIBS}

# Decide whether to use OS_Memory 0 or OS_Memory 19 for DMA prep
OSMEM19 ?= TRUE

ifeq ($(OSMEM19),TRUE)
CFLAGS += -DOSMEM19
CMHGFLAGS += -DOSMEM19
OBJS += osmem19
CMHGDEPENDS += osmem19
else
OBJS += osmem0
endif

include CModule

expasmc.AHCIDevice: hdr.AHCIDevice h.AHCIDevice
	${HDR2H} hdr.AHCIDevice ${C_EXP_HDR:.h=}.h.AHCIDevice
	FAppend ${C_EXP_HDR:.h=}.h.AHCIDevice h.AHCIDevice ${C_EXP_HDR:.h=}.h.AHCIDevice

# Dynamic dependencies:
o.coroutine: s.coroutine
o.coroutine: <Hdr$Dir>.Global.ListOpts
o.coroutine: <Hdr$Dir>.Global.Macros
o.coroutine: <Hdr$Dir>.Global.CPU.Generic32
o.coroutine: Hdr:Machine.<Machine>
o.coroutine: Hdr:Machine.Machine
o.command:	c.command
o.command:	C:h.swis
o.command:	C:h.kernel
o.command:	C:Global.h.NewErrors
o.command:	C:Interface.h.ATA
o.command:	h.command
o.command:	C:h.kernel
o.command:	h.globals
o.command:	C:h.kernel
o.command:	C:Global.h.HALDevice
o.command:	C:Interface.h.AHCIDevice
o.command:	C:Global.h.HALDevice
o.command:	C:SyncLib.h.synclib
o.command:	C:SyncLib.h.atomic
o.command:	C:SyncLib.h.barrier
o.command:	C:SyncLib.h.cpuevent
o.command:	C:SyncLib.h.mutex
o.command:	C:SyncLib.h.spin
o.command:	C:SyncLib.h.spinrw
o.command:	h.coroutine
o.command:	h.register
o.command:	h.message
o.command:	C:h.kernel
o.command:	h.op
o.command:	h.globals
o.device:	c.device
o.device:	C:h.swis
o.device:	C:h.kernel
o.device:	C:Global.h.HALEntries
o.device:	C:Global.h.OSMisc
o.device:	C:Interface.h.ATA
o.device:	C:Interface.h.AHCIDevice
o.device:	C:Global.h.HALDevice
o.device:	C:SyncLib.h.synclib
o.device:	C:SyncLib.h.atomic
o.device:	C:SyncLib.h.barrier
o.device:	C:SyncLib.h.cpuevent
o.device:	C:SyncLib.h.mutex
o.device:	C:SyncLib.h.spin
o.device:	C:SyncLib.h.spinrw
o.device:	h.device
o.device:	h.globals
o.device:	C:h.kernel
o.device:	C:Global.h.HALDevice
o.device:	C:Interface.h.AHCIDevice
o.device:	C:SyncLib.h.synclib
o.device:	h.coroutine
o.device:	h.register
o.device:	h.register
o.device:	h.swi
o.device:	C:h.kernel
o.device:	h.globals
o.device:	h.op
o.device:	h.globals
o.device:	h.SATADriverHdr
o.device:	h.trampoline
o.fgopcb: s.fgopcb
o.globals:	c.globals
o.globals:	h.globals
o.globals:	C:h.kernel
o.globals:	C:Global.h.HALDevice
o.globals:	C:Interface.h.AHCIDevice
o.globals:	C:Global.h.HALDevice
o.globals:	C:SyncLib.h.synclib
o.globals:	C:SyncLib.h.atomic
o.globals:	C:SyncLib.h.barrier
o.globals:	C:SyncLib.h.cpuevent
o.globals:	C:SyncLib.h.mutex
o.globals:	C:SyncLib.h.spin
o.globals:	C:SyncLib.h.spinrw
o.globals:	h.coroutine
o.globals:	h.register
o.module:	c.module
o.module:	C:h.swis
o.module:	C:h.kernel
o.module:	C:Global.h.NewErrors
o.module:	C:Global.h.RISCOS
o.module:	C:Global.h.Services
o.module:	C:Interface.h.ATA
o.module:	h.SATADriverHdr
o.module:	h.command
o.module:	C:h.kernel
o.module:	h.device
o.module:	h.globals
o.module:	C:h.kernel
o.module:	C:Global.h.HALDevice
o.module:	C:Interface.h.AHCIDevice
o.module:	C:Global.h.HALDevice
o.module:	C:SyncLib.h.synclib
o.module:	C:SyncLib.h.atomic
o.module:	C:SyncLib.h.barrier
o.module:	C:SyncLib.h.cpuevent
o.module:	C:SyncLib.h.mutex
o.module:	C:SyncLib.h.spin
o.module:	C:SyncLib.h.spinrw
o.module:	h.coroutine
o.module:	h.register
o.module:	h.globals
o.module:	h.message
o.module:	C:h.kernel
o.module:	h.swi
o.module:	C:h.kernel
o.module:	h.globals
o.module:	h.op
o.module:	h.globals
o.message:	c.message
o.message:	C:h.kernel
o.message:	C:h.swis
o.message:	h.globals
o.message:	C:h.kernel
o.message:	C:Global.h.HALDevice
o.message:	C:Interface.h.AHCIDevice
o.message:	C:Global.h.HALDevice
o.message:	C:SyncLib.h.synclib
o.message:	C:SyncLib.h.atomic
o.message:	C:SyncLib.h.barrier
o.message:	C:SyncLib.h.cpuevent
o.message:	C:SyncLib.h.mutex
o.message:	C:SyncLib.h.spin
o.message:	C:SyncLib.h.spinrw
o.message:	h.coroutine
o.message:	h.register
o.message:	h.message
o.message:	C:h.kernel
o.op:	c.op
o.op:	C:h.swis
o.op:	C:h.kernel
o.op:	C:Global.h.NewErrors
o.op:	C:Interface.h.ATA
o.op:	C:SyncLib.h.synclib
o.op:	C:SyncLib.h.atomic
o.op:	C:SyncLib.h.barrier
o.op:	C:SyncLib.h.cpuevent
o.op:	C:SyncLib.h.mutex
o.op:	C:SyncLib.h.spin
o.op:	C:SyncLib.h.spinrw
o.op:	h.coroutine
o.op:	h.globals
o.op:	C:h.kernel
o.op:	C:Global.h.HALDevice
o.op:	C:Interface.h.AHCIDevice
o.op:	C:Global.h.HALDevice
o.op:	C:SyncLib.h.synclib
o.op:	h.coroutine
o.op:	h.register
o.op:	h.message
o.op:	C:h.kernel
o.op:	h.op
o.op:	h.globals
o.op:	h.register
o.op:	h.swi
o.op:	C:h.kernel
o.op:	h.globals
o.op:	h.op
o.op:	h.util
o.op:	C:h.kernel
o.op:	h.globals
o.op:	h.dmaprep
o.op:	h.op
o.swi:	c.swi
o.swi:	C:h.swis
o.swi:	C:h.kernel
o.swi:	C:Global.h.NewErrors
o.swi:	C:Interface.h.ATA
o.swi:	h.globals
o.swi:	C:h.kernel
o.swi:	C:Global.h.HALDevice
o.swi:	C:Interface.h.AHCIDevice
o.swi:	C:Global.h.HALDevice
o.swi:	C:SyncLib.h.synclib
o.swi:	C:SyncLib.h.atomic
o.swi:	C:SyncLib.h.barrier
o.swi:	C:SyncLib.h.cpuevent
o.swi:	C:SyncLib.h.mutex
o.swi:	C:SyncLib.h.spin
o.swi:	C:SyncLib.h.spinrw
o.swi:	h.coroutine
o.swi:	h.register
o.swi:	h.message
o.swi:	C:h.kernel
o.swi:	h.register
o.swi:	h.swi
o.swi:	C:h.kernel
o.swi:	h.globals
o.swi:	h.op
o.swi:	h.globals
o.swi:	h.util
o.swi:	C:h.kernel
o.swi:	h.globals
o.trampoline: s.trampoline
o.trampoline: <Hdr$Dir>.Global.ListOpts
o.trampoline: <Hdr$Dir>.Global.Macros
o.trampoline: <Hdr$Dir>.Interface.HALDevice
o.util:	c.util
o.util:	C:h.swis
o.util:	C:h.kernel
o.util:	C:Global.h.HALEntries
o.util:	C:Global.h.NewErrors
o.util:	C:Interface.h.ATA
o.util:	C:SyncLib.h.spinrw
o.util:	h.message
o.util:	C:h.kernel
o.util:	h.util
o.util:	C:h.kernel
o.util:	h.globals
o.util:	C:h.kernel
o.util:	C:Global.h.HALDevice
o.util:	C:Interface.h.AHCIDevice
o.util:	C:Global.h.HALDevice
o.util:	C:SyncLib.h.synclib
o.util:	C:SyncLib.h.atomic
o.util:	C:SyncLib.h.barrier
o.util:	C:SyncLib.h.cpuevent
o.util:	C:SyncLib.h.mutex
o.util:	C:SyncLib.h.spin
o.util:	C:SyncLib.h.spinrw
o.util:	h.coroutine
o.util:	h.register
o.osmem19:	c.osmem19
o.osmem19:	C:h.kernel
o.osmem19:	C:h.swis
o.osmem19:	C:Global.h.OSMem
o.osmem19:	C:Global.h.NewErrors
o.osmem19:	C:Interface.h.ATA
o.osmem19:	h.globals
o.osmem19:	C:h.kernel
o.osmem19:	C:Global.h.HALDevice
o.osmem19:	C:Interface.h.AHCIDevice
o.osmem19:	C:Global.h.HALDevice
o.osmem19:	C:SyncLib.h.synclib
o.osmem19:	C:SyncLib.h.atomic
o.osmem19:	C:SyncLib.h.barrier
o.osmem19:	C:SyncLib.h.cpuevent
o.osmem19:	C:SyncLib.h.mutex
o.osmem19:	C:SyncLib.h.spin
o.osmem19:	C:SyncLib.h.spinrw
o.osmem19:	h.coroutine
o.osmem19:	h.register
o.osmem19:	h.dmaprep
o.osmem19:	h.op
o.osmem19:	h.globals
o.osmem19:	h.message
o.osmem19:	C:h.kernel
o.osmem19:	h.SATADriverHdr
h.SATADriverHdr:	cmhg.SATADriverHdr
h.SATADriverHdr:	C:Global.h.Services
h.SATADriverHdr:	VersionNum
o.SATADriverHdr:	cmhg.SATADriverHdr
o.SATADriverHdr:	C:Global.h.Services
o.SATADriverHdr:	VersionNum
