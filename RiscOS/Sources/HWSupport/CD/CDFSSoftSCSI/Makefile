# 
# Copyright (c) 2011, RISC OS Open Ltd
# All rights reserved.
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
# Makefile for softloadable SCSI CD driver
#
# $Id$

DEBUG ?= FALSE

ifeq ($(DEBUG),TRUE)
CFLAGS += -DDEBUGLIB
CMHGFLAGS += -DDEBUGLIB
LIBS = ${DEBUGLIBS} ${NET5LIBS}
endif

COMPONENT       = CDFSSoftSCSI
OBJS            = cmodule handler driver errors
CMHGFILE        = modhead
HDRS            =

CINCLUDES       = -Itbox:
CFLAGS          += -wp -wc
CMHGDEFINES     = -DCOMPONENT=${COMPONENT}
CMHGDEPENDS     = cmodule driver
RAMCDEFINES     = -DSTANDALONE

RESFSDIR = ${RESDIR}.CDFSDriver.SCSI
RES_OBJ = messages

include CModule

# Dynamic dependencies:
o.cmodule:	c.cmodule
o.cmodule:	h.modhead
o.cmodule:	C:h.kernel
o.cmodule:	C:h.swis
o.cmodule:	C:Global.h.RISCOS
o.cmodule:	C:Global.h.Services
o.cmodule:	C:DebugLib.h.DebugLib
o.cmodule:	h.globals
o.cmodule:	tbox:h.toolbox
o.cmodule:	tbox:h.wimp
o.cmodule:	h.cdfsbits
o.handler: s.handler
o.driver:	c.driver
o.driver:	h.modhead
o.driver:	C:h.kernel
o.driver:	C:h.swis
o.driver:	C:Global.h.RISCOS
o.driver:	C:Global.h.Services
o.driver:	C:Interface.h.SCSIErr
o.driver:	C:DebugLib.h.DebugLib
o.driver:	h.globals
o.driver:	tbox:h.toolbox
o.driver:	tbox:h.wimp
o.driver:	h.cdfsbits
o.driver:	h.scsibits
o.driver:	h.errors
h.modhead:	cmhg.modhead
h.modhead:	C:Global.h.RISCOS
h.modhead:	C:Global.h.Services
h.modhead:	cmhg.^.VersionNum
o.errors:	c.errors
o.errors:	C:h.swis
o.errors:	C:h.kernel
o.errors:	C:Global.h.RISCOS
o.errors:	C:Global.h.Services
o.errors:	C:Interface.h.CDErrors
o.errors:	C:DebugLib.h.DebugLib
o.errors:	h.globals
o.errors:	tbox:h.toolbox
o.errors:	tbox:h.wimp
o.errors:	h.cdfsbits
o.errors:	h.errors
o.modhead:	cmhg.modhead
o.modhead:	C:Global.h.RISCOS
o.modhead:	C:Global.h.Services
o.modhead:	cmhg.^.VersionNum
