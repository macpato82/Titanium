# 
# Copyright (c) 2013, RISC OS Open Ltd
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
# Makefile for Real Time Clock driver
#

COMPONENT   = RTC
CMHGDEPENDS = rtclock
OBJS        = rtclock
HDRS        = RTCDevice
ASMCHDRS    = RTC
ASMHDRS     = RTC RTCDevice
CMHGAUTOHDR = RTC
LIBS        = ${ASMUTILS}

include CModule

# Dynamic dependencies:
o.rtclock:	c.rtclock
o.rtclock:	C:h.swis
o.rtclock:	C:h.kernel
o.rtclock:	C:Global.h.RISCOS
o.rtclock:	C:Global.h.HALEntries
o.rtclock:	C:Global.h.Services
o.rtclock:	C:Global.h.OsWords
o.rtclock:	C:Global.h.OsBytes
o.rtclock:	C:Global.h.NewErrors
o.rtclock:	C:Global.h.CMOS
o.rtclock:	C:Interface.h.RTCDevice
o.rtclock:	C:Global.h.HALDevice
o.rtclock:	C:Interface.h.RTC
o.rtclock:	C:AsmUtils.h.irqs
o.rtclock:	h.RTCHdr
o.rtclock:	h.rtclock
h.RTCHdr:	cmhg.RTCHdr
h.RTCHdr:	C:Global.h.Services
h.RTCHdr:	C:Global.h.SWIs
h.RTCHdr:	VersionNum
o.RTCHdr:	cmhg.RTCHdr
o.RTCHdr:	C:Global.h.Services
o.RTCHdr:	C:Global.h.SWIs
o.RTCHdr:	VersionNum
