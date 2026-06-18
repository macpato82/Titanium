#
# Copyright (c) 2022, RISC OS Open Ltd
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
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
# Makefile for xolib
#

COMPONENT = xolib
ifeq ($(filter, install%,${MAKECMDGOALS}),)
EXPDIR    = ${LIBDIR}${SEP}TCPIPLibs
else
EXPDIR    = ${INSTDIR}${SEP}TCPIPLibs
endif
CINCLUDES = ${TCPIPINC}
CFLAGS    = ${C_NOWARN_NON_ANSI_INCLUDES}
OBJS      = textonly
HDRS      = xo

include CLibrary

# Dynamic dependencies:
oz.textonly:	c.textonly
oz.textonly:	h.xo
oz.textonly:	TCPIPLibs:sys.h.types
oz.textonly:	TCPIPLibs:sys.h.cdefs
oz.textonly:	TCPIPLibs:machine.h.endian
oz.textonly:	TCPIPLibs:machine.h.ansi
oz.textonly:	TCPIPLibs:machine.h.types
oz.textonly:	TCPIPLibs:sys.h.errno
oz.textonly:	C:h.kernel
oz.textonly:	C:DebugLib.h.DebugLib
o.textonly:	c.textonly
o.textonly:	h.xo
o.textonly:	TCPIPLibs:sys.h.types
o.textonly:	TCPIPLibs:sys.h.cdefs
o.textonly:	TCPIPLibs:machine.h.endian
o.textonly:	TCPIPLibs:machine.h.ansi
o.textonly:	TCPIPLibs:machine.h.types
o.textonly:	TCPIPLibs:sys.h.errno
o.textonly:	C:h.kernel
o.textonly:	C:DebugLib.h.DebugLib
