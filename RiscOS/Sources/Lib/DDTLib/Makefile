# Copyright RISC OS Open Limited.
# 
# This file is part of DDTLib.
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
# License along with DDTLib.  If not, see <http://www.gnu.org/licenses/>.
# 
# Makefile for DDTLib
#

COMPONENT  = DDTLib
OBJS       = ThrowBack SrcPos SectFile Print1 NrSymb GetProc DDT2 \
             DDT AIFHeader
HDRS       = AIFHeader DDT DDT2
CDEFINES   = -DNDEBUG
ASMDEFINES = -pd "Desk_AS_EMBED_FNNAMES SETA 0"

include CLibrary

# Dynamic dependencies:
oz.ThrowBack:	c.ThrowBack
oz.ThrowBack:	C:Desk.h.Debug
oz.ThrowBack:	C:Desk.h.Core
oz.ThrowBack:	C:h.kernel
oz.ThrowBack:	C:DDTLib.h.DDT2
oz.ThrowBack:	C:DDTLib.h.AIFHeader
oz.ThrowBack:	C:DDTLib.h.DDT
oz.ThrowBack:	C:h.swis
oz.SrcPos:	c.SrcPos
oz.SrcPos:	C:Desk.h.Debug
oz.SrcPos:	C:Desk.h.Core
oz.SrcPos:	C:h.kernel
oz.SrcPos:	C:Desk.h.Error
oz.SrcPos:	C:Desk.h.Ptr
oz.SrcPos:	C:DDTLib.h.DDT2
oz.SrcPos:	C:DDTLib.h.AIFHeader
oz.SrcPos:	C:DDTLib.h.DDT
oz.SrcPos:	h.Defs
oz.SectFile:	c.SectFile
oz.SectFile:	C:Desk.h.Debug
oz.SectFile:	C:Desk.h.Core
oz.SectFile:	C:h.kernel
oz.SectFile:	C:Desk.h.Error
oz.SectFile:	C:DDTLib.h.DDT2
oz.SectFile:	C:DDTLib.h.AIFHeader
oz.SectFile:	C:DDTLib.h.DDT
oz.Print1:	c.Print1
oz.Print1:	C:DDTLib.h.DDT2
oz.Print1:	C:Desk.h.Core
oz.Print1:	C:h.kernel
oz.Print1:	C:DDTLib.h.AIFHeader
oz.Print1:	C:DDTLib.h.DDT
oz.NrSymb:	c.NrSymb
oz.NrSymb:	C:Desk.h.Debug
oz.NrSymb:	C:Desk.h.Core
oz.NrSymb:	C:h.kernel
oz.NrSymb:	C:Desk.h.Error
oz.NrSymb:	C:DDTLib.h.DDT2
oz.NrSymb:	C:DDTLib.h.AIFHeader
oz.NrSymb:	C:DDTLib.h.DDT
oz.GetProc:	c.GetProc
oz.GetProc:	C:Desk.h.Debug
oz.GetProc:	C:Desk.h.Core
oz.GetProc:	C:h.kernel
oz.GetProc:	C:Desk.h.Error
oz.GetProc:	C:DDTLib.h.DDT2
oz.GetProc:	C:DDTLib.h.AIFHeader
oz.GetProc:	C:DDTLib.h.DDT
oz.DDT2:	c.DDT2
oz.DDT2:	C:Desk.h.Debug
oz.DDT2:	C:Desk.h.Core
oz.DDT2:	C:h.kernel
oz.DDT2:	C:Desk.h.Error
oz.DDT2:	C:DDTLib.h.DDT2
oz.DDT2:	C:DDTLib.h.AIFHeader
oz.DDT2:	C:DDTLib.h.DDT
oz.DDT:	c.DDT
oz.DDT:	C:h.kernel
oz.DDT:	C:Desk.h.Debug
oz.DDT:	C:Desk.h.Core
oz.DDT:	C:h.kernel
oz.DDT:	C:Desk.h.Error
oz.DDT:	C:DDTLib.h.AIFHeader
oz.DDT:	C:DDTLib.h.DDT
oz.DDT:	C:DDTLib.h.DDT2
oz.DDT:	h.defs
oz.AIFHeader: s.AIFHeader
o.ThrowBack:	c.ThrowBack
o.ThrowBack:	C:Desk.h.Debug
o.ThrowBack:	C:Desk.h.Core
o.ThrowBack:	C:h.kernel
o.ThrowBack:	C:DDTLib.h.DDT2
o.ThrowBack:	C:DDTLib.h.AIFHeader
o.ThrowBack:	C:DDTLib.h.DDT
o.ThrowBack:	C:h.swis
o.SrcPos:	c.SrcPos
o.SrcPos:	C:Desk.h.Debug
o.SrcPos:	C:Desk.h.Core
o.SrcPos:	C:h.kernel
o.SrcPos:	C:Desk.h.Error
o.SrcPos:	C:Desk.h.Ptr
o.SrcPos:	C:DDTLib.h.DDT2
o.SrcPos:	C:DDTLib.h.AIFHeader
o.SrcPos:	C:DDTLib.h.DDT
o.SrcPos:	h.Defs
o.SectFile:	c.SectFile
o.SectFile:	C:Desk.h.Debug
o.SectFile:	C:Desk.h.Core
o.SectFile:	C:h.kernel
o.SectFile:	C:Desk.h.Error
o.SectFile:	C:DDTLib.h.DDT2
o.SectFile:	C:DDTLib.h.AIFHeader
o.SectFile:	C:DDTLib.h.DDT
o.Print1:	c.Print1
o.Print1:	C:DDTLib.h.DDT2
o.Print1:	C:Desk.h.Core
o.Print1:	C:h.kernel
o.Print1:	C:DDTLib.h.AIFHeader
o.Print1:	C:DDTLib.h.DDT
o.NrSymb:	c.NrSymb
o.NrSymb:	C:Desk.h.Debug
o.NrSymb:	C:Desk.h.Core
o.NrSymb:	C:h.kernel
o.NrSymb:	C:Desk.h.Error
o.NrSymb:	C:DDTLib.h.DDT2
o.NrSymb:	C:DDTLib.h.AIFHeader
o.NrSymb:	C:DDTLib.h.DDT
o.GetProc:	c.GetProc
o.GetProc:	C:Desk.h.Debug
o.GetProc:	C:Desk.h.Core
o.GetProc:	C:h.kernel
o.GetProc:	C:Desk.h.Error
o.GetProc:	C:DDTLib.h.DDT2
o.GetProc:	C:DDTLib.h.AIFHeader
o.GetProc:	C:DDTLib.h.DDT
o.DDT2:	c.DDT2
o.DDT2:	C:Desk.h.Debug
o.DDT2:	C:Desk.h.Core
o.DDT2:	C:h.kernel
o.DDT2:	C:Desk.h.Error
o.DDT2:	C:DDTLib.h.DDT2
o.DDT2:	C:DDTLib.h.AIFHeader
o.DDT2:	C:DDTLib.h.DDT
o.DDT:	c.DDT
o.DDT:	C:h.kernel
o.DDT:	C:Desk.h.Debug
o.DDT:	C:Desk.h.Core
o.DDT:	C:h.kernel
o.DDT:	C:Desk.h.Error
o.DDT:	C:DDTLib.h.AIFHeader
o.DDT:	C:DDTLib.h.DDT
o.DDT:	C:DDTLib.h.DDT2
o.DDT:	h.defs
o.AIFHeader: s.AIFHeader
