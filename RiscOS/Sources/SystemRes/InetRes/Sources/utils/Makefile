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
# Makefile for !Internet utilities
#

COMPONENT = InetResUtils
CUSTOMROM = custom
CUSTOMSA  = custom
CUSTOMDBG = custom

include StdRules
include AAsmModule

# Definitions of rules for top-level phony targets are required until
# AAsmModule is updated. After this point, the definitions in AAsmModule
# will take precedence because they are encountered first: amu will emit a
# warning about the definitions below, but that can safely be ignored.
standalone: standalone_${CUSTOMSA}
	@${NOP}

clean::
	${RM} CheckMem
	${RM} ReadCMOSIP
	${RM} TriggerCBs

#
# Static dependencies:
#

standalone_custom: CheckMem ReadCMOSIP TriggerCBs ${DIRS}
	@${ECHO} ${COMPONENT}: utilities built

CheckMem: CheckMem.o
	${LDBIN} $@ $?
	${SETTYPE} $@ &FFC

TriggerCBs: TriggerCBs.o
	${LDBIN} $@ $?
	${SETTYPE} $@ &FFC

ReadCMOSIP: ReadCMOSIP.o
	${LDBIN} $@ $?
	${SETTYPE} $@ &FFC

# Dynamic dependencies:
o.CheckMem: s.CheckMem
o.CheckMem: Hdr:ListOpts
o.CheckMem: Hdr:Macros
o.CheckMem: Hdr:System
o.CheckMem: Hdr:SWIs
o.CheckMem: Hdr:CPU.Arch
o.CheckMem: Hdr:Machine.<Machine>
o.CheckMem: Hdr:Machine.Machine
o.CheckMem: Hdr:CPU.Generic26
o.CheckMem: Hdr:CPU.Generic32
o.CheckMem: Hdr:IO.GenericIO
o.CheckMem: Hdr:RISCOS
o.CheckMem: Hdr:Proc
o.ReadCMOSIP: s.ReadCMOSIP
o.ReadCMOSIP: Hdr:ListOpts
o.ReadCMOSIP: Hdr:Macros
o.ReadCMOSIP: Hdr:System
o.ReadCMOSIP: Hdr:SWIs
o.ReadCMOSIP: Hdr:CPU.Arch
o.ReadCMOSIP: Hdr:Machine.<Machine>
o.ReadCMOSIP: Hdr:Machine.Machine
o.ReadCMOSIP: Hdr:CPU.Generic26
o.ReadCMOSIP: Hdr:CPU.Generic32
o.ReadCMOSIP: Hdr:IO.GenericIO
o.ReadCMOSIP: Hdr:RISCOS
o.ReadCMOSIP: Hdr:Proc
o.TriggerCBs: s.TriggerCBs
o.TriggerCBs: Hdr:ListOpts
o.TriggerCBs: Hdr:Macros
o.TriggerCBs: Hdr:System
o.TriggerCBs: Hdr:SWIs
o.TriggerCBs: Hdr:CPU.Arch
o.TriggerCBs: Hdr:Machine.<Machine>
o.TriggerCBs: Hdr:Machine.Machine
o.TriggerCBs: Hdr:CPU.Generic26
o.TriggerCBs: Hdr:CPU.Generic32
o.TriggerCBs: Hdr:IO.GenericIO
o.TriggerCBs: Hdr:RISCOS
o.TriggerCBs: Hdr:Proc
