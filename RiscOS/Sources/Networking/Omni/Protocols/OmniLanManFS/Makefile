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
# Makefile for LanManFS
#

COMPONENT    = LanManFS
OBJS         = Xlate Transact Stats SMB RPC Printers Omni NetBIOS NBIP \
               NameCache Logon LLC LanMan CoreFn buflib Attr \
               Interface Auth md5c md4c
CINCLUDES    = ${TCPIPINC}
HDRS         =
CMHGFILE     = LanMan_MH
CMHGDEPENDS  = LanMan LLC Logon NBIP Omni CoreFn
LIBS         = ${NET5LIBS} ${ASMUTILS}
RES_PATH     = ThirdParty.OmniClient
CDEFINES     = -DLONGNAMES ${OPTIONS}
CFLAGS       = ${C_NOWARN_NON_ANSI_INCLUDES}
CDFLAGS      = -DDEBUG -DDEBUGLIB -DTRACE -Dprintf=module_printf
ROMCDEFINES  = -DROM
CMHGDEFINES  = ${OPTIONS}
ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif
# Carry our own ThirdParty resources, don't put them in the Messages module
CUSTOMRES    = no
RESDIR       = ${MERGEDRDIR}
OBJS        += ${RES_OBJ}
INSTRES_FILES = ROM.Sprites
INSTRES_VERSION = Messages

include CModule

