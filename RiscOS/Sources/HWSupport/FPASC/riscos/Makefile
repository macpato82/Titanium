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
# Makefile for Floating Point Accelerator Support Code (FPASC)

COMPONENT ?= FPEmulator
SA_MODULE  = FPERAM${SUFFIX_MODULE}
ROM_SOURCE = ${MACHINE}.s
HEADER1    = FPEmulator

FPEANCHOR ?= Low
# 32bit-compatible RAM builds store FPEAnchor locally, so that they're compatible with kernels which use high or low zero page workspace. But this means the module must write to its own image to set its workspace pointer.
# 26bit-only builds can stick with the legacy low FPEAnchor location, avoiding the need for the module to self-modify.
ifeq (${FPE_APCS},3/26bit)
FPEANCHOR_RAM ?= Low
else
FPEANCHOR_RAM ?= Local
endif

ifeq (,$(filter ${MAKECMDGOALS},rom install_rom))
ASFLAGS += -PD "FPEAnchorType SETS \"${FPEANCHOR_RAM}\""
else
ASFLAGS += -PD "FPEAnchorType SETS \"${FPEANCHOR}\""
endif
ASFLAGS += -APCS ${FPE_APCS}

ifeq (,${MAKE_VERSION})
ASFLAGS += -PD "CoreDir SETS \"^.coresrc.s.\"" -PD "VeneerDir SETS \"^.vensrc.riscos.\"" -PD "FileExt SETS \"\""   -I^
else
ASFLAGS += -PD "CoreDir SETS \"coresrc/\""     -PD "VeneerDir SETS \"vensrc/riscos/\""   -PD "FileExt SETS \".s\""
ifeq (,${FPE_APCS})
# If no explicit PCS selection, pivot to the All32 target
MACHINE  = All32
FPE_APCS = 3/32bit
endif
# The layout of source files in this component is rather non-standard!

SYMLINK_DEPEND = symlink_extra
symlink_extra:
	$(foreach linksource,$(wildcard ../coresrc/s/*), \
		$(shell \
			leaf=`basename ${linksource}`; \
			[ -d ${linksource} ] || [ -L objs/coresrc/$$leaf.s ] || mkdir -p objs/coresrc; \
			[ -d ${linksource} ] || [ -L objs/coresrc/$$leaf.s ] || ln -s ../../${linksource} objs/coresrc/$$leaf.s; \
		) \
	)
	$(foreach linksource,$(wildcard ../vensrc/riscos/*), \
		$(shell \
			leaf=`basename ${linksource}`; \
			[ -d ${linksource} ] || [ -L objs/vensrc/riscos/$$leaf.s ] || mkdir -p objs/vensrc/riscos; \
			[ -d ${linksource} ] || [ -L objs/vensrc/riscos/$$leaf.s ] || ln -s ../../../${linksource} objs/vensrc/riscos/$$leaf.s; \
		) \
	)
	@[ -L objs/VersionASM ] || ln -s ../../VersionASM objs/VersionASM
endif

include AAsmModule

# Dynamic dependencies:
o.CortexA7.FPEmulator: s.CortexA7
o.CortexA7.FPEmulator: ^.coresrc.s.main
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.defaults
o.CortexA7.FPEmulator: ^.coresrc.^.vensrc.riscos.options
o.CortexA7.FPEmulator: Hdr:ListOpts
o.CortexA7.FPEmulator: Hdr:Macros
o.CortexA7.FPEmulator: Hdr:Services
o.CortexA7.FPEmulator: Hdr:CPU.Arch
o.CortexA7.FPEmulator: Hdr:Machine.<Machine>
o.CortexA7.FPEmulator: Hdr:Machine.Machine
o.CortexA7.FPEmulator: Hdr:ModHand
o.CortexA7.FPEmulator: Hdr:EnvNumbers
o.CortexA7.FPEmulator: ^.coresrc.^.vensrc.riscos.FPEMacros
o.CortexA7.FPEmulator: Hdr:PublicWS
o.CortexA7.FPEmulator: Hdr:OSRSI6
o.CortexA7.FPEmulator: ^.VersionASM
o.CortexA7.FPEmulator: Hdr:SWIs
o.CortexA7.FPEmulator: Hdr:RISCOS
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.optcheck
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.regnames
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.armdefs
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.fpadefs
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.wsdefs
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.vensrc.riscos.ctxtws
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.vensrc.riscos.globalws
o.CortexA7.FPEmulator: ^.coresrc.^.vensrc.riscos.start
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.s.toplevel
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.macros
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.fpaundef
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.fpeundef
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.ldst
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.rounding
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.nans
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.arith
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.transhw
o.CortexA7.FPEmulator: ^.coresrc.^.coresrc.^.coresrc.s.interf
o.CortexA7.FPEmulator: ^.coresrc.^.vensrc.riscos.end
