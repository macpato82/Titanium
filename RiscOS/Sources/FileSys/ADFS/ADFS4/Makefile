# Makefile for ADFS

COMPONENT   = ADFS
ASMHDRS     = ADFS ADFSErr
ASMCHDRS    = ADFS ADFSErr
HDRS        =
CMHGFILE    = ADFSHdr
CMHGDEPENDS = command module
OBJS        = ata command discop drive globals message miscop module swi
LIBS        = ${SYNCLIB} ${ASMUTILS}
ROMCDEFINES = -DROM_MODULE
ASM2TXT     = ADFSErr hdr

#CFLAGS     += -DDEBUG_ENABLED

#CFLAGS     += -DDEBUG_ENABLED -DDEBUGLIB -DDEBUGLIB_NOBRACKETS
#LIBS       += ${DEBUGLIBS} ${NET5LIBS}

include CModule

# Dynamic dependencies:
o.ata: s.ata
o.ata: Hdr:ListOpts
o.ata: Hdr:Macros
o.ata: Hdr:System
o.ata: Hdr:SWIs
o.ata: Hdr:CPU.Arch
o.ata: Hdr:Machine.<Machine>
o.ata: Hdr:Machine.Machine
o.ata: Hdr:CPU.Generic26
o.ata: Hdr:CPU.Generic32
o.ata: Hdr:IO.GenericIO
o.ata: Hdr:RISCOS
o.ata: Hdr:FSNumbers
o.ata: Hdr:NewErrors
o.ata: Hdr:ATA
o.ata: Hdr:APCS.<APCS>
o.ata: Hdr:APCS.Common
o.command:	c.command
o.command:	C:h.swis
o.command:	C:h.kernel
o.command:	C:Global.h.CMOS
o.command:	C:Global.h.FSNumbers
o.command:	C:Global.h.OsBytes
o.command:	C:Global.h.RISCOS
o.command:	C:Interface.h.HighFSI
o.command:	h.ADFSHdr
o.command:	h.command
o.command:	C:h.kernel
o.command:	h.globals
o.command:	C:h.kernel
o.command:	C:h.swis
o.command:	C:SyncLib.h.spin
o.command:	C:SyncLib.h.spinrw
o.command:	h.message
o.command:	C:h.kernel
o.discop:	c.discop
o.discop:	C:h.swis
o.discop:	C:h.kernel
o.discop:	C:Global.h.NewErrors
o.discop:	C:Interface.h.FileCore
o.discop:	C:Interface.h.FileCoreErr
o.discop:	C:Interface.h.ADFSErr
o.discop:	C:Interface.h.ATA
o.discop:	h.ata
o.discop:	C:h.kernel
o.discop:	h.discop
o.discop:	h.globals
o.discop:	C:h.kernel
o.discop:	C:h.swis
o.discop:	C:SyncLib.h.spin
o.discop:	C:SyncLib.h.spinrw
o.discop:	h.globals
o.discop:	h.message
o.discop:	C:h.kernel
o.drive:	c.drive
o.drive:	C:Global.h.CMOS
o.drive:	C:Global.h.OsBytes
o.drive:	C:Interface.h.ADFS
o.drive:	h.drive
o.drive:	h.globals
o.drive:	C:h.kernel
o.drive:	C:h.swis
o.drive:	C:SyncLib.h.spin
o.drive:	C:SyncLib.h.spinrw
o.drive:	h.swi
o.drive:	C:h.kernel
o.globals:	c.globals
o.globals:	h.globals
o.globals:	C:h.kernel
o.globals:	C:h.swis
o.globals:	C:SyncLib.h.spin
o.globals:	C:SyncLib.h.spinrw
o.message:	c.message
o.message:	C:h.kernel
o.message:	C:h.swis
o.message:	h.globals
o.message:	C:h.kernel
o.message:	C:h.swis
o.message:	C:SyncLib.h.spin
o.message:	C:SyncLib.h.spinrw
o.message:	h.message
o.message:	C:h.kernel
o.miscop:	c.miscop
o.miscop:	C:Interface.h.ATA
o.miscop:	C:Interface.h.FileCore
o.miscop:	C:Interface.h.FileCoreErr
o.miscop:	h.discop
o.miscop:	h.globals
o.miscop:	C:h.kernel
o.miscop:	C:h.swis
o.miscop:	C:SyncLib.h.spin
o.miscop:	C:SyncLib.h.spinrw
o.miscop:	h.miscop
o.miscop:	h.globals
o.module:	c.module
o.module:	C:h.swis
o.module:	C:h.kernel
o.module:	C:Global.h.CMOS
o.module:	C:Global.h.FSNumbers
o.module:	C:Global.h.OsBytes
o.module:	C:Global.h.ModHand
o.module:	C:Global.h.RISCOS
o.module:	C:Global.h.SWIs
o.module:	C:Interface.h.FileCore
o.module:	C:Interface.h.FileCoreErr
o.module:	C:Interface.h.ADFSErr
o.module:	C:Interface.h.ATA
o.module:	C:SyncLib.h.synclib
o.module:	C:SyncLib.h.atomic
o.module:	C:SyncLib.h.barrier
o.module:	C:SyncLib.h.cpuevent
o.module:	C:SyncLib.h.mutex
o.module:	C:SyncLib.h.spin
o.module:	C:SyncLib.h.spinrw
o.module:	C:AsmUtils.h.rminfo
o.module:	h.ADFSHdr
o.module:	h.command
o.module:	C:h.kernel
o.module:	h.discop
o.module:	h.globals
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	C:SyncLib.h.spin
o.module:	C:SyncLib.h.spinrw
o.module:	h.drive
o.module:	h.globals
o.module:	h.message
o.module:	C:h.kernel
o.module:	h.miscop
o.module:	h.globals
o.module:	h.swi
o.module:	C:h.kernel
h.ADFSHdr:	cmhg.ADFSHdr
h.ADFSHdr:	VersionNum
o.swi:	c.swi
o.swi:	C:h.kernel
o.swi:	C:Global.h.NewErrors
o.swi:	C:Interface.h.ADFS
o.swi:	C:Interface.h.ADFSErr
o.swi:	C:Interface.h.ATA
o.swi:	C:SyncLib.h.spinrw
o.swi:	h.ata
o.swi:	C:h.kernel
o.swi:	h.discop
o.swi:	h.globals
o.swi:	C:h.kernel
o.swi:	C:h.swis
o.swi:	C:SyncLib.h.spin
o.swi:	C:SyncLib.h.spinrw
o.swi:	h.globals
o.swi:	h.message
o.swi:	C:h.kernel
o.swi:	h.swi
o.swi:	C:h.kernel
o.ADFSHdr:	cmhg.ADFSHdr
o.ADFSHdr:	VersionNum
