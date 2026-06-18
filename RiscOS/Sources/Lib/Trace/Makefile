# Copyright RISC OS Open Limited.
# 
# This file is part of Trace.
# 
# Wild is free software: you can redistribute it and/or modify it under
# the terms of the GNU Lesser General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
# 
# Wild is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General
# Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with Trace.  If not, see <http://www.gnu.org/licenses/>.
# 
# Makefile for Trace
#

COMPONENT  = Trace
OBJS       = Stacker StackCaller StackFrames StackChunks \
             APCSVeneer APCSGetFP APCSCheck \
             Veneer AddrVen TraceAPI StartStop RTHack
HDRS       = APCSCheck FNames Stacker Trace
CDEFINES   = -DNDEBUG -DTrace_TRACE
ASMDEFINES = -pd "Desk_AS_EMBED_FNNAMES SETA 0"

include CLibrary

# Dynamic dependencies:
oz.Stacker:	c.Stacker
oz.Stacker:	C:Desk.h.BackTrace
oz.Stacker:	C:h.kernel
oz.Stacker:	C:Desk.h.Error
oz.Stacker:	C:Desk.h.Core
oz.Stacker:	C:h.kernel
oz.Stacker:	C:Desk.h.Debug
oz.Stacker:	C:Trace.h.Stacker
oz.Stacker:	h.StackDefs
oz.Stacker:	C:Desk.h.Core
oz.StackCaller: s.StackCaller
oz.StackFrames:	c.StackFrames
oz.StackFrames:	C:Desk.h.Debug
oz.StackFrames:	C:Desk.h.Core
oz.StackFrames:	C:h.kernel
oz.StackFrames:	C:Desk.h.BackTrace
oz.StackFrames:	C:h.kernel
oz.StackFrames:	C:Desk.h.Error
oz.StackFrames:	h.StackDefs
oz.StackFrames:	C:Desk.h.Core
oz.StackChunks:	c.StackChunks
oz.StackChunks:	C:Desk.h.Debug
oz.StackChunks:	C:Desk.h.Core
oz.StackChunks:	C:h.kernel
oz.StackChunks:	C:Desk.h.Error
oz.StackChunks:	h.StackDefs
oz.StackChunks:	C:Desk.h.Core
oz.APCSVeneer: s.APCSVeneer
oz.APCSGetFP: s.APCSGetFP
oz.APCSCheck:	c.APCSCheck
oz.APCSCheck:	C:Desk.h.LinkList
oz.APCSCheck:	C:Desk.h.Core
oz.APCSCheck:	C:h.kernel
oz.APCSCheck:	C:Desk.h.DeskMem
oz.APCSCheck:	C:Desk.h.Debug
oz.APCSCheck:	C:Desk.h.Error
oz.APCSCheck:	C:Desk.h.BackTrace
oz.APCSCheck:	C:h.kernel
oz.APCSCheck:	C:Trace.h.Trace
oz.APCSCheck:	C:Trace.h.APCSCheck
oz.APCSCheck:	h.APCSDefs
oz.Veneer: s.Veneer
oz.Veneer: sh.Macros
oz.AddrVen: s.AddrVen
oz.AddrVen: sh.Macros
oz.TraceAPI:	c.TraceAPI
oz.TraceAPI:	C:Desk.h.Debug
oz.TraceAPI:	C:Desk.h.Core
oz.TraceAPI:	C:h.kernel
oz.TraceAPI:	C:Desk.h.Error
oz.TraceAPI:	C:Trace.h.Trace
oz.TraceAPI:	h.IntTrace
oz.StartStop:	c.StartStop
oz.StartStop:	C:Trace.h.Trace
oz.RTHack:	c.RTHack
oz.RTHack:	C:h.swis
oz.RTHack:	C:h.kernel
oz.RTHack:	C:Desk.h.File
oz.RTHack:	C:Desk.h.Core
oz.RTHack:	C:h.kernel
oz.RTHack:	C:Desk.h.SWI
oz.RTHack:	C:Desk.h.Error2
oz.RTHack:	C:Desk.h.Error
oz.RTHack:	C:Desk.h.JumpRaw
oz.RTHack:	C:Desk.h.Debug
oz.RTHack:	C:Desk.h.Debug
oz.RTHack:	C:DDTLib.h.AIFHeader
oz.RTHack:	C:Wild.h.Wild
oz.RTHack:	C:ModMalloc.h.ModMalloc
oz.RTHack:	C:Trace.h.Trace
oz.RTHack:	h.RT_Fn2
oz.RTHack:	h.IntTrace
o.Stacker:	c.Stacker
o.Stacker:	C:Desk.h.BackTrace
o.Stacker:	C:h.kernel
o.Stacker:	C:Desk.h.Error
o.Stacker:	C:Desk.h.Core
o.Stacker:	C:h.kernel
o.Stacker:	C:Desk.h.Debug
o.Stacker:	C:Trace.h.Stacker
o.Stacker:	h.StackDefs
o.Stacker:	C:Desk.h.Core
o.StackCaller: s.StackCaller
o.StackFrames:	c.StackFrames
o.StackFrames:	C:Desk.h.Debug
o.StackFrames:	C:Desk.h.Core
o.StackFrames:	C:h.kernel
o.StackFrames:	C:Desk.h.BackTrace
o.StackFrames:	C:h.kernel
o.StackFrames:	C:Desk.h.Error
o.StackFrames:	h.StackDefs
o.StackFrames:	C:Desk.h.Core
o.StackChunks:	c.StackChunks
o.StackChunks:	C:Desk.h.Debug
o.StackChunks:	C:Desk.h.Core
o.StackChunks:	C:h.kernel
o.StackChunks:	C:Desk.h.Error
o.StackChunks:	h.StackDefs
o.StackChunks:	C:Desk.h.Core
o.APCSVeneer: s.APCSVeneer
o.APCSGetFP: s.APCSGetFP
o.APCSCheck:	c.APCSCheck
o.APCSCheck:	C:Desk.h.LinkList
o.APCSCheck:	C:Desk.h.Core
o.APCSCheck:	C:h.kernel
o.APCSCheck:	C:Desk.h.DeskMem
o.APCSCheck:	C:Desk.h.Debug
o.APCSCheck:	C:Desk.h.Error
o.APCSCheck:	C:Desk.h.BackTrace
o.APCSCheck:	C:h.kernel
o.APCSCheck:	C:Trace.h.Trace
o.APCSCheck:	C:Trace.h.APCSCheck
o.APCSCheck:	h.APCSDefs
o.Veneer: s.Veneer
o.Veneer: sh.Macros
o.AddrVen: s.AddrVen
o.AddrVen: sh.Macros
o.TraceAPI:	c.TraceAPI
o.TraceAPI:	C:Desk.h.Debug
o.TraceAPI:	C:Desk.h.Core
o.TraceAPI:	C:h.kernel
o.TraceAPI:	C:Desk.h.Error
o.TraceAPI:	C:Trace.h.Trace
o.TraceAPI:	h.IntTrace
o.StartStop:	c.StartStop
o.StartStop:	C:Trace.h.Trace
o.RTHack:	c.RTHack
o.RTHack:	C:h.swis
o.RTHack:	C:h.kernel
o.RTHack:	C:Desk.h.File
o.RTHack:	C:Desk.h.Core
o.RTHack:	C:h.kernel
o.RTHack:	C:Desk.h.SWI
o.RTHack:	C:Desk.h.Error2
o.RTHack:	C:Desk.h.Error
o.RTHack:	C:Desk.h.JumpRaw
o.RTHack:	C:Desk.h.Debug
o.RTHack:	C:Desk.h.Debug
o.RTHack:	C:DDTLib.h.AIFHeader
o.RTHack:	C:Wild.h.Wild
o.RTHack:	C:ModMalloc.h.ModMalloc
o.RTHack:	C:Trace.h.Trace
o.RTHack:	h.RT_Fn2
o.RTHack:	h.IntTrace
