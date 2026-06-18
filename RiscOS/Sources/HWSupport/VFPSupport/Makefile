# 
# Copyright (c) 2010, RISC OS Open Ltd
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
# Makefile for VFPSupport
#

# Use machine type to determine whether support code is needed
# Can also be overridden on command line by specifying SUPPORTCODE
# Assuming we're targeting a machine capable of VFP, Cortex-A8 and Cortex-A53 are
# the only machine types which don't need any support code at all 
DEFSUPPORTCODE = TRUE
ifneq (,$(findstring ${MACHINE},CortexA8 CortexA53))
DEFSUPPORTCODE = FALSE
endif

SUPPORTCODE ?= ${DEFSUPPORTCODE}

COMPONENT  = VFPSupport
ASMHDRS    = VFPSupport
FUSEDOBJS  = Fused32 Fused64
TRANSOBJS  = Trig32 Trig64 ArcTrig32 ArcTrig64 Power32 Power64
OBJS       = GetAll ${FUSEDOBJS} ${TRANSOBJS}
HDRS       =
CMHGFILE   =
ASMDEFINES += -PD "SupportCode SETL {${SUPPORTCODE}}"
RAMASMDEFINES += -PD "standalone SETL {TRUE}" -PD "MergedMsgs SETS \"${MERGEDMSGS}\""

ifeq (${SUPPORTCODE},TRUE)
OBJS += softfloat classify
VPATH = softfloat
endif

include CModule

# We don't want to link to CLib
ROM_LIBS =
SA_LIBS  =
ROM_SYMS =

CFLAGS += -apcs /nofp

# Force -cpu 5 when building for 'all' to reduce assembler support code
# requirements. This shouldn't pose a problem since the C code will only get hit
# once we've verified VFP hardware is present (i.e. ARMv5+ CPU)
ifneq (,$(findstring ${MACHINE},All All32))
CFLAGS += -cpu 5
endif

# decgen rules
ACTIONS = actions/common \
          actions/ARMv7_VFP

ENCODINGS = Build:decgen.encodings.ARMv7 \
            Build:decgen.encodings.ARMv7_nASIMD \
            Build:decgen.encodings.ARMv7_VFP

DECGEN = <Tools$Dir>.Misc.decgen.decgen

classify.c: $(ACTIONS) head.c $(ENCODINGS)
	$(DECGEN) -bits=32 -e -DCDP= -DLDC_STC= -DMRC_MCR= -DVFP1=(cond:4) "-DVFP2={ne(cond,15)}" -DAS1(X)=1111001[X] -DAS2=11110100 $(ENCODINGS) -valid -a $(ACTIONS) -pre head.c -o classify.c -prefix=classify_ -name=classify -default=UNDEFINED -updatecache cache/classify -maxmaskbits=3

classify.o: classify.c shared.h
	${CC} ${CFLAGS} -o $@ classify.c

classify.oz: classify.c shared.h
	${CC} ${CFLAGS} ${C_MODULE} -o $@ classify.c

shared.h: hdr.shared
	${PERL} Build:Hdr2H hdr.shared $@

softfloat.o: shared.h

clean::
	${RM} c.classify
	${RM} h.shared

