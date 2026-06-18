# Copyright (c) 1995, Expressive Software Projects
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Expressive Software Projects nor the names of its
#       contributors may be used to endorse or promote products derived from
#       this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL EXPRESSIVE SOFTWARE PROJECTS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# Makefile for SharedSound
#

COMPONENT  = SSound
TARGET     = SSound
ROM_SOURCE = Gets.s

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.SSound: s.Gets
o.CortexA7.SSound: Hdr:ListOpts
o.CortexA7.SSound: Hdr:Macros
o.CortexA7.SSound: Hdr:System
o.CortexA7.SSound: Hdr:SWIs
o.CortexA7.SSound: Hdr:CPU.Arch
o.CortexA7.SSound: Hdr:Machine.<Machine>
o.CortexA7.SSound: Hdr:Machine.Machine
o.CortexA7.SSound: Hdr:CPU.Generic26
o.CortexA7.SSound: Hdr:CPU.Generic32
o.CortexA7.SSound: Hdr:IO.GenericIO
o.CortexA7.SSound: Hdr:RISCOS
o.CortexA7.SSound: Hdr:PublicWS
o.CortexA7.SSound: Hdr:ModHand
o.CortexA7.SSound: Hdr:FSNumbers
o.CortexA7.SSound: Hdr:NewErrors
o.CortexA7.SSound: Hdr:Sound
o.CortexA7.SSound: Hdr:ResourceFS
o.CortexA7.SSound: Hdr:MsgTrans
o.CortexA7.SSound: Hdr:Proc
o.CortexA7.SSound: Hdr:NdrDebug
o.CortexA7.SSound: Hdr:Services
o.CortexA7.SSound: VersionAsm
o.CortexA7.SSound: s.Vars
o.CortexA7.SSound: s.Module
o.CortexA7.SSound: s.SWIS
o.CortexA7.SSound: s.Memory
o.CortexA7.SSound: s.SampleRate
o.CortexA7.SSound: s.Volume
o.CortexA7.SSound: s.Drivers
o.CortexA7.SSound: s.Linear
o.CortexA7.SSound: s.PowerWave
o.CortexA7.SSound: s.SoundDrv
o.CortexA7.SSound: s.Handler
o.CortexA7.SSound: s.FillCode
