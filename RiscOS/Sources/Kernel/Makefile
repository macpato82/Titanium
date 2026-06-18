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
# Makefile for Kernel
#

COMPONENT       = Kernel

ifeq (${MAKECMDGOALS},install)
EXP_HDR         = ${INSTDIR}.Hdr.Interface
C_EXP_HDR       = ${INSTDIR}.C.Global.h
else
C_EXP_HDR       = <cexport$dir>.Global.h
endif

# Keep SyncLib out of the kernel for now:
# 1. We don't have a way of unlocking mutexes/spinlocks when recovering from
#    aborts
USE_SYNCLIB    ?= FALSE

TOKHELPSRC      = ${TOKENSOURCE}
HELPSRC         = HelpStrs
OBJS            = GetAll
KERNEL_MODULE   = bin${SEP}${COMPONENT}
ASFLAGS        += -PD "FreezeDevRel SETL {${FREEZE_DEV_REL}}" -PD "USE_SYNCLIB SETL {${USE_SYNCLIB}}" -PD "RISCOS_KERNEL SETL {TRUE}"
CFLAGS         += -ff -APCS 3/32bit/nofp/noswst -DRISCOS_KERNEL
CUSTOMROM       = custom
CUSTOMEXP       = custom
CUSTOMSA        = custom
EXPORTS         = ${EXP_HDR}.AMBControl \
                  ${EXP_HDR}.DBellDevice \
                  ${EXP_HDR}.EnvNumbers \
                  ${EXP_HDR}.HALDevice \
                  ${EXP_HDR}.HALEntries \
                  ${EXP_HDR}.ModHand \
                  ${EXP_HDR}.OSEntries \
                  ${EXP_HDR}.OSMem \
                  ${EXP_HDR}.OSMisc \
                  ${EXP_HDR}.OSRSI6 \
                  ${EXP_HDR}.PL310 \
                  ${EXP_HDR}.PublicWS \
                  ${EXP_HDR}.RISCOS \
                  ${EXP_HDR}.Variables \
                  ${EXP_HDR}.VduExt \
                  ${EXP_HDR}.VIDCList \
                  ${EXP_HDR}.VideoDevice \
                  ${C_EXP_HDR}.HALDevice \
                  ${C_EXP_HDR}.HALEntries \
                  ${C_EXP_HDR}.ModHand \
                  ${C_EXP_HDR}.OSEntries \
                  ${C_EXP_HDR}.OSMem \
                  ${C_EXP_HDR}.OSMisc \
                  ${C_EXP_HDR}.OSRSI6 \
                  ${C_EXP_HDR}.RISCOS \
                  ${C_EXP_HDR}.Variables \
                  ${C_EXP_HDR}.VduExt \
                  ${C_EXP_HDR}.VIDCList
ifeq (${USE_SYNCLIB},TRUE)
CFLAGS	       += -DUSE_SYNCLIB
LIBS            = ${SYNCLIB}k
endif

#
# AbortTrap:
#
VPATH += aborttrap
OBJS += aborttrap atarm atcontext atinstr aterrors atmem

DECGEN = <Tools$Dir>.Misc.decgen.decgen

# Work out which instructions to include support for; this is just to reduce
# code size, and doesn't affect the handling of the instructions
# Note that FPA is only included in IOMD builds
ABORTTRAP_ACTIONS_ARM = ARMv3 ARMv4 ARMv5TE ARMv6 ARMv6K ARMv6T2 ARMv8 VFP ASIMD

ABORTTRAP_ENCODINGS_ARM = Build:decgen.encodings.ARMv7 \
                          Build:decgen.encodings.ARMv7_ASIMD \
                          Build:decgen.encodings.ARMv7_VFP \
                          Build:decgen.encodings.ARMv8_AArch32 \
                          Build:decgen.encodings.FPA