# Dynamic dependencies:
o.GetAll: s.GetAll
o.GetAll: Hdr:ListOpts
o.GetAll: Hdr:Macros
o.GetAll: Hdr:System
o.GetAll: Hdr:SWIs
o.GetAll: Hdr:CPU.Arch
o.GetAll: Hdr:Machine.<Machine>
o.GetAll: Hdr:Machine.Machine
o.GetAll: Hdr:CPU.Generic26
o.GetAll: Hdr:CPU.Generic32
o.GetAll: Hdr:IO.GenericIO
o.GetAll: Hdr:RISCOS
o.GetAll: Hdr:ModHand
o.GetAll: Hdr:NdrDebug
o.GetAll: Hdr:Services
o.GetAll: Hdr:Tokens
o.GetAll: Hdr:Proc
o.GetAll: Hdr:Symbols
o.GetAll: Hdr:ResourceFS
o.GetAll: Hdr:MsgTrans
o.GetAll: Hdr:FSNumbers
o.GetAll: Hdr:HighFSI
o.GetAll: Hdr:NewErrors
o.GetAll: Hdr:VFPSupport
o.GetAll: Hdr:Debugger
o.GetAll: VersionASM
o.GetAll: s.Structures
o.GetAll: s.Macros
o.GetAll: s.Module
o.GetAll: s.CMath
o.GetAll: hdr.shared
o.GetAll: s.SupportCode
o.GetAll: s.Instructions
o.GetAll: s.Instructions
o.GetAll: s.CSupport
o.GetAll: s.Errors
o.GetAll: s.MsgCode
o.Fused32: s.Fused32
o.Fused32: Hdr:ListOpts
o.Fused32: Hdr:Macros
o.Fused32: Hdr:System
o.Fused32: Hdr:SWIs
o.Fused32: Hdr:CPU.Arch
o.Fused32: Hdr:Machine.<Machine>
o.Fused32: Hdr:Machine.Machine
o.Fused32: Hdr:CPU.Generic26
o.Fused32: Hdr:CPU.Generic32
o.Fused32: Hdr:IO.GenericIO
o.Fused32: Hdr:RISCOS
o.Fused32: Hdr:FSNumbers
o.Fused32: Hdr:NewErrors
o.Fused32: Hdr:VFPSupport
o.Fused64: s.Fused64
o.Fused64: Hdr:ListOpts
o.Fused64: Hdr:Macros
o.Fused64: Hdr:System
o.Fused64: Hdr:SWIs
o.Fused64: Hdr:CPU.Arch
o.Fused64: Hdr:Machine.<Machine>
o.Fused64: Hdr:Machine.Machine
o.Fused64: Hdr:CPU.Generic26
o.Fused64: Hdr:CPU.Generic32
o.Fused64: Hdr:IO.GenericIO
o.Fused64: Hdr:RISCOS
o.Fused64: Hdr:FSNumbers
o.Fused64: Hdr:NewErrors
o.Fused64: Hdr:VFPSupport
o.Fused64: s.Macros
o.Trig32: s.Trig32
o.Trig32: Hdr:ListOpts
o.Trig32: Hdr:Macros
o.Trig32: Hdr:System
o.Trig32: Hdr:SWIs
o.Trig32: Hdr:CPU.Arch
o.Trig32: Hdr:Machine.<Machine>
o.Trig32: Hdr:Machine.Machine
o.Trig32: Hdr:CPU.Generic26
o.Trig32: Hdr:CPU.Generic32
o.Trig32: Hdr:IO.GenericIO
o.Trig32: Hdr:RISCOS
o.Trig32: Hdr:FSNumbers
o.Trig32: Hdr:NewErrors
o.Trig32: Hdr:VFPSupport
o.Trig32: s.Macros
o.Trig64: s.Trig64
o.Trig64: Hdr:ListOpts
o.Trig64: Hdr:Macros
o.Trig64: Hdr:System
o.Trig64: Hdr:SWIs
o.Trig64: Hdr:CPU.Arch
o.Trig64: Hdr:Machine.<Machine>
o.Trig64: Hdr:Machine.Machine
o.Trig64: Hdr:CPU.Generic26
o.Trig64: Hdr:CPU.Generic32
o.Trig64: Hdr:IO.GenericIO
o.Trig64: Hdr:RISCOS
o.Trig64: Hdr:FSNumbers
o.Trig64: Hdr:NewErrors
o.Trig64: Hdr:VFPSupport
o.Trig64: s.Macros
o.ArcTrig32: s.ArcTrig32
o.ArcTrig32: Hdr:ListOpts
o.ArcTrig32: Hdr:Macros
o.ArcTrig32: Hdr:System
o.ArcTrig32: Hdr:SWIs
o.ArcTrig32: Hdr:CPU.Arch
o.ArcTrig32: Hdr:Machine.<Machine>
o.ArcTrig32: Hdr:Machine.Machine
o.ArcTrig32: Hdr:CPU.Generic26
o.ArcTrig32: Hdr:CPU.Generic32
o.ArcTrig32: Hdr:IO.GenericIO
o.ArcTrig32: Hdr:RISCOS
o.ArcTrig32: Hdr:FSNumbers
o.ArcTrig32: Hdr:NewErrors
o.ArcTrig32: Hdr:VFPSupport
o.ArcTrig32: s.Macros
o.ArcTrig64: s.ArcTrig64
o.ArcTrig64: Hdr:ListOpts
o.ArcTrig64: Hdr:Macros
o.ArcTrig64: Hdr:System
o.ArcTrig64: Hdr:SWIs
o.ArcTrig64: Hdr:CPU.Arch
o.ArcTrig64: Hdr:Machine.<Machine>
o.ArcTrig64: Hdr:Machine.Machine
o.ArcTrig64: Hdr:CPU.Generic26
o.ArcTrig64: Hdr:CPU.Generic32
o.ArcTrig64: Hdr:IO.GenericIO
o.ArcTrig64: Hdr:RISCOS
o.ArcTrig64: Hdr:FSNumbers
o.ArcTrig64: Hdr:NewErrors
o.ArcTrig64: Hdr:VFPSupport
o.ArcTrig64: s.Macros
o.Power32: s.Power32
o.Power32: Hdr:ListOpts
o.Power32: Hdr:Macros
o.Power32: Hdr:System
o.Power32: Hdr:SWIs
o.Power32: Hdr:CPU.Arch
o.Power32: Hdr:Machine.<Machine>
o.Power32: Hdr:Machine.Machine
o.Power32: Hdr:CPU.Generic26
o.Power32: Hdr:CPU.Generic32
o.Power32: Hdr:IO.GenericIO
o.Power32: Hdr:RISCOS
o.Power32: Hdr:FSNumbers
o.Power32: Hdr:NewErrors
o.Power32: Hdr:VFPSupport
o.Power32: s.Macros
o.Power64: s.Power64
o.Power64: Hdr:ListOpts
o.Power64: Hdr:Macros
o.Power64: Hdr:System
o.Power64: Hdr:SWIs
o.Power64: Hdr:CPU.Arch
o.Power64: Hdr:Machine.<Machine>
o.Power64: Hdr:Machine.Machine
o.Power64: Hdr:CPU.Generic26
o.Power64: Hdr:CPU.Generic32
o.Power64: Hdr:IO.GenericIO
o.Power64: Hdr:RISCOS
o.Power64: Hdr:FSNumbers
o.Power64: Hdr:NewErrors
o.Power64: Hdr:VFPSupport
o.Power64: s.Macros
o.softfloat:	softfloat.c.softfloat
o.softfloat:	softfloat.h.milieu
o.softfloat:	softfloat.h.arm
o.softfloat:	h.shared
o.softfloat:	softfloat.h.softfloat
o.softfloat:	softfloat.softfloat-macros
o.softfloat:	softfloat.softfloat-specialize
o.classify:	c.classify
o.classify:	h.classify
o.classify:	h.shared
