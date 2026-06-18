#
# Copyright (c) 2020, RISC OS Open Ltd
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of RISC OS Open Ltd nor the names of its contributors
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
# Makefile for Wimp scrollwheel support module
#

COMPONENT       = WindowScroll
OBJS            = cmodule task utils
CMHGFILE        = modhead
HDRS            =
LIBS            = ${ASMUTILS}
CFLAGS          = ${C_STKCHK}
CDFLAGS         = -DDEBUGLIB
CMHGDFLAGS      = -DDEBUGLIB
CINCLUDES       = ${RINC}
CMHGDEFINES     = -DCOMPONENT=${COMPONENT} ${CDEFINES}
CMHGDEPENDS     = cmodule task
RAMCDEFINES     = -DSTANDALONE

include CModule

ROM_SYMS        = ${ABSSYM}
SA_LIBS         += ${RLIB}

# Dynamic dependencies:
o.cmodule:	c.cmodule
o.cmodule:	h.modhead
o.cmodule:	C:h.kernel
o.cmodule:	C:h.swis
o.cmodule:	C:Global.h.RISCOS
o.cmodule:	C:Global.h.Services
o.cmodule:	C:Global.h.HALDevice
o.cmodule:	C:Global.h.HALEntries
o.cmodule:	C:Global.h.OsBytes
o.cmodule:	C:Global.h.Pointer
o.cmodule:	C:Global.h.NewErrors
o.cmodule:	C:AsmUtils.h.rminfo
o.cmodule:	C:DebugLib.h.DebugLib
o.cmodule:	h.globals
o.cmodule:	RISCOSLIB:h.msgtrans
o.cmodule:	RISCOSLIB:h.wimp
o.cmodule:	RISCOSLIB:h.os
o.cmodule:	RISCOSLIB:h.sprite
o.task:	c.task
o.task:	h.modhead
o.task:	C:h.kernel
o.task:	C:h.swis
o.task:	C:Global.h.RISCOS
o.task:	C:Global.h.Pointer
o.task:	RISCOSLIB:h.wimp
o.task:	RISCOSLIB:h.os
o.task:	RISCOSLIB:h.sprite
o.task:	C:DebugLib.h.DebugLib
o.task:	h.globals
o.task:	RISCOSLIB:h.msgtrans
o.task:	RISCOSLIB:h.wimp
o.task:	h.utils
o.task:	RISCOSLIB:h.wimp
h.modhead:	cmhg.modhead
h.modhead:	C:Global.h.RISCOS
h.modhead:	C:Global.h.Services
h.modhead:	cmhg.^.VersionNum
o.utils:	c.utils
o.utils:	h.utils
o.utils:	RISCOSLIB:h.wimp
o.utils:	RISCOSLIB:h.os
o.utils:	C:h.kernel
o.utils:	RISCOSLIB:h.sprite
o.utils:	C:h.swis
o.utils:	h.globals
o.utils:	RISCOSLIB:h.msgtrans
o.utils:	RISCOSLIB:h.wimp
o.utils:	C:Global.h.ModHand
o.utils:	C:DebugLib.h.DebugLib
o.modhead:	cmhg.modhead
o.modhead:	C:Global.h.RISCOS
o.modhead:	C:Global.h.Services
o.modhead:	cmhg.^.VersionNum
