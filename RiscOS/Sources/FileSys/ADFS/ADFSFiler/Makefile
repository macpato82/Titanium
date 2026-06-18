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
# Makefile for ADFSFiler
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
#

COMPONENT    ?= ADFSFiler
ROM_SOURCE    = s.ADFSFiler
CUSTOMRES     = custom

ifeq (${TEMPLATES},yes)
WANTTEMPLATES = resources_templates
endif

ifeq (${COMPONENT},NVMeFiler)
SUFFIX        = N
else
ifeq (${COMPONENT},SCSIFiler)
SUFFIX        = S
else
ifeq (${COMPONENT},SDFSFiler)
SUFFIX        = SD
endif
endif
endif

ifeq (${TARGET},ThemeDefs)
CUSTOMSA      = custom
install_custom:
	${MKDIR} ${INSTDIR}.${USERIF}
	| Give the sprites for the requested theme if present
	IfThere Resources.SCSI.${USERIF} Then ${CP} Resources.SCSI.${USERIF} ${INSTDIR}.${USERIF}.SCSIFiler ${CPFLAGS}
	IfThere Resources.SDFS.${USERIF} Then ${CP} Resources.SDFS.${USERIF} ${INSTDIR}.${USERIF}.SDFSFiler ${CPFLAGS}
	@${ECHO} ${COMPONENT}: disc theme resources installed
endif

include AAsmModule

${MERGEDMSGS}::
	${MKDIR} ${MERGEDRDIR}.${TARGET}
	${TOKENCHECK} LocalRes:Messages${SUFFIX}
	${CP} LocalRes:Messages${SUFFIX} $@ ${CPFLAGS}
	IfThere LocalRes:CmdHelp${SUFFIX} Then ${TOKENCHECK} LocalRes:CmdHelp${SUFFIX}
	IfThere LocalRes:CmdHelp${SUFFIX} Then ${FAPPEND} $@ LocalRes:Messages LocalRes:CmdHelp${SUFFIX}

#
# For all:
#
resources_custom: resources_${COMPONENT} ${MERGEDMSGS} resources_mkdir
	${CP} ${MERGEDMSGS} ${RESFSDIR}.Messages ${CPFLAGS}

resources_mkdir:
	${MKDIR} ${RESFSDIR}

resources_templates:
	${CP} LocalRes:Templates ${RESFSDIR}.Templates ${CPFLAGS}

#
# For ADFSFiler: templates + merged messages, sprites are in the Wimp pool
#
resources_ADFSFiler: resources_templates
	@${NOP}

#
# For NVMeFiler: templates + merged messages, sprites are in the Wimp pool
#
resources_NVMeFiler: resources_templates
	@${NOP}

#
# For SCSIFiler: sprites + merged messages, templates shared with ADFS unless requested explicitly
#
resources_SCSIFiler: ${WANTTEMPLATES}
	${CP} Resources.SCSI.${USERIF} ${RESFSDIR}.Sprites ${CPFLAGS}

#
# For SDFSFiler: sprites + merged messages, templates shared with ADFS unless requested explicitly
#
resources_SDFSFiler: ${WANTTEMPLATES}
	${CP} Resources.SDFS.${USERIF} ${RESFSDIR}.Sprites ${CPFLAGS}

