# Copyright 1996 Acorn Computers Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Makefile for BASIC
#

COMPONENT    ?= BASIC105
VFPASM       ?= TRUE
RESDIR       ?= _!_x_!_
RESFSDIR      = ${RESDIR}.BASIC

ifeq ($(VFPASM),TRUE)
ASFLAGS       = -PD "VFPAssembler SETL {TRUE}"
SA_DEPEND     = VFPData
INSTRES_FILES = VFPData
INSTRES_DEPENDS = VFPData

s.VFPData: VFPLib.VFPLib VFPLib.GenData
	BASIC { < VFPLib.GenData }

VFPData: s.VFPData hdr.VFPMacros
	${MKDIR} o
	${AS} ${ASFLAGS} -PD "BuildingVFPData SETL {TRUE}" -o o.VFPData s.VFPData
	${LD} -BIN -o $@ o.VFPData

clean::
	${RM} s.VFPData
	${RM} VFPData
endif

include StdTools
include AAsmModule

ifeq ($(COMPONENT),BASICVFP)
AS            = ObjAsmVFP
endif

# Dynamic dependencies:
o.VFPData: s.VFPData
o.VFPData: hdr.VFPMacros
o.CortexA7.BASIC105: s.BASIC105
o.CortexA7.BASIC105: s.ModHead
o.CortexA7.BASIC105: VersionASM
o.CortexA7.BASIC105: hdr.WorkSpace
o.CortexA7.BASIC105: hdr.Tokens
o.CortexA7.BASIC105: hdr.Definitions
o.CortexA7.BASIC105: Hdr:ListOpts
o.CortexA7.BASIC105: Hdr:Macros
o.CortexA7.BASIC105: Hdr:System
o.CortexA7.BASIC105: Hdr:SWIs
o.CortexA7.BASIC105: Hdr:CPU.Arch
o.CortexA7.BASIC105: Hdr:Machine.<Machine>
o.CortexA7.BASIC105: Hdr:Machine.Machine
o.CortexA7.BASIC105: Hdr:CPU.Generic26
o.CortexA7.BASIC105: Hdr:CPU.Generic32
o.CortexA7.BASIC105: Hdr:IO.GenericIO
o.CortexA7.BASIC105: Hdr:RISCOS
o.CortexA7.BASIC105: Hdr:ModHand
o.CortexA7.BASIC105: Hdr:MsgTrans
o.CortexA7.BASIC105: Hdr:Services
o.CortexA7.BASIC105: Hdr:FSNumbers
o.CortexA7.BASIC105: Hdr:NewErrors
o.CortexA7.BASIC105: Hdr:PaletteV
o.CortexA7.BASIC105: Hdr:Wimp
o.CortexA7.BASIC105: Hdr:ColourTran
o.CortexA7.BASIC105: Hdr:ResourceFS
o.CortexA7.BASIC105: Hdr:Territory
o.CortexA7.BASIC105: Hdr:PublicWS
o.CortexA7.BASIC105: Hdr:Sound
o.CortexA7.BASIC105: Hdr:OsWords
o.CortexA7.BASIC105: Hdr:VFPSupport
o.CortexA7.BASIC105: Hdr:VduExt
o.CortexA7.BASIC105: s.Basic
o.CortexA7.BASIC105: s.fp
o.CortexA7.BASIC105: s.fp2
o.CortexA7.BASIC105: s.Expr
o.CortexA7.BASIC105: s.Factor
o.CortexA7.BASIC105: s.Funct
o.CortexA7.BASIC105: s.Stmt
o.CortexA7.BASIC105: s.Stmt2
o.CortexA7.BASIC105: s.Array
o.CortexA7.BASIC105: s.Assembler
o.CortexA7.BASIC105: s.VFP
o.CortexA7.BASIC105: hdr.VFPMacros
o.CortexA7.BASIC105: s.VFPData
o.CortexA7.BASIC105: s.Lexical
o.CortexA7.BASIC105: s.Command
o.CortexA7.BASIC105: s.HelpMsgs
o.CortexA7.BASIC105: s.ErrorMsgs
o.CortexA7.BASIC64: s.BASIC64
o.CortexA7.BASIC64: s.ModHead
o.CortexA7.BASIC64: VersionASM
o.CortexA7.BASIC64: hdr.WorkSpace
o.CortexA7.BASIC64: hdr.Tokens
o.CortexA7.BASIC64: hdr.Definitions
o.CortexA7.BASIC64: Hdr:ListOpts
o.CortexA7.BASIC64: Hdr:Macros
o.CortexA7.BASIC64: Hdr:System
o.CortexA7.BASIC64: Hdr:SWIs
o.CortexA7.BASIC64: Hdr:CPU.Arch
o.CortexA7.BASIC64: Hdr:Machine.<Machine>
o.CortexA7.BASIC64: Hdr:Machine.Machine
o.CortexA7.BASIC64: Hdr:CPU.Generic26
o.CortexA7.BASIC64: Hdr:CPU.Generic32
o.CortexA7.BASIC64: Hdr:IO.GenericIO
o.CortexA7.BASIC64: Hdr:RISCOS
o.CortexA7.BASIC64: Hdr:ModHand
o.CortexA7.BASIC64: Hdr:MsgTrans
o.CortexA7.BASIC64: Hdr:Services
o.CortexA7.BASIC64: Hdr:FSNumbers
o.CortexA7.BASIC64: Hdr:NewErrors
o.CortexA7.BASIC64: Hdr:PaletteV
o.CortexA7.BASIC64: Hdr:Wimp
o.CortexA7.BASIC64: Hdr:ColourTran
o.CortexA7.BASIC64: Hdr:ResourceFS
o.CortexA7.BASIC64: Hdr:Territory
o.CortexA7.BASIC64: Hdr:PublicWS
o.CortexA7.BASIC64: Hdr:Sound
o.CortexA7.BASIC64: Hdr:OsWords
o.CortexA7.BASIC64: Hdr:VFPSupport
o.CortexA7.BASIC64: Hdr:VduExt
o.CortexA7.BASIC64: s.Basic
o.CortexA7.BASIC64: s.fp
o.CortexA7.BASIC64: s.fp2
o.CortexA7.BASIC64: s.Expr
o.CortexA7.BASIC64: s.Factor
o.CortexA7.BASIC64: s.Funct
o.CortexA7.BASIC64: s.Stmt
o.CortexA7.BASIC64: s.Stmt2
o.CortexA7.BASIC64: s.Array
o.CortexA7.BASIC64: s.Assembler
o.CortexA7.BASIC64: s.VFP
o.CortexA7.BASIC64: hdr.VFPMacros
o.CortexA7.BASIC64: s.VFPData
o.CortexA7.BASIC64: s.Lexical
o.CortexA7.BASIC64: s.Command
o.CortexA7.BASIC64: s.HelpMsgs
o.CortexA7.BASIC64: s.ErrorMsgs
o.CortexA7.BASICVFP: s.BASICVFP
o.CortexA7.BASICVFP: s.ModHead
o.CortexA7.BASICVFP: VersionASM
o.CortexA7.BASICVFP: hdr.WorkSpace
o.CortexA7.BASICVFP: hdr.Tokens
o.CortexA7.BASICVFP: hdr.Definitions
o.CortexA7.BASICVFP: Hdr:ListOpts
o.CortexA7.BASICVFP: Hdr:Macros
o.CortexA7.BASICVFP: Hdr:System
o.CortexA7.BASICVFP: Hdr:SWIs
o.CortexA7.BASICVFP: Hdr:CPU.Arch
o.CortexA7.BASICVFP: Hdr:Machine.<Machine>
o.CortexA7.BASICVFP: Hdr:Machine.Machine
o.CortexA7.BASICVFP: Hdr:CPU.Generic26
o.CortexA7.BASICVFP: Hdr:CPU.Generic32
o.CortexA7.BASICVFP: Hdr:IO.GenericIO
o.CortexA7.BASICVFP: Hdr:RISCOS
o.CortexA7.BASICVFP: Hdr:ModHand
o.CortexA7.BASICVFP: Hdr:MsgTrans
o.CortexA7.BASICVFP: Hdr:Services
o.CortexA7.BASICVFP: Hdr:FSNumbers
o.CortexA7.BASICVFP: Hdr:NewErrors
o.CortexA7.BASICVFP: Hdr:PaletteV
o.CortexA7.BASICVFP: Hdr:Wimp
o.CortexA7.BASICVFP: Hdr:ColourTran
o.CortexA7.BASICVFP: Hdr:ResourceFS
o.CortexA7.BASICVFP: Hdr:Territory
o.CortexA7.BASICVFP: Hdr:PublicWS
o.CortexA7.BASICVFP: Hdr:Sound
o.CortexA7.BASICVFP: Hdr:OsWords
o.CortexA7.BASICVFP: Hdr:VFPSupport
o.CortexA7.BASICVFP: Hdr:VduExt
o.CortexA7.BASICVFP: s.Basic
o.CortexA7.BASICVFP: s.fp
o.CortexA7.BASICVFP: s.fp2
o.CortexA7.BASICVFP: s.Expr
o.CortexA7.BASICVFP: s.Factor
o.CortexA7.BASICVFP: s.Funct
o.CortexA7.BASICVFP: s.Stmt
o.CortexA7.BASICVFP: s.Stmt2
o.CortexA7.BASICVFP: s.Array
o.CortexA7.BASICVFP: s.Assembler
o.CortexA7.BASICVFP: s.VFP
o.CortexA7.BASICVFP: hdr.VFPMacros
o.CortexA7.BASICVFP: s.VFPData
o.CortexA7.BASICVFP: s.Lexical
o.CortexA7.BASICVFP: s.Command
o.CortexA7.BASICVFP: s.HelpMsgs
o.CortexA7.BASICVFP: s.ErrorMsgs