ifneq (,$(findstring $(MACHINE),IOMD Lazarus))
ABORTTRAP_ACTIONS_ARM = ARMv3 ARMv4 FPA
endif
ifneq (,$(findstring $(MACHINE),Tungsten))
ABORTTRAP_ACTIONS_ARM = ARMv3 ARMv4 ARMv5TE
endif
ifneq (,$(findstring $(MACHINE),ARM11ZF))
ABORTTRAP_ACTIONS_ARM = ARMv3 ARMv4 ARMv5TE ARMv6 ARMv6K VFP
endif
ifneq (,$(findstring $(MACHINE),CortexA7 CortexA8 CortexA9))
ABORTTRAP_ACTIONS_ARM = ARMv3 ARMv4 ARMv5TE ARMv6 ARMv6K ARMv6T2 VFP ASIMD
endif

ABORTTRAP_ACTIONS = ${ABORTTRAP_ACTIONS_ARM}

# Have decgen use a pre-warmed cache file to speed up decoder generation. Please
# remember to submit the files if they change!
ABORTTRAP_CACHE = $(subst $(subst x,,x x),_,$(strip ${ABORTTRAP_ACTIONS_ARM}))

CFLAGS += $(addprefix -DABORTTRAP_,${ABORTTRAP_ACTIONS})

include StdTools
include AAsmModule
include StdRules
ifeq (${USE_SYNCLIB},TRUE)
include AppLibs
endif

# Override this to "TRUE" in the components file if
# you want an odd-numbered (development) build to be
# a 'freezable' build - e.g. with no ROM debug output
FREEZE_DEV_REL ?= FALSE

ROM_OBJECTS = $(addsuffix .o,${OBJS})

#
# AbortTrap:
#

clean ::
        @IfThere aborttrap.c.atarm     Then delete aborttrap.c.atarm

ABORTTRAP_ARM_DEPS = $(addprefix aborttrap.actions.,${ABORTTRAP_ACTIONS_ARM})

aborttrap.c.atarm: $(ABORTTRAP_ARM_DEPS) aborttrap.c.atpre $(ABORTTRAP_ENCODINGS_ARM)
        $(DECGEN) -bits=32 -e "-DCDP={ne(coproc,1)}" "-DLDC_STC={ne(coproc,1)}{ne(coproc,2)}" "-DMRC_MCR={ne(coproc,1)}" -DVFP1=(cond:4) "-DVFP2={ne(cond,15)}" -DAS1(X)=1111001[X] -DAS2=11110100 -DAS3=(cond:4)1110 "-DAS4={ne(cond,15)}" "-DCC={ne(cond,15)}" $(ABORTTRAP_ENCODINGS_ARM) -valid -a $(addprefix aborttrap/actions/,${ABORTTRAP_ACTIONS_ARM}) -default=DEFAULT -o aborttrap/atarm.c -name=aborttrap_arm -pre aborttrap/atpre.c -updatecache aborttrap/cache/${ABORTTRAP_CACHE}

o.atarm: aborttrap.c.atarm
	${CC} ${CFLAGS} -o $@ aborttrap.c.atarm

od.atarm: aborttrap.c.atarm
	${CC} $(filter-out ${C_NO_FNAMES},${CFLAGS}) ${CDFLAGS} -o $@ aborttrap.c.atarm

#
# Custom ROM:
#
rom_custom: ${KERNEL_MODULE}
	@${ECHO} ${COMPONENT}: rom module built

install_rom_custom: ${KERNEL_MODULE}
	${CP} ${KERNEL_MODULE} ${INSTDIR}${SEP}${TARGET} ${CPFLAGS}
	${CP} ${KERNEL_MODULE}_gpa ${INSTDIR}${SEP}${TARGET}_gpa ${CPFLAGS}
	@${ECHO} ${COMPONENT}: rom module installed

inst_dirs:
	${MKDIR} ${EXP_HDR}
	${MKDIR} ${C_EXP_HDR}

install_custom: ${EXPORTS} inst_dirs
	@${ECHO} ${COMPONENT}: header files installed

