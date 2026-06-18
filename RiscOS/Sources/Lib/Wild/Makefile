# Copyright RISC OS Open Limited.
# 
# This file is part of Wild.
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
# License along with Wild.  If not, see <http://www.gnu.org/licenses/>.
# 
# Makefile for Wild
#

COMPONENT = Wild
OBJS      = IsMultiple PathMatch2 PathMatch4 Replace ReplaceHlp Wild1 Wild2 Wild3 Wild4
HDRS      = Replace Wild
CDEFINES  = -DNDEBUG

include CLibrary

# Dynamic dependencies:
oz.IsMultiple:	c.IsMultiple
oz.IsMultiple:	C:Desk.h.Debug
oz.IsMultiple:	C:Desk.h.Core
oz.IsMultiple:	C:h.kernel
oz.IsMultiple:	C:Desk.h.Error
oz.IsMultiple:	C:Desk.h.DeskMem
oz.IsMultiple:	C:Desk.h.KernelSWIs
oz.IsMultiple:	h.IsMultiple
oz.PathMatch2:	c.PathMatch2
oz.PathMatch2:	C:PlainArgv.h.StrTok
oz.PathMatch2:	C:Desk.h.Debug
oz.PathMatch2:	C:Desk.h.Core
oz.PathMatch2:	C:h.kernel
oz.PathMatch2:	C:Desk.h.Error
oz.PathMatch2:	C:Wild.h.Wild
oz.PathMatch4:	c.PathMatch4
oz.PathMatch4:	C:Desk.h.Debug
oz.PathMatch4:	C:Desk.h.Core
oz.PathMatch4:	C:h.kernel
oz.PathMatch4:	C:Desk.h.Error
oz.PathMatch4:	C:Wild.h.Wild
oz.Replace:	c.Replace
oz.Replace:	C:Desk.h.Debug
oz.Replace:	C:Desk.h.Core
oz.Replace:	C:h.kernel
oz.Replace:	C:Desk.h.Error2
oz.Replace:	C:Desk.h.Error
oz.Replace:	C:Desk.h.JumpRaw
oz.Replace:	C:Desk.h.Filing
oz.Replace:	C:Wild.h.Replace
oz.Replace:	C:Desk.h.DeskMem
oz.ReplaceHlp:	c.ReplaceHlp
oz.ReplaceHlp:	C:Wild.h.Replace
oz.ReplaceHlp:	C:Desk.h.DeskMem
oz.ReplaceHlp:	C:Desk.h.Core
oz.ReplaceHlp:	C:h.kernel
oz.Wild1:	c.Wild1
oz.Wild1:	C:Desk.h.File
oz.Wild1:	C:Desk.h.Core
oz.Wild1:	C:h.kernel
oz.Wild1:	C:Desk.h.SWI
oz.Wild1:	C:Desk.h.Error2
oz.Wild1:	C:Desk.h.Error
oz.Wild1:	C:Desk.h.JumpRaw
oz.Wild1:	C:Desk.h.Debug
oz.Wild1:	C:Desk.h.Filing
oz.Wild1:	C:Desk.h.Debug
oz.Wild1:	C:Desk.h.Error2
oz.Wild1:	C:Desk.h.Str
oz.Wild1:	C:Desk.h.DeskMem
oz.Wild1:	C:Wild.h.Wild
oz.Wild2:	c.Wild2
oz.Wild2:	C:Desk.h.Filing
oz.Wild2:	C:Desk.h.Core
oz.Wild2:	C:h.kernel
oz.Wild2:	C:Desk.h.Debug
oz.Wild2:	C:Desk.h.Error2
oz.Wild2:	C:Desk.h.Error
oz.Wild2:	C:Desk.h.JumpRaw
oz.Wild2:	C:Desk.h.DeskMem
oz.Wild2:	C:Desk.h.SWI
oz.Wild2:	C:Desk.h.KernelSWIs
oz.Wild2:	C:Wild.h.Wild
oz.Wild2:	h.IsMultiple
oz.Wild3:	c.Wild3
oz.Wild3:	C:Desk.h.Debug
oz.Wild3:	C:Desk.h.Core
oz.Wild3:	C:h.kernel
oz.Wild3:	C:Desk.h.Error
oz.Wild3:	C:PlainArgv.h.StrTok
oz.Wild3:	C:Wild.h.Wild
oz.Wild4:	c.Wild4
oz.Wild4:	C:Desk.h.Debug
oz.Wild4:	C:Desk.h.Core
oz.Wild4:	C:h.kernel
oz.Wild4:	C:Desk.h.Error
oz.Wild4:	C:Wild.h.Wild
o.IsMultiple:	c.IsMultiple
o.IsMultiple:	C:Desk.h.Debug
o.IsMultiple:	C:Desk.h.Core
o.IsMultiple:	C:h.kernel
o.IsMultiple:	C:Desk.h.Error
o.IsMultiple:	C:Desk.h.DeskMem
o.IsMultiple:	C:Desk.h.KernelSWIs
o.IsMultiple:	h.IsMultiple
o.PathMatch2:	c.PathMatch2
o.PathMatch2:	C:PlainArgv.h.StrTok
o.PathMatch2:	C:Desk.h.Debug
o.PathMatch2:	C:Desk.h.Core
o.PathMatch2:	C:h.kernel
o.PathMatch2:	C:Desk.h.Error
o.PathMatch2:	C:Wild.h.Wild
o.PathMatch4:	c.PathMatch4
o.PathMatch4:	C:Desk.h.Debug
o.PathMatch4:	C:Desk.h.Core
o.PathMatch4:	C:h.kernel
o.PathMatch4:	C:Desk.h.Error
o.PathMatch4:	C:Wild.h.Wild
o.Replace:	c.Replace
o.Replace:	C:Desk.h.Debug
o.Replace:	C:Desk.h.Core
o.Replace:	C:h.kernel
o.Replace:	C:Desk.h.Error2
o.Replace:	C:Desk.h.Error
o.Replace:	C:Desk.h.JumpRaw
o.Replace:	C:Desk.h.Filing
o.Replace:	C:Wild.h.Replace
o.Replace:	C:Desk.h.DeskMem
o.ReplaceHlp:	c.ReplaceHlp
o.ReplaceHlp:	C:Wild.h.Replace
o.ReplaceHlp:	C:Desk.h.DeskMem
o.ReplaceHlp:	C:Desk.h.Core
o.ReplaceHlp:	C:h.kernel
o.Wild1:	c.Wild1
o.Wild1:	C:Desk.h.File
o.Wild1:	C:Desk.h.Core
o.Wild1:	C:h.kernel
o.Wild1:	C:Desk.h.SWI
o.Wild1:	C:Desk.h.Error2
o.Wild1:	C:Desk.h.Error
o.Wild1:	C:Desk.h.JumpRaw
o.Wild1:	C:Desk.h.Debug
o.Wild1:	C:Desk.h.Filing
o.Wild1:	C:Desk.h.Debug
o.Wild1:	C:Desk.h.Error2
o.Wild1:	C:Desk.h.Str
o.Wild1:	C:Desk.h.DeskMem
o.Wild1:	C:Wild.h.Wild
o.Wild2:	c.Wild2
o.Wild2:	C:Desk.h.Filing
o.Wild2:	C:Desk.h.Core
o.Wild2:	C:h.kernel
o.Wild2:	C:Desk.h.Debug
o.Wild2:	C:Desk.h.Error2
o.Wild2:	C:Desk.h.Error
o.Wild2:	C:Desk.h.JumpRaw
o.Wild2:	C:Desk.h.DeskMem
o.Wild2:	C:Desk.h.SWI
o.Wild2:	C:Desk.h.KernelSWIs
o.Wild2:	C:Wild.h.Wild
o.Wild2:	h.IsMultiple
o.Wild3:	c.Wild3
o.Wild3:	C:Desk.h.Debug
o.Wild3:	C:Desk.h.Core
o.Wild3:	C:h.kernel
o.Wild3:	C:Desk.h.Error
o.Wild3:	C:PlainArgv.h.StrTok
o.Wild3:	C:Wild.h.Wild
o.Wild4:	c.Wild4
o.Wild4:	C:Desk.h.Debug
o.Wild4:	C:Desk.h.Core
o.Wild4:	C:h.kernel
o.Wild4:	C:Desk.h.Error
o.Wild4:	C:Wild.h.Wild
