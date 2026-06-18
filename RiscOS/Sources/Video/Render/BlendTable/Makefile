# 
# Copyright (c) 2013, RISC OS Open Ltd
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
# Makefile for BlendTable
#

COMPONENT   = BlendTable
HEADER1     = BlendTable
ASMCHEADER1 = BlendTable
EXPORTS     = ${C_EXP_HDR}${SEP}${ASMCHEADER1}${SUFFIX_HEADER}
ROM_SOURCE  = GetAll.s
RESOURCES   = no

include AAsmModule

# Dynamic dependencies:
o.CortexA7.BlendTable: s.GetAll
o.CortexA7.BlendTable: Hdr:ListOpts
o.CortexA7.BlendTable: Hdr:Macros
o.CortexA7.BlendTable: Hdr:System
o.CortexA7.BlendTable: Hdr:SWIs
o.CortexA7.BlendTable: Hdr:CPU.Arch
o.CortexA7.BlendTable: Hdr:Machine.<Machine>
o.CortexA7.BlendTable: Hdr:Machine.Machine
o.CortexA7.BlendTable: Hdr:CPU.Generic26
o.CortexA7.BlendTable: Hdr:CPU.Generic32
o.CortexA7.BlendTable: Hdr:IO.GenericIO
o.CortexA7.BlendTable: Hdr:RISCOS
o.CortexA7.BlendTable: Hdr:Machine.<Machine>
o.CortexA7.BlendTable: Hdr:Machine.Machine
o.CortexA7.BlendTable: Hdr:CPU.Arch
o.CortexA7.BlendTable: Hdr:ModHand
o.CortexA7.BlendTable: Hdr:Debug
o.CortexA7.BlendTable: Hdr:Services
o.CortexA7.BlendTable: Hdr:Tokens
o.CortexA7.BlendTable: Hdr:Proc
o.CortexA7.BlendTable: Hdr:Symbols
o.CortexA7.BlendTable: Hdr:ResourceFS
o.CortexA7.BlendTable: Hdr:MsgTrans
o.CortexA7.BlendTable: Hdr:FSNumbers
o.CortexA7.BlendTable: Hdr:HighFSI
o.CortexA7.BlendTable: Hdr:NewErrors
o.CortexA7.BlendTable: Hdr:BlendTable
o.CortexA7.BlendTable: Hdr:ColourTran
o.CortexA7.BlendTable: Hdr:Sprite
o.CortexA7.BlendTable: VersionASM
o.CortexA7.BlendTable: s.Structures
o.CortexA7.BlendTable: s.Module
o.CortexA7.BlendTable: s.Errors
o.CortexA7.BlendTable: s.MsgCode