${KERNEL_MODULE}: ${ROM_OBJECTS} ${DIRS} ${LIBS} kstrip
	${MKDIR} bin
	SetEval KernelBase "4" + STR ( 227858432 + ( HALSize LEFT ( LEN HALSize - 1 ) ) * 1024 )
	Do ${LD} -aif -base <KernelBase> -RW-base 0xff000000 -bin -d -o ${KERNEL_MODULE}_aif ${ROM_OBJECTS} ${LIBS}
	Do kstrip ${KERNEL_MODULE}_aif ${KERNEL_MODULE}
	${TOGPA} -s ${KERNEL_MODULE}_aif ${KERNEL_MODULE}_gpa

GetAll.o: ${TOKHELPSRC}

#
# Custom exports:
#
export_hdrs_custom: ${EXPORTS}
	@${ECHO} ${COMPONENT}: header export complete

export_libs_custom:
        @${ECHO} ${COMPONENT}: no exported libraries

${EXP_HDR}.AMBControl: hdr.AMBControl
	${CP} hdr.AMBControl $@ ${CPFLAGS}

${EXP_HDR}.EnvNumbers: hdr.EnvNumbers
	${CP} hdr.EnvNumbers $@ ${CPFLAGS}

${EXP_HDR}.DBellDevice: hdr.DBellDevice
	${CP} hdr.DBellDevice $@ ${CPFLAGS}

${EXP_HDR}.HALDevice: hdr.HALDevice
	${CP} hdr.HALDevice $@ ${CPFLAGS}

${EXP_HDR}.HALEntries: hdr.HALEntries
	${CP} hdr.HALEntries $@ ${CPFLAGS}

${EXP_HDR}.ModHand: hdr.ModHand
	${CP} hdr.ModHand $@ ${CPFLAGS}

${EXP_HDR}.OSEntries: hdr.OSEntries
	${CP} hdr.OSEntries $@ ${CPFLAGS}

${EXP_HDR}.OSMem: hdr.OSMem
	${CP} hdr.OSMem $@ ${CPFLAGS}

${EXP_HDR}.OSMisc: hdr.OSMisc
	${CP} hdr.OSMisc $@ ${CPFLAGS}

${EXP_HDR}.OSRSI6: hdr.OSRSI6
	${CP} hdr.OSRSI6 $@ ${CPFLAGS}

${EXP_HDR}.PL310: hdr.PL310
	${CP} hdr.PL310 $@ ${CPFLAGS}

${EXP_HDR}.PublicWS: hdr.PublicWS
	${CP} hdr.PublicWS $@ ${CPFLAGS}

${EXP_HDR}.RISCOS: hdr.RISCOS
	${CP} hdr.RISCOS $@ ${CPFLAGS}

${EXP_HDR}.Variables: hdr.Variables
	${CP} hdr.Variables $@ ${CPFLAGS}

${EXP_HDR}.VduExt: hdr.VduExt
	${CP} hdr.VduExt $@ ${CPFLAGS}

${EXP_HDR}.VIDCList: hdr.VIDCList
	${CP} hdr.VIDCList $@ ${CPFLAGS}

${EXP_HDR}.VideoDevice: hdr.VideoDevice
	${CP} hdr.VideoDevice $@ ${CPFLAGS}

${C_EXP_HDR}.HALDevice: Global.h.HALDevice h.HALDevice
	${FAPPEND} $@ h.HALDevice Global.h.HALDevice

${C_EXP_HDR}.HALEntries: hdr.HALEntries
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.HALEntries $@

${C_EXP_HDR}.ModHand: hdr.ModHand
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.ModHand $@

${C_EXP_HDR}.OSEntries: Global.h.OSEntries h.OSEntries
	${FAPPEND} $@ h.OSEntries Global.h.OSEntries

${C_EXP_HDR}.OSMem: hdr.OSMem
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.OSMem $@

${C_EXP_HDR}.OSMisc: hdr.OSMisc
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.OSMisc $@

${C_EXP_HDR}.OSRSI6: hdr.OSRSI6
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.OSRSI6 $@

