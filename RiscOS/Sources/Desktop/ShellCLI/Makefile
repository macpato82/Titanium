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
# Makefile for ShellCLI

COMPONENT       = ShellCLI
CMHGDEPENDS     = module
CINCLUDES       = ${RINC}
LIBS            = ${ASMUTILS}
OBJS            = module veneer
HDRS            =
ASMHDRS         = Shell

include CModule

# Dynamic dependencies:
o.module:	c.module
o.module:	C:h.swis
o.module:	C:h.kernel
o.module:	C:Global.h.NewErrors
o.module:	C:Global.h.EnvNumbers
o.module:	C:Global.h.OsBytes
o.module:	C:Global.h.ModHand
o.module:	C:Global.h.Services
o.module:	C:Global.h.Variables
o.module:	C:Global.h.VduExt
o.module:	C:AsmUtils.h.rminfo
o.module:	RISCOSLIB:h.wimp
o.module:	RISCOSLIB:h.os
o.module:	RISCOSLIB:h.sprite
o.module:	RISCOSLIB:h.bbc
o.module:	h.module
o.module:	h.ShellCLIHdr
o.module:	h.veneer
h.ShellCLIHdr:	cmhg.ShellCLIHdr
h.ShellCLIHdr:	VersionNum
h.ShellCLIHdr:	C:Global.h.Services
h.ShellCLIHdr:	C:Global.h.SWIs
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
o.ShellCLIHdr:	cmhg.ShellCLIHdr
o.ShellCLIHdr:	VersionNum
o.ShellCLIHdr:	C:Global.h.Services
o.ShellCLIHdr:	C:Global.h.SWIs