# Dynamic dependencies:
o.Xlate:	c.Xlate
o.Xlate:	C:h.swis
o.Xlate:	C:h.kernel
o.Xlate:	C:Interface.h.MimeMap
o.Xlate:	h.stdtypes
o.Xlate:	C:DebugLib.h.DebugLib
o.Xlate:	TCPIPLibs:sys.h.types
o.Xlate:	TCPIPLibs:sys.h.cdefs
o.Xlate:	TCPIPLibs:machine.h.endian
o.Xlate:	TCPIPLibs:machine.h.ansi
o.Xlate:	TCPIPLibs:machine.h.types
o.Xlate:	h.LanMan
o.Xlate:	h.Xlate
o.Xlate:	h.SMB
o.Xlate:	h.Attr
o.Xlate:	h.Omni
o.Xlate:	h.LMVars
o.Xlate:	h.SMB
o.Xlate:	h.Transact
o.Xlate:	h.NameCache
o.Transact:	c.Transact
o.Transact:	C:h.kernel
o.Transact:	h.stdtypes
o.Transact:	C:DebugLib.h.DebugLib
o.Transact:	TCPIPLibs:sys.h.types
o.Transact:	TCPIPLibs:sys.h.cdefs
o.Transact:	TCPIPLibs:machine.h.endian
o.Transact:	TCPIPLibs:machine.h.ansi
o.Transact:	TCPIPLibs:machine.h.types
o.Transact:	h.LanMan
o.Transact:	h.SMB
o.Transact:	h.Transact
o.Stats:	c.Stats
o.Stats:	h.stdtypes
o.Stats:	C:DebugLib.h.DebugLib
o.Stats:	TCPIPLibs:sys.h.types
o.Stats:	TCPIPLibs:sys.h.cdefs
o.Stats:	TCPIPLibs:machine.h.endian
o.Stats:	TCPIPLibs:machine.h.ansi
o.Stats:	TCPIPLibs:machine.h.types
o.Stats:	h.Stats
o.SMB:	c.SMB
o.SMB:	C:h.kernel
o.SMB:	C:h.swis
o.SMB:	h.stdtypes
o.SMB:	C:DebugLib.h.DebugLib
o.SMB:	TCPIPLibs:sys.h.types
o.SMB:	TCPIPLibs:sys.h.cdefs
o.SMB:	TCPIPLibs:machine.h.endian
o.SMB:	TCPIPLibs:machine.h.ansi
o.SMB:	TCPIPLibs:machine.h.types
o.SMB:	h.LanMan
o.SMB:	h.BufLib
o.SMB:	h.NetBIOS
o.SMB:	h.SMB
o.SMB:	h.Transact
o.SMB:	h.NameCache
o.SMB:	h.LMVars
o.SMB:	h.Attr
o.SMB:	h.Xlate
o.SMB:	h.SMB
o.SMB:	h.Auth
o.SMB:	h.SMBFind
o.RPC:	c.RPC
o.RPC:	C:h.kernel
o.RPC:	h.stdtypes
o.RPC:	C:DebugLib.h.DebugLib
o.RPC:	TCPIPLibs:sys.h.types
o.RPC:	TCPIPLibs:sys.h.cdefs
o.RPC:	TCPIPLibs:machine.h.endian
o.RPC:	TCPIPLibs:machine.h.ansi
o.RPC:	TCPIPLibs:machine.h.types
o.RPC:	h.LanMan
o.RPC:	h.BufLib
o.RPC:	h.NetBIOS
o.RPC:	h.SMB
o.RPC:	h.Xlate
o.RPC:	h.SMB
o.RPC:	h.Omni
o.RPC:	h.LMVars
o.RPC:	h.RPC
o.Printers:	c.Printers
o.Printers:	C:h.kernel
o.Printers:	C:h.swis
o.Printers:	h.stdtypes
o.Printers:	C:DebugLib.h.DebugLib
o.Printers:	TCPIPLibs:sys.h.types
o.Printers:	TCPIPLibs:sys.h.cdefs
o.Printers:	TCPIPLibs:machine.h.endian
o.Printers:	TCPIPLibs:machine.h.ansi
o.Printers:	TCPIPLibs:machine.h.types
o.Printers:	h.Printers
o.Printers:	h.SMB
o.Printers:	h.Omni
o.Omni:	c.Omni
o.Omni:	C:h.kernel
o.Omni:	C:h.swis
o.Omni:	C:Global.h.ModHand
o.Omni:	h.stdtypes
o.Omni:	C:DebugLib.h.DebugLib
o.Omni:	TCPIPLibs:sys.h.types
o.Omni:	TCPIPLibs:sys.h.cdefs
o.Omni:	TCPIPLibs:machine.h.endian
o.Omni:	TCPIPLibs:machine.h.ansi
o.Omni:	TCPIPLibs:machine.h.types
o.Omni:	h.SMB
o.Omni:	h.RPC
o.Omni:	h.LanMan
o.Omni:	h.Printers
o.Omni:	VersionNum
o.Omni:	h.Xlate
o.Omni:	h.SMB
o.Omni:	h.LMVars
o.Omni:	h.Stats
o.Omni:	h.Logon
o.Omni:	h.Omni
o.Omni:	h.LanMan_MH
o.NetBIOS:	c.NetBIOS
o.NetBIOS:	C:h.kernel
o.NetBIOS:	h.stdtypes
o.NetBIOS:	C:DebugLib.h.DebugLib
o.NetBIOS:	TCPIPLibs:sys.h.types
o.NetBIOS:	TCPIPLibs:sys.h.cdefs
o.NetBIOS:	TCPIPLibs:machine.h.endian
o.NetBIOS:	TCPIPLibs:machine.h.ansi
o.NetBIOS:	TCPIPLibs:machine.h.types
o.NetBIOS:	h.LanMan
o.NetBIOS:	h.BufLib
o.NetBIOS:	h.Stats
o.NetBIOS:	h.LLC
o.NetBIOS:	h.NetBIOS
o.NetBIOS:	h.LMVars
o.NBIP:	c.NBIP
o.NBIP:	C:h.kernel
o.NBIP:	C:h.swis
o.NBIP:	C:AsmUtils.h.callbacks
o.NBIP:	h.stdtypes
o.NBIP:	C:DebugLib.h.DebugLib
o.NBIP:	TCPIPLibs:sys.h.types
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	TCPIPLibs:machine.h.endian
o.NBIP:	TCPIPLibs:machine.h.ansi
o.NBIP:	TCPIPLibs:machine.h.types
o.NBIP:	h.LanMan
o.NBIP:	h.BufLib
o.NBIP:	h.TCPIP
o.NBIP:	TCPIPLibs:sys.h.socket
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	TCPIPLibs:sys.h.errno
o.NBIP:	C:h.kernel
o.NBIP:	TCPIPLibs:sys.h.sockio
o.NBIP:	TCPIPLibs:sys.h.ioccom
o.NBIP:	TCPIPLibs:sys.h.filio
o.NBIP:	TCPIPLibs:sys.h.ioccom
o.NBIP:	TCPIPLibs:net.h.if
o.NBIP:	TCPIPLibs:sys.h.time
o.NBIP:	TCPIPLibs:sys.h.types
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	TCPIPLibs:h.inetlib
o.NBIP:	TCPIPLibs:sys.h.types
o.NBIP:	TCPIPLibs:netinet.h.in
o.NBIP:	TCPIPLibs:h.socklib
o.NBIP:	TCPIPLibs:sys.h.types
o.NBIP:	TCPIPLibs:sys.h.socket
o.NBIP:	TCPIPLibs:sys.h.stat
o.NBIP:	TCPIPLibs:sys.h.time
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	TCPIPLibs:sys.h.time
o.NBIP:	TCPIPLibs:sys.h.uio
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	C:h.kernel
o.NBIP:	TCPIPLibs:h.netdb
o.NBIP:	TCPIPLibs:sys.h.cdefs
o.NBIP:	h.NetBIOS
o.NBIP:	h.Xlate
o.NBIP:	h.SMB
o.NBIP:	h.Stats
o.NBIP:	h.LMVars
o.NBIP:	h.NBIP
o.NBIP:	h.LanMan_MH
o.NameCache:	c.NameCache
o.NameCache:	C:h.kernel
o.NameCache:	h.stdtypes
o.NameCache:	C:DebugLib.h.DebugLib
o.NameCache:	TCPIPLibs:sys.h.types
o.NameCache:	TCPIPLibs:sys.h.cdefs
o.NameCache:	TCPIPLibs:machine.h.endian
o.NameCache:	TCPIPLibs:machine.h.ansi
o.NameCache:	TCPIPLibs:machine.h.types
o.NameCache:	h.NameCache
o.Logon:	c.Logon
o.Logon:	C:h.kernel
o.Logon:	C:h.swis
o.Logon:	h.stdtypes
o.Logon:	C:DebugLib.h.DebugLib
o.Logon:	TCPIPLibs:sys.h.types
o.Logon:	TCPIPLibs:sys.h.cdefs
o.Logon:	TCPIPLibs:machine.h.endian
o.Logon:	TCPIPLibs:machine.h.ansi
o.Logon:	TCPIPLibs:machine.h.types
o.Logon:	h.LanMan
o.Logon:	h.LMVars
o.Logon:	h.Omni
o.Logon:	h.RPC
o.Logon:	h.Logon
o.Logon:	h.Xlate
o.Logon:	h.SMB
o.Logon:	VersionNum
o.Logon:	h.LanMan_MH
o.LLC:	c.LLC
o.LLC:	C:h.kernel
o.LLC:	C:h.swis
o.LLC:	TCPIPLibs:sys.h.dcistructs
o.LLC:	C:AsmUtils.h.callbacks
o.LLC:	h.stdtypes
o.LLC:	C:DebugLib.h.DebugLib
o.LLC:	TCPIPLibs:sys.h.types
o.LLC:	TCPIPLibs:sys.h.cdefs
o.LLC:	TCPIPLibs:machine.h.endian
o.LLC:	TCPIPLibs:machine.h.ansi
o.LLC:	TCPIPLibs:machine.h.types
o.LLC:	h.Mbuf
o.LLC:	h.BufLib
o.LLC:	h.LLC
o.LLC:	h.Stats
o.LLC:	h.LanMan
o.LLC:	h.LanMan_MH
o.LanMan:	c.LanMan
o.LanMan:	C:h.kernel
o.LanMan:	C:h.swis
o.LanMan:	C:AsmUtils.h.rminfo
o.LanMan:	C:Global.h.Services
o.LanMan:	C:Global.h.FileTypes
o.LanMan:	C:Global.h.NewErrors
o.LanMan:	C:Interface.h.HighFSI
o.LanMan:	TCPIPLibs:sys.h.dcistructs
o.LanMan:	TCPIPLibs:sys.h.types
o.LanMan:	TCPIPLibs:sys.h.cdefs
o.LanMan:	TCPIPLibs:machine.h.endian
o.LanMan:	TCPIPLibs:machine.h.ansi
o.LanMan:	TCPIPLibs:machine.h.types
o.LanMan:	TCPIPLibs:netinet.h.in
o.LanMan:	TCPIPLibs:arpa.h.inet
o.LanMan:	TCPIPLibs:sys.h.cdefs
o.LanMan:	h.stdtypes
o.LanMan:	C:DebugLib.h.DebugLib
o.LanMan:	TCPIPLibs:sys.h.types
o.LanMan:	h.LanMan
o.LanMan:	h.LMVars
o.LanMan:	h.Params
o.LanMan:	h.CoreFn
o.LanMan:	h.BufLib
o.LanMan:	h.NetBIOS
o.LanMan:	h.SMB
o.LanMan:	h.Xlate
o.LanMan:	h.SMB
o.LanMan:	VersionNum
o.LanMan:	h.Omni
o.LanMan:	h.Printers
o.LanMan:	h.RPC
o.LanMan:	h.Stats
o.LanMan:	h.Logon
o.LanMan:	h.LanMan_MH
o.CoreFn:	c.CoreFn
o.CoreFn:	C:h.kernel
o.CoreFn:	C:h.swis
o.CoreFn:	h.stdtypes
o.CoreFn:	C:DebugLib.h.DebugLib
o.CoreFn:	TCPIPLibs:sys.h.types
o.CoreFn:	TCPIPLibs:sys.h.cdefs
o.CoreFn:	TCPIPLibs:machine.h.endian
o.CoreFn:	TCPIPLibs:machine.h.ansi
o.CoreFn:	TCPIPLibs:machine.h.types
o.CoreFn:	h.LanMan
o.CoreFn:	h.Params
o.CoreFn:	h.CoreFn
o.CoreFn:	h.Xlate
o.CoreFn:	h.SMB
o.CoreFn:	h.Attr
o.CoreFn:	h.SMB
o.CoreFn:	h.Omni
o.CoreFn:	h.Transact
o.CoreFn:	h.NameCache
o.CoreFn:	h.SMBFind
o.CoreFn:	h.LanMan_MH
h.LanMan_MH:	cmhg.LanMan_MH
h.LanMan_MH:	VersionNum
h.LanMan_MH:	C:Global.h.Services
o.buflib:	c.buflib
o.buflib:	C:h.kernel
o.buflib:	C:h.swis
o.buflib:	h.stdtypes
o.buflib:	C:DebugLib.h.DebugLib
o.buflib:	TCPIPLibs:sys.h.types
o.buflib:	TCPIPLibs:sys.h.cdefs
o.buflib:	TCPIPLibs:machine.h.endian
o.buflib:	TCPIPLibs:machine.h.ansi
o.buflib:	TCPIPLibs:machine.h.types
o.buflib:	h.Mbuf
o.buflib:	h.Stats
o.buflib:	h.BufLib
o.Attr:	c.Attr
o.Attr:	C:h.kernel
o.Attr:	C:h.swis
o.Attr:	C:Interface.h.MimeMap
o.Attr:	C:Global.h.FileTypes
o.Attr:	h.stdtypes
o.Attr:	C:DebugLib.h.DebugLib
o.Attr:	TCPIPLibs:sys.h.types
o.Attr:	TCPIPLibs:sys.h.cdefs
o.Attr:	TCPIPLibs:machine.h.endian
o.Attr:	TCPIPLibs:machine.h.ansi
o.Attr:	TCPIPLibs:machine.h.types
o.Attr:	h.Attr
o.Attr:	h.SMB
o.Attr:	h.Xlate
o.Attr:	h.SMB
o.Attr:	h.Omni
o.Attr:	h.LanMan
o.Attr:	h.LMVars
o.Interface: s.Interface
o.Interface: Hdr:ListOpts
o.Interface: Hdr:Macros
o.Interface: Hdr:System
o.Interface: Hdr:SWIs
o.Interface: Hdr:CPU.Arch
o.Interface: Hdr:Machine.<Machine>
o.Interface: Hdr:Machine.Machine
o.Interface: Hdr:CPU.Generic26
o.Interface: Hdr:CPU.Generic32
o.Interface: Hdr:IO.GenericIO
o.Interface: Hdr:RISCOS
o.Interface: Hdr:APCS.<APCS>
o.Interface: Hdr:APCS.Common
o.Interface: Hdr:ResourceFS
o.Auth:	c.Auth
o.Auth:	C:DebugLib.h.DebugLib
o.Auth:	h.Auth
o.Auth:	h.global
o.Auth:	h.md4
o.Auth:	h.md5
o.md5c:	c.md5c
o.md5c:	h.global
o.md5c:	h.md5
o.md4c:	c.md4c
o.md4c:	h.global
o.md4c:	h.md4
o.LanMan_MH:	cmhg.LanMan_MH
o.LanMan_MH:	VersionNum
o.LanMan_MH:	C:Global.h.Services