${C_EXP_HDR}.RISCOS: hdr.RISCOS
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.RISCOS $@

${C_EXP_HDR}.Variables: hdr.Variables
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.Variables $@

${C_EXP_HDR}.VduExt: hdr.VduExt
	${MKDIR} ${C_EXP_HDR}
	${HDR2H} hdr.VduExt $@

${C_EXP_HDR}.VIDCList: Global.h.VIDCList h.VIDCList
	${FAPPEND} $@ h.VIDCList Global.h.VIDCList

Global.h.HALDevice: hdr.HALDevice
	${MKDIR} Global.h
	${HDR2H} hdr.HALDevice $@

Global.h.OSEntries: hdr.OSEntries
	${MKDIR} Global.h
	${HDR2H} hdr.OSEntries $@

Global.h.VIDCList: hdr.VIDCList
	${MKDIR} Global.h
	${HDR2H} hdr.VIDCList $@

clean::
	${XWIPE} Global ${WFLAGS}
	${XWIPE} bin    ${WFLAGS}
	${RM} kstrip

kstrip: kstrip.c
	${MAKE} -f kstrip/mk COMPONENT=kstrip THROWBACK=${THROWBACK}

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
o.GetAll: Hdr:CPU.Arch
o.GetAll: Hdr:Machine.<Machine>
o.GetAll: Hdr:Machine.Machine
o.GetAll: Hdr:HALSize.<HALSize>
o.GetAll: Hdr:ImageSize.<ImageSize>
o.GetAll: Hdr:UserIF.<UserIF>
o.GetAll: Hdr:UserIF.UserIF
o.GetAll: Hdr:CPU.ARM600
o.GetAll: Hdr:IO.IOMD
o.GetAll: Hdr:IO.IOMD
o.GetAll: Hdr:MEMM.VMSAv6
o.GetAll: Hdr:VIDC.VIDC20
o.GetAll: hdr.Options
o.GetAll: Version
o.GetAll: VersionASM
o.GetAll: Hdr:CMOS
o.GetAll: Hdr:Heap
o.GetAll: Hdr:Sprite
o.GetAll: Hdr:PublicWS
o.GetAll: Hdr:HALEntries
o.GetAll: Hdr:HALDevice
o.GetAll: Hdr:OSEntries
o.GetAll: Hdr:Services
o.GetAll: Hdr:FSNumbers
o.GetAll: Hdr:HighFSI
o.GetAll: Hdr:NewErrors
o.GetAll: Hdr:Proc
o.GetAll: Hdr:RS423
o.GetAll: Hdr:ModHand
o.GetAll: Hdr:Variables
o.GetAll: Hdr:EnvNumbers
o.GetAll: Hdr:UpCall
o.GetAll: Hdr:Sound
o.GetAll: Hdr:Pointer
o.GetAll: Hdr:Podule
o.GetAll: Hdr:VduExt
o.GetAll: Hdr:Buffer
o.GetAll: Hdr:Font
o.GetAll: Hdr:DevNos
o.GetAll: Hdr:OsBytes
o.GetAll: Hdr:Internatio
o.GetAll: Hdr:Territory
o.GetAll: Hdr:Countries
o.GetAll: Hdr:Portable
o.GetAll: Hdr:MsgTrans
o.GetAll: Hdr:PaletteV
o.GetAll: Hdr:GraphicsV
o.GetAll: Hdr:VIDCList
o.GetAll: Hdr:Wimp
o.GetAll: Hdr:ColourTran
o.GetAll: Hdr:Debug
o.GetAll: Hdr:FileTypes
o.GetAll: Hdr:RTC
o.GetAll: Hdr:SerialOp
o.GetAll: Hdr:Keyboard
o.GetAll: Hdr:OSMem
o.GetAll: Hdr:OSMisc
o.GetAll: Hdr:OSRSI6
o.GetAll: Hdr:PL310
o.GetAll: hdr:HALDevice
o.GetAll: Hdr:AMBControl
o.GetAll: hdr.KernelWS
o.GetAll: hdr.KeyWS
o.GetAll: hdr.Copro15ops
o.GetAll: Hdr:CPU.Arch
o.GetAll: hdr.ARMops
o.GetAll: s.Kernel
o.GetAll: s.AMBControl.Options
o.GetAll: s.AMBControl.Workspace
o.GetAll: s.ARMops
o.GetAll: s.NewIRQs
o.GetAll: s.Oscli
o.GetAll: s.HeapMan
o.GetAll: s.ModHand
o.GetAll: s.Unsqueeze
o.GetAll: s.ArthurSWIs
o.GetAll: s.VMSAv6
o.GetAll: s.VMSAv6Short
o.GetAll: s.ShortDesc
o.GetAll: s.Exceptions
o.GetAll: s.ChangeDyn
o.GetAll: s.HAL
o.GetAll: s.Arthur2
o.GetAll: s.LibKern
o.GetAll: s.Utility
o.GetAll: s.MoreComms
o.GetAll: s.SysComms
o.GetAll: s.MosDict
o.GetAll: s.TokHelpSrc
o.GetAll: s.Convrsions
o.GetAll: s.MoreSWIs
o.GetAll: s.ExtraSWIs
o.GetAll: s.HeapSort
o.GetAll: s.Arthur3
o.GetAll: s.SWINaming
o.GetAll: s.TickEvents
o.GetAll: s.NewReset
o.GetAll: s.MsgCode
o.GetAll: s.Middle
o.GetAll: s.Super1
o.GetAll: s.MemInfo
o.GetAll: s.CPUFeatures
o.GetAll: s.MemMap2
o.GetAll: s.TaskControl
o.GetAll: s.vdu.VduDecl
o.GetAll: s.vdu.legacymodes
o.GetAll: s.vdu.VduModes
o.GetAll: s.vdu.VduDriver
o.GetAll: s.vdu.VduGrafDec
o.GetAll: s.vdu.VduSWIs
o.GetAll: s.vdu.VduPalette
o.GetAll: s.vdu.vdupalxx
o.GetAll: s.vdu.VduPlot
o.GetAll: s.vdu.VduGrafA
o.GetAll: s.vdu.VduGrafB
o.GetAll: s.vdu.VduGrafC
o.GetAll: s.vdu.VduGrafD
o.GetAll: s.vdu.VduGrafE
o.GetAll: s.vdu.VduGrafF
o.GetAll: s.vdu.VduGrafG
o.GetAll: s.vdu.VduGrafH
o.GetAll: s.vdu.VduGrafI
o.GetAll: s.vdu.VduGrafJ
o.GetAll: s.vdu.VduGrafK
o.GetAll: s.vdu.VduGrafL
o.GetAll: s.vdu.VduGrafV
o.GetAll: s.vdu.VduGrafHAL
o.GetAll: s.vdu.VduWrch
o.GetAll: s.vdu.Vdu23
o.GetAll: s.vdu.VduPointer
o.GetAll: s.vdu.Vdu5
o.GetAll: s.vdu.VduCurSoft
o.GetAll: s.vdu.VduTTX
o.GetAll: s.vdu.VduFontL1
o.GetAll: s.PMF.osinit
o.GetAll: s.PMF.oseven
o.GetAll: s.PMF.osbyte
o.GetAll: s.PMF.osword
o.GetAll: s.PMF.realtime
o.GetAll: s.PMF.i2cutils
o.GetAll: s.PMF.IIC
o.GetAll: s.PMF.oswrch
o.GetAll: s.PMF.buffer
o.GetAll: s.PMF.key
o.GetAll: s.PMF.mouse
o.GetAll: s.AMBControl.AMB
o.GetAll: s.AMBControl.main
o.GetAll: s.AMBControl.allocate
o.GetAll: s.AMBControl.deallocate
o.GetAll: s.AMBControl.growshrink
o.GetAll: s.AMBControl.handler
o.GetAll: s.AMBControl.mapslot
o.GetAll: s.AMBControl.mapsome
o.GetAll: s.AMBControl.readinfo
o.GetAll: s.AMBControl.growp
o.GetAll: s.AMBControl.shrinkp
o.GetAll: s.AMBControl.Memory
o.GetAll: s.AMBControl.memmap
o.aborttrap:	aborttrap.c.aborttrap
o.aborttrap:	aborttrap.h.aborttrap
o.aborttrap:	C:Global.h.OSMisc
o.aborttrap:	aborttrap.^.h.psr
o.aborttrap:	aborttrap.h.atcontext
o.aborttrap:	C:h.kernel
o.aborttrap:	C:Global.h.OSMem
o.aborttrap:	aborttrap.^.h.psr
o.aborttrap:	aborttrap.^.h.kerneliface
o.aborttrap:	C:h.kernel
o.aborttrap:	aborttrap.h.aterrors
o.aborttrap:	C:Global.h.RISCOS
o.atarm:	aborttrap.c.atarm
o.atarm:	aborttrap.h.aborttrap
o.atarm:	C:Global.h.OSMisc
o.atarm:	aborttrap.^.h.psr
o.atarm:	aborttrap.h.atcontext
o.atarm:	C:h.kernel
o.atarm:	C:Global.h.OSMem
o.atarm:	aborttrap.^.h.psr
o.atarm:	aborttrap.^.h.kerneliface
o.atarm:	C:h.kernel
o.atarm:	aborttrap.h.aterrors
o.atarm:	aborttrap.c.atinstr
o.atarm:	aborttrap.h.atinstr
o.atarm:	aborttrap.h.atcontext
o.atarm:	aborttrap.h.atsupport
o.atarm:	aborttrap.h.aborttrap
o.atarm:	aborttrap.h.aterrors
o.atcontext: aborttrap.s.atcontext
o.atcontext: Hdr:ListOpts
o.atcontext: Hdr:Macros
o.atcontext: Hdr:System
o.atcontext: Hdr:SWIs
o.atcontext: Hdr:CPU.Arch
o.atcontext: Hdr:Machine.<Machine>
o.atcontext: Hdr:Machine.Machine
o.atcontext: Hdr:CPU.Generic26
o.atcontext: Hdr:CPU.Generic32
o.atcontext: Hdr:IO.GenericIO
o.atcontext: Hdr:RISCOS
o.atcontext: Hdr:CPU.Arch
o.atcontext: Hdr:APCS.APCS-32
o.atcontext: Hdr:APCS.Common
o.atinstr:	aborttrap.c.atinstr
o.atinstr:	aborttrap.h.atinstr
o.atinstr:	aborttrap.h.atcontext
o.atinstr:	C:h.kernel
o.atinstr:	C:Global.h.OSMem
o.atinstr:	aborttrap.^.h.psr
o.atinstr:	aborttrap.h.atsupport
o.atinstr:	aborttrap.h.aborttrap
o.atinstr:	C:Global.h.OSMisc
o.atinstr:	aborttrap.^.h.psr
o.atinstr:	aborttrap.h.atcontext
o.atinstr:	aborttrap.^.h.kerneliface
o.atinstr:	C:h.kernel
o.aterrors:	aborttrap.c.aterrors
o.aterrors:	C:h.kernel
o.aterrors:	C:Global.h.NewErrors
o.aterrors:	aborttrap.h.aterrors
o.atmem:	aborttrap.c.atmem
o.atmem:	C:h.kernel
o.atmem:	aborttrap.h.aborttrap
o.atmem:	C:Global.h.OSMisc
o.atmem:	aborttrap.^.h.psr
o.atmem:	aborttrap.h.atcontext
o.atmem:	C:h.kernel
o.atmem:	C:Global.h.OSMem
o.atmem:	aborttrap.^.h.psr
o.atmem:	aborttrap.^.h.kerneliface
o.atmem:	C:h.kernel
o.atmem:	aborttrap.h.aterrors
o.atmem:	aborttrap.^.h.kerneliface
