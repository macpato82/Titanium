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
# Makefile for callx
#

COMPONENT  = callx
OBJS       = callx veneer
HDRS       = callx
CFLAGS     = -Wp
LIBRARIES  = ${LIBRARYZM} # Only the module version makes sense

include CLibrary

# Dynamic dependencies:
oz.callx:	c.callx
oz.callx:	C:h.kernel
oz.callx:	C:h.swis
oz.callx:	C:AsmUtils.h.irqs
oz.callx:	C:DebugLib.h.DebugLib
oz.callx:	h.callx
oz.callx:	C:h.kernel
oz.veneer: s.veneer
oz.veneer: Hdr:ListOpts
oz.veneer: Hdr:Macros
oz.veneer: Hdr:System
oz.veneer: Hdr:SWIs
oz.veneer: Hdr:CPU.Arch
oz.veneer: Hdr:Machine.<Machine>
oz.veneer: Hdr:Machine.Machine
oz.veneer: Hdr:CPU.Generic26
oz.veneer: Hdr:CPU.Generic32
oz.veneer: Hdr:IO.GenericIO
oz.veneer: Hdr:RISCOS
oz.veneer: Hdr:HostFS
oz.veneer: Hdr:NdrDebug
oz.veneer: Hdr:DDVMacros