# Dynamic dependencies:
o.CortexA7.ADFSFiler: s.ADFSFiler
o.CortexA7.ADFSFiler: Hdr:ListOpts
o.CortexA7.ADFSFiler: Hdr:Macros
o.CortexA7.ADFSFiler: Hdr:System
o.CortexA7.ADFSFiler: Hdr:SWIs
o.CortexA7.ADFSFiler: Hdr:CPU.Arch
o.CortexA7.ADFSFiler: Hdr:Machine.<Machine>
o.CortexA7.ADFSFiler: Hdr:Machine.Machine
o.CortexA7.ADFSFiler: Hdr:CPU.Generic26
o.CortexA7.ADFSFiler: Hdr:CPU.Generic32
o.CortexA7.ADFSFiler: Hdr:IO.GenericIO
o.CortexA7.ADFSFiler: Hdr:RISCOS
o.CortexA7.ADFSFiler: Hdr:Services
o.CortexA7.ADFSFiler: Hdr:ModHand
o.CortexA7.ADFSFiler: Hdr:OsBytes
o.CortexA7.ADFSFiler: Hdr:CMOS
o.CortexA7.ADFSFiler: Hdr:FSNumbers
o.CortexA7.ADFSFiler: Hdr:HighFSI
o.CortexA7.ADFSFiler: Hdr:NewErrors
o.CortexA7.ADFSFiler: Hdr:Wimp
o.CortexA7.ADFSFiler: Hdr:WimpSpace
o.CortexA7.ADFSFiler: Hdr:Messages
o.CortexA7.ADFSFiler: Hdr:Sprite
o.CortexA7.ADFSFiler: Hdr:VduExt
o.CortexA7.ADFSFiler: Hdr:Variables
o.CortexA7.ADFSFiler: Hdr:Proc
o.CortexA7.ADFSFiler: Hdr:MsgTrans
o.CortexA7.ADFSFiler: Hdr:MsgMenus
o.CortexA7.ADFSFiler: Hdr:ADFS
o.CortexA7.ADFSFiler: Hdr:Territory
o.CortexA7.ADFSFiler: Hdr:FileCore
o.CortexA7.ADFSFiler: Hdr:MultiFS
o.CortexA7.ADFSFiler: Hdr:UpCall
o.CortexA7.ADFSFiler: Hdr:ResourceFS
o.CortexA7.ADFSFiler: Hdr:ShareD
o.CortexA7.ADFSFiler: Hdr:ExtraLong
o.CortexA7.ADFSFiler: Hdr:Hourglass
o.CortexA7.ADFSFiler: VersionASM
o.CortexA7.ADFSFiler: Hdr:NdrDebug
o.CortexA7.ADFSFiler: s.Format
o.CortexA7.ADFSFiler: s.Backup
o.CortexA7.SCSIFiler: s.ADFSFiler
o.CortexA7.SCSIFiler: Hdr:ListOpts
o.CortexA7.SCSIFiler: Hdr:Macros
o.CortexA7.SCSIFiler: Hdr:System
o.CortexA7.SCSIFiler: Hdr:SWIs
o.CortexA7.SCSIFiler: Hdr:CPU.Arch
o.CortexA7.SCSIFiler: Hdr:Machine.<Machine>
o.CortexA7.SCSIFiler: Hdr:Machine.Machine
o.CortexA7.SCSIFiler: Hdr:CPU.Generic26
o.CortexA7.SCSIFiler: Hdr:CPU.Generic32
o.CortexA7.SCSIFiler: Hdr:IO.GenericIO
o.CortexA7.SCSIFiler: Hdr:RISCOS
o.CortexA7.SCSIFiler: Hdr:Services
o.CortexA7.SCSIFiler: Hdr:ModHand
o.CortexA7.SCSIFiler: Hdr:OsBytes
o.CortexA7.SCSIFiler: Hdr:CMOS
o.CortexA7.SCSIFiler: Hdr:FSNumbers
o.CortexA7.SCSIFiler: Hdr:HighFSI
o.CortexA7.SCSIFiler: Hdr:NewErrors
o.CortexA7.SCSIFiler: Hdr:Wimp
o.CortexA7.SCSIFiler: Hdr:WimpSpace
o.CortexA7.SCSIFiler: Hdr:Messages
o.CortexA7.SCSIFiler: Hdr:Sprite
o.CortexA7.SCSIFiler: Hdr:VduExt
o.CortexA7.SCSIFiler: Hdr:Variables
o.CortexA7.SCSIFiler: Hdr:Proc
o.CortexA7.SCSIFiler: Hdr:MsgTrans
o.CortexA7.SCSIFiler: Hdr:MsgMenus
o.CortexA7.SCSIFiler: Hdr:SCSIFS
o.CortexA7.SCSIFiler: Hdr:Territory
o.CortexA7.SCSIFiler: Hdr:FileCore
o.CortexA7.SCSIFiler: Hdr:MultiFS
o.CortexA7.SCSIFiler: Hdr:UpCall
o.CortexA7.SCSIFiler: Hdr:ResourceFS
o.CortexA7.SCSIFiler: Hdr:ShareD
o.CortexA7.SCSIFiler: Hdr:ExtraLong
o.CortexA7.SCSIFiler: Hdr:Hourglass
o.CortexA7.SCSIFiler: VersionASM
o.CortexA7.SCSIFiler: Hdr:NdrDebug
o.CortexA7.SCSIFiler: s.Format
o.CortexA7.SCSIFiler: s.Backup
o.CortexA7.SDFSFiler: s.ADFSFiler
o.CortexA7.SDFSFiler: Hdr:ListOpts
o.CortexA7.SDFSFiler: Hdr:Macros
o.CortexA7.SDFSFiler: Hdr:System
o.CortexA7.SDFSFiler: Hdr:SWIs
o.CortexA7.SDFSFiler: Hdr:CPU.Arch
o.CortexA7.SDFSFiler: Hdr:Machine.<Machine>
o.CortexA7.SDFSFiler: Hdr:Machine.Machine
o.CortexA7.SDFSFiler: Hdr:CPU.Generic26
o.CortexA7.SDFSFiler: Hdr:CPU.Generic32
o.CortexA7.SDFSFiler: Hdr:IO.GenericIO
o.CortexA7.SDFSFiler: Hdr:RISCOS
o.CortexA7.SDFSFiler: Hdr:Services
o.CortexA7.SDFSFiler: Hdr:ModHand
o.CortexA7.SDFSFiler: Hdr:OsBytes
o.CortexA7.SDFSFiler: Hdr:CMOS
o.CortexA7.SDFSFiler: Hdr:FSNumbers
o.CortexA7.SDFSFiler: Hdr:HighFSI
o.CortexA7.SDFSFiler: Hdr:NewErrors
o.CortexA7.SDFSFiler: Hdr:Wimp
o.CortexA7.SDFSFiler: Hdr:WimpSpace
o.CortexA7.SDFSFiler: Hdr:Messages
o.CortexA7.SDFSFiler: Hdr:Sprite
o.CortexA7.SDFSFiler: Hdr:VduExt
o.CortexA7.SDFSFiler: Hdr:Variables
o.CortexA7.SDFSFiler: Hdr:Proc
o.CortexA7.SDFSFiler: Hdr:MsgTrans
o.CortexA7.SDFSFiler: Hdr:MsgMenus
o.CortexA7.SDFSFiler: Hdr:SDFS
o.CortexA7.SDFSFiler: Hdr:Territory
o.CortexA7.SDFSFiler: Hdr:FileCore
o.CortexA7.SDFSFiler: Hdr:MultiFS
o.CortexA7.SDFSFiler: Hdr:UpCall
o.CortexA7.SDFSFiler: Hdr:ResourceFS
o.CortexA7.SDFSFiler: Hdr:ShareD
o.CortexA7.SDFSFiler: Hdr:ExtraLong
o.CortexA7.SDFSFiler: Hdr:Hourglass
o.CortexA7.SDFSFiler: VersionASM
o.CortexA7.SDFSFiler: Hdr:NdrDebug
o.CortexA7.SDFSFiler: s.Format
o.CortexA7.SDFSFiler: s.Backup
