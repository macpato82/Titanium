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
# Makefile for DOSFS
#

COMPONENT    = DOSFS
OBJS         = DOSFS DOSFSctl DOSclusters DOSdirs DOSnaming Helpers MsgTrans \
               OpsArgs OpsFind OpsFunc OpsFile OpsGetPut \
               Statics TIMEconv StaticDefs Accessors
ROM_OBJS     = ${OBJS} init
CDEFINES     = -DNONFLOPPIES
ROMCDEFINES  = -DROM
RES_AREA     = dosfs_msgarea
CMHGDEFINES  = ${CDEFINES}
CMHGDEPENDS  = DOSFS MsgTrans
ASMHDRS      = DOSFS
HDRS         =
LIBS         = ${ASMUTILS}

ifeq ("${CMDHELP}","None")
CMHGDEFINES += -DNO_INTERNATIONAL_HELP
endif

include CModule

CDFLAGS     += -DDEBUGLIB

# Dynamic dependencies:
o.DOSFS:	c.DOSFS
o.DOSFS:	C:h.kernel
o.DOSFS:	C:h.swis
o.DOSFS:	C:DebugLib.h.DebugLib
o.DOSFS:	C:AsmUtils.h.rminfo
o.DOSFS:	C:Global.h.CMOS
o.DOSFS:	C:Global.h.OsBytes
o.DOSFS:	C:Global.h.FileTypes
o.DOSFS:	C:Global.h.Keyboard
o.DOSFS:	C:Global.h.Variables
o.DOSFS:	C:Global.h.Services
o.DOSFS:	C:Interface.h.HighFSI
o.DOSFS:	h.DOSFS
o.DOSFS:	h.DOSshape
o.DOSFS:	h.TIMEconv
o.DOSFS:	h.Helpers
o.DOSFS:	h.Ops
o.DOSFS:	h.MsgTrans
o.DOSFS:	h.ADFSshape
o.DOSFS:	h.DOSclusters
o.DOSFS:	h.DOSnaming
o.DOSFS:	h.DOSshape
o.DOSFS:	h.DOSdirs
o.DOSFS:	h.MultiFS
o.DOSFS:	h.Statics
o.DOSFS:	h.DOSFSHdr
o.DOSFS:	h.Accessors
o.DOSFS:	C:h.kernel
o.DOSFS:	h.DOSFS
o.DOSFS:	h.ADFSshape
o.DOSFSctl: s.DOSFSctl
o.DOSFSctl: Hdr:ListOpts
o.DOSFSctl: Hdr:Macros
o.DOSFSctl: Hdr:System
o.DOSFSctl: Hdr:SWIs
o.DOSFSctl: Hdr:CPU.Arch
o.DOSFSctl: Hdr:Machine.<Machine>
o.DOSFSctl: Hdr:Machine.Machine
o.DOSFSctl: Hdr:CPU.Generic26
o.DOSFSctl: Hdr:CPU.Generic32
o.DOSFSctl: Hdr:IO.GenericIO
o.DOSFSctl: Hdr:RISCOS
o.DOSFSctl: Hdr:ModHand
o.DOSFSctl: Hdr:HostFS
o.DOSFSctl: Hdr:Debug
o.DOSFSctl: hdr:NdrDebug
o.DOSFSctl: Hdr:DDVMacros
o.DOSFSctl: Hdr:APCS.<APCS>
o.DOSFSctl: Hdr:APCS.Common
o.DOSFSctl: s.MFSmacros
o.DOSclusters:	c.DOSclusters
o.DOSclusters:	C:h.kernel
o.DOSclusters:	C:h.swis
o.DOSclusters:	C:Interface.h.HighFSI
o.DOSclusters:	C:DebugLib.h.DebugLib
o.DOSclusters:	h.DOSFS
o.DOSclusters:	h.DOSshape
o.DOSclusters:	h.TIMEconv
o.DOSclusters:	h.Helpers
o.DOSclusters:	h.MsgTrans
o.DOSclusters:	h.Ops
o.DOSclusters:	h.DOSclusters
o.DOSclusters:	h.DOSnaming
o.DOSclusters:	h.DOSdirs
o.DOSdirs:	c.DOSdirs
o.DOSdirs:	C:h.kernel
o.DOSdirs:	C:Interface.h.HighFSI
o.DOSdirs:	C:DebugLib.h.DebugLib
o.DOSdirs:	h.DOSFS
o.DOSdirs:	h.DOSshape
o.DOSdirs:	h.TIMEconv
o.DOSdirs:	h.Helpers
o.DOSdirs:	h.MsgTrans
o.DOSdirs:	h.DOSclusters
o.DOSdirs:	h.DOSnaming
o.DOSdirs:	h.DOSshape
o.DOSdirs:	h.DOSdirs
o.DOSnaming:	c.DOSnaming
o.DOSnaming:	C:h.kernel
o.DOSnaming:	C:DebugLib.h.DebugLib
o.DOSnaming:	h.DOSFS
o.DOSnaming:	h.DOSshape
o.DOSnaming:	h.TIMEconv
o.DOSnaming:	h.ADFSshape
o.DOSnaming:	h.Helpers
o.DOSnaming:	h.MsgTrans
o.DOSnaming:	h.DOSnaming
o.DOSnaming:	h.DOSshape
o.DOSnaming:	h.DOSdirs
o.Helpers:	c.Helpers
o.Helpers:	C:h.kernel
o.Helpers:	C:h.swis
o.Helpers:	C:Global.h.FileTypes
o.Helpers:	C:Interface.h.MimeMap
o.Helpers:	C:Interface.h.HighFSI
o.Helpers:	C:DebugLib.h.DebugLib
o.Helpers:	h.DOSFS
o.Helpers:	h.DOSshape
o.Helpers:	h.TIMEconv
o.Helpers:	h.ADFSshape
o.Helpers:	h.Helpers
o.Helpers:	h.MsgTrans
o.Helpers:	h.DOSnaming
o.Helpers:	h.DOSclusters
o.Helpers:	h.DOSshape
o.MsgTrans:	c.MsgTrans
o.MsgTrans:	C:h.kernel
o.MsgTrans:	C:h.swis
o.MsgTrans:	C:DebugLib.h.DebugLib
o.MsgTrans:	C:Global.h.FSNumbers
o.MsgTrans:	h.DOSFSHdr
o.MsgTrans:	h.MsgTrans
h.DOSFSHdr:	cmhg.DOSFSHdr
h.DOSFSHdr:	VersionNum
o.OpsArgs:	c.OpsArgs
o.OpsArgs:	C:DebugLib.h.DebugLib
o.OpsArgs:	h.DOSFS
o.OpsArgs:	h.DOSshape
o.OpsArgs:	h.DOSshape
o.OpsArgs:	h.Ops
o.OpsArgs:	h.DOSclusters
o.OpsFind:	c.OpsFind
o.OpsFind:	C:h.kernel
o.OpsFind:	C:h.swis
o.OpsFind:	C:Interface.h.HighFSI
o.OpsFind:	C:Interface.h.LowFSI
o.OpsFind:	C:DebugLib.h.DebugLib
o.OpsFind:	h.DOSFS
o.OpsFind:	h.DOSshape
o.OpsFind:	h.TIMEconv
o.OpsFind:	h.ADFSshape
o.OpsFind:	h.Helpers
o.OpsFind:	h.Ops
o.OpsFind:	h.MsgTrans
o.OpsFind:	h.DOSclusters
o.OpsFind:	h.DOSnaming
o.OpsFind:	h.DOSshape
o.OpsFind:	h.DOSdirs
o.OpsFunc:	c.OpsFunc
o.OpsFunc:	C:h.kernel
o.OpsFunc:	C:h.swis
o.OpsFunc:	C:Interface.h.HighFSI
o.OpsFunc:	C:Interface.h.FileCore
o.OpsFunc:	C:DebugLib.h.DebugLib
o.OpsFunc:	h.DOSFS
o.OpsFunc:	h.DOSshape
o.OpsFunc:	h.TIMEconv
o.OpsFunc:	h.Helpers
o.OpsFunc:	h.Ops
o.OpsFunc:	h.MsgTrans
o.OpsFunc:	h.DOSclusters
o.OpsFunc:	h.DOSnaming
o.OpsFunc:	h.DOSshape
o.OpsFunc:	h.DOSdirs
o.OpsFunc:	h.Accessors
o.OpsFunc:	C:h.kernel
o.OpsFunc:	h.DOSFS
o.OpsFunc:	h.ADFSshape
o.OpsFile:	c.OpsFile
o.OpsFile:	C:h.kernel
o.OpsFile:	C:DebugLib.h.DebugLib
o.OpsFile:	C:Interface.h.HighFSI
o.OpsFile:	h.DOSFS
o.OpsFile:	h.DOSshape
o.OpsFile:	h.TIMEconv
o.OpsFile:	h.Helpers
o.OpsFile:	h.Ops
o.OpsFile:	h.MsgTrans
o.OpsFile:	h.DOSclusters
o.OpsFile:	h.DOSnaming
o.OpsFile:	h.DOSshape
o.OpsFile:	h.DOSdirs
o.OpsGetPut:	c.OpsGetPut
o.OpsGetPut:	C:h.kernel
o.OpsGetPut:	C:DebugLib.h.DebugLib
o.OpsGetPut:	h.DOSFS
o.OpsGetPut:	h.DOSshape
o.OpsGetPut:	h.Ops
o.OpsGetPut:	h.DOSclusters
o.Statics:	c.Statics
o.Statics:	h.DOSFS
o.Statics:	h.DOSshape
o.Statics:	h.DOSshape
o.Statics:	h.MultiFS
o.Statics:	h.Statics
o.TIMEconv:	c.TIMEconv
o.TIMEconv:	C:h.kernel
o.TIMEconv:	C:h.swis
o.TIMEconv:	C:DebugLib.h.DebugLib
o.TIMEconv:	C:Global.h.FileTypes
o.TIMEconv:	C:Global.h.OsWords
o.TIMEconv:	h.DOSFS
o.TIMEconv:	h.DOSshape
o.TIMEconv:	h.TIMEconv
o.TIMEconv:	h.MsgTrans
o.TIMEconv:	h.ADFSshape
o.StaticDefs: s.StaticDefs
o.Accessors:	c.Accessors
o.Accessors:	h.Accessors
o.Accessors:	C:h.kernel
o.Accessors:	h.DOSFS
o.Accessors:	h.DOSshape
o.Accessors:	h.ADFSshape
o.Accessors:	h.MsgTrans
o.Accessors:	C:Interface.h.HighFSI
o.Accessors:	C:h.swis
o.Accessors:	C:DebugLib.h.DebugLib
o.init: s.init
o.init: Hdr:ListOpts
o.init: Hdr:Macros
o.init: Hdr:System
o.init: Hdr:SWIs
o.init: Hdr:CPU.Arch
o.init: Hdr:Machine.<Machine>
o.init: Hdr:Machine.Machine
o.init: Hdr:CPU.Generic26
o.init: Hdr:CPU.Generic32
o.init: Hdr:IO.GenericIO
o.init: Hdr:RISCOS
o.init: Hdr:MsgTrans
o.init: Hdr:FSNumbers
o.init: Hdr:NewErrors
o.DOSFSHdr:	cmhg.DOSFSHdr
o.DOSFSHdr:	VersionNum
