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
# Makefile for C and RISC_OS Headers, Libraries and Stubs
#
#---------------------------------------------------------------------------------------------
# Library             Exported as             Macro        Runs in   Type          Use
#---------------------------------------------------------------------------------------------
# lib.stubs           CLib:o.stubs            ${CLIB}       RAM      C_Stubs
# lib.risc_oslib      RISC_OSLib:o.risc_oslib ${RLIB}
# lib.rstubs          RISC_OSLib:o.rstubs     ${RSTUBS}     RAM      RISC_OSStubs
# lib.romcstubs       RISC_OSLib:o.romcstubs  ${ROMCSTUBS}  ROM      C_Stubs       Module_Only
# lib.romstubs        RISC_OSLib:o.romstubs   ${ROMSTUBS}   ROM      RISC_OSStubs  Module_Only
# lib.romastubs                                             ROM      RISC_OSStubs  Apps_Only
# lib.ansilib
# lib.ansilibm
# lib.clib
# lib.OverMgr         CLib:o.overmgr
# lib.riscoslibm
#---------------------------------------------------------------------------------------------
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 20-Jul-94  AMcC         Created.
# 28-Sep-94  AMcC         Now exports some internal headers for Edit
#

# Set default component and target.
# Alternative possible target is RISC_OSLib
COMPONENT ?= SharedCLibrary
TARGET    ?= CLib

#
# Paths
#
EXP_HDR = <export$dir>
LIBDIR  = <Lib$Dir>

#
# Generic options:
#
include Makefiles:StdTools

# Note the output redirection on the end of this macro to enable parameters
# to match those of the old application xtentries.
XTENT   = ${PERL} build:xtentries >

DIFF    = gnu.diff -df >null:

AFLAGS  = ${STDTOOLOPTIONS}
# The zz switch stops library static data being placed in a zero-init area
CFLAGS  = -c ${STDTOOLOPTIONS} ${INCLUDES} -DDDE -fK -zz10000000 -jC:
CPFLAGS = ~cfr~v
WFLAGS  = ~c~r~v

# create a new library, add symbol table
LIBFLAGS = -c -o

#
# Flags common to *all* phases of linking
#
LDFLAGS = -linkversion 519

#
# Include files
#
INCLUDES =

STK_EXTN =

# RISCOS_Lib txt flags
DFLAGS =\
 -DFIELDNUM\
 -DBIG_WINDOWS\
 -DSETOPTIONS\
 -DALLOW_OLD_PATTERNS\
 -DSET_MISC_OPTIONS

# ANSILib and stub flags
CLFLAGS =\
 -DDEFAULT_TEXT

ALFLAGS =\
 -PD "DEFAULT_TEXT SETL {TRUE}"

VLFLAGS =\
 -DLIB_SHARED="\"\""

# Shared C Library flags
CSFLAGS =\
 -I@,^.clib\
 -DSHARED_C_LIBRARY\
 -DUROM\
 ${SCL_APCS}

VSFLAGS =\
 -DLIB_SHARED="\"Shared \""

ASFLAGS =\
 -PD "SHARED_C_LIBRARY SETL {TRUE}"\
 ${SCL_APCS}

# Setting UROM on the command-line for rlib
UROM_DEFS =\
 -PD "UROM SETL {FALSE}"
UROM_ROM_DEFS =\
 -PD "UROM SETL {TRUE}"

VPATH = @ kernel clib rlib

.SUFFIXES:  .o .m_o .o_rl .m_o_rl .rm_o .rm_o_rl
#
# Rule patterns
#
.c.o:;        ${CC} ${CFLAGS} -fah ${CLFLAGS} -o $@ $<
.c.m_o:;      ${CC} ${CFLAGS} -ffah -zM ${CLFLAGS} -o $@ $<
.c.rm_o:;     ${CC} ${CFLAGS} -ffah -zm1 ${CSFLAGS} ${OPTIONS} -o $@ $<
.c.o_rl:;     ${CC} ${CFLAGS} -fah ${DFLAGS} -o $@ $<
.c.m_o_rl:;   ${CC} ${CFLAGS} -ffah ${DFLAGS} -zM -o $@ $<
.c.rm_o_rl:;  ${CC} ${CFLAGS} -ffah ${DFLAGS} -zm1 ${CSFLAGS} ${OPTIONS} -o $@ $<
.s.o:;        ${AS} ${AFLAGS} ${ALFLAGS} $< $@
.s.m_o:;      ${AS} ${AFLAGS} ${ALFLAGS} $< $@
.s.o_rl:;     ${AS} ${AFLAGS} $< $@
.s.m_o_rl:;   ${AS} ${AFLAGS} $< $@
.s.rm_o:;     ${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} $< $@
.s.rm_o_rl:;  ${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} $< $@

#
# Libraries
#
CLIB      = CLIB:o.stubs
RLIB      = RISCOSLIB:o.risc_oslib
RSTUBS    = RISCOSLIB:o.rstubs
ROMSTUBS  = RISCOSLIB:o.romstubs
ROMCSTUBS = RISCOSLIB:o.romcstubs
ABSSYM    = RISC_OSLib:o.abssym
C_ABSSYM  = RISC_OSLib:o.c_abssym
A_ABSSYM  = RISC_OSLib:o.a_abssym

#
# Program specific options:
#
HEADERS =\
 CLIB:h.assert \
 CLIB:h.complex \
 CLIB:h.ctype \
 CLIB:h.errno \
 CLIB:h.fenv \
 CLIB:h.float \
 CLIB:h.inttypes \
 CLIB:h.iso646 \
 CLIB:h.kernel \
 CLIB:h.limits \
 CLIB:h.locale \
 CLIB:h.math \
 CLIB:h.setjmp \
 CLIB:h.signal \
 CLIB:h.stdalign \
 CLIB:h.stdarg \
 CLIB:h.stdatomic \
 CLIB:h.stdbool \
 CLIB:h.stddef \
 CLIB:h.stdint \
 CLIB:h.stdio \
 CLIB:h.stdlib \
 CLIB:h.stdnoreturn \
 CLIB:h.string \
 CLIB:h.swis \
 CLIB:h.tgmath \
 CLIB:h.time \
 CLIB:h.uchar \
 CLIB:h.varargs \
 CLIB:h.wchar \
 CLIB:h.wctype \
 F77Lib:f.swis \
 RISC_OSLib:h.akbd \
 RISC_OSLib:h.alarm \
 RISC_OSLib:h.baricon \
 RISC_OSLib:h.bbc \
 RISC_OSLib:h.colourmenu \
 RISC_OSLib:h.colourpick \
 RISC_OSLib:h.colourtran \
 RISC_OSLib:h.coords \
 RISC_OSLib:h.dbox \
 RISC_OSLib:h.dboxfile \
 RISC_OSLib:h.dboxquery \
 RISC_OSLib:h.dboxtcol \
 RISC_OSLib:h.dragasprit \
 RISC_OSLib:h.drawfdiag \
 RISC_OSLib:h.drawferror \
 RISC_OSLib:h.drawfobj \
 RISC_OSLib:h.drawftypes \
 RISC_OSLib:h.drawmod \
 RISC_OSLib:h.event \
 RISC_OSLib:h.fileicon \
 RISC_OSLib:h.flex \
 RISC_OSLib:h.font \
 RISC_OSLib:h.fontlist \
 RISC_OSLib:h.fontselect \
 RISC_OSLib:h.heap \
 RISC_OSLib:h.help \
 RISC_OSLib:h.jpeg \
 RISC_OSLib:h.magnify \
 RISC_OSLib:h.menu \
 RISC_OSLib:h.msgs \
 RISC_OSLib:h.msgtrans \
 RISC_OSLib:h.os \
 RISC_OSLib:h.pointer \
 RISC_OSLib:h.print \
 RISC_OSLib:h.res \
 RISC_OSLib:h.resspr \
 RISC_OSLib:h.saveas \
 RISC_OSLib:h.sprite \
 RISC_OSLib:h.template \
 RISC_OSLib:h.trace \
 RISC_OSLib:h.txt \
 RISC_OSLib:h.txtedit \
 RISC_OSLib:h.txtopt \
 RISC_OSLib:h.txtscrap \
 RISC_OSLib:h.txtwin \
 RISC_OSLib:h.typdat \
 RISC_OSLib:h.visdelay \
 RISC_OSLib:h.werr \
 RISC_OSLib:h.wimp \
 RISC_OSLib:h.wimpt \
 RISC_OSLib:h.win \
 RISC_OSLib:h.xferrecv \
 RISC_OSLib:h.xfersend

LIBRARIES =\
 Clib:o.ansilib \
 Clib:o.ansilibm \
 CLib:o.stubs \
 RISC_OSLib:o.risc_oslib \
 RISC_OSLib:o.riscoslibm \
 RISC_OSLib:o.rstubs \
 RISC_OSLib:o.romstubs \
 RISC_OSLib:o.romastubs \
 RISC_OSLib:o.romcstubs

EXPORTED_LIBS =\
 Clib:o.ansilib \
 Clib:o.ansilibm \
 CLib:o.stubs \
 RISC_OSLib:o.risc_oslib \
 RISC_OSLib:o.riscoslibm \
 RISC_OSLib:o.rstubs \
 RISC_OSLib:o.romstubs \
 RISC_OSLib:o.romcstubs

MODWRAP   = RISC_OSLib:s.modulewrap

OBJECT    = aof.${TARGET}
EXPORTS   = ${MODWRAP} \
            ${EXPORTED_LIBS} \
            ${HEADERS}

#
# Objects for Clib:o.ansilib
#
ANSI_OBJS =\
 o.alloc o.armprof o.armsys o.clib o.ctype o.error o.fpprintf \
 o.kernel o.locale o.math o.memcpset o.overmgr o.printf o.scanf \
 o.signal o.sort o.stdio o.stdlib o.string o.swiv o.time o.fenv \
 o.longlong o.mathl o.mathasm o.complex o.cxsupport

#
# Objects for Clib:o.ansilibm
#
ANSI_MOD_OBJS =\
 m_o.alloc m_o.armprof m_o.armsys m_o.clib m_o.ctype m_o.error m_o.fpprintf \
 m_o.kernel m_o.locale m_o.math m_o.memcpset m_o.overmgr m_o.printf m_o.scanf \
 m_o.signal m_o.sort m_o.stdio m_o.stdlib m_o.string m_o.swiv m_o.time m_o.fenv \
 m_o.longlong m_o.mathl m_o.mathasm m_o.complex m_o.cxsupport m_o.cl_stub_m

#
# Objects for softload shared library
#
RM_OBJS =\
 rm_o.k_modbody \
 rm_o.cl_modbody \
 rm_o.alloc \
 rm_o.armsys \
 rm_o.complex \
 rm_o.ctype \
 rm_o.cxsupport \
 rm_o.error \
 rm_o.fpprintf \
 rm_o.locale \
 rm_o.longlong \
 rm_o.math \
 rm_o.mathasm \
 rm_o.memcpset \
 rm_o.printf \
 rm_o.scanf \
 rm_o.signal \
 rm_o.sort \
 rm_o.stdio \
 rm_o.stdlib \
 rm_o.string \
 rm_o.time \
 rm_o.fenv \
 rm_o.swiv \
 rm_o.cl_spare

#
# Objects for lib.clib (relocatable module)
#
CLIB_MOD_OBJS =\
 rm_o.cl_rmhdr \
 o.initmodule \
 ${RM_OBJS}

#
# Objects for a C library only ROM shared library
#
CLIB_ROM_OBJS =\
 rm_o.cl_rmhdr \
 rm_o.initmodule \
 ${RM_OBJS}

#
# Objects for ROM shared library
#
ROM_OBJS =\
 rm_o.cl_rmhdr \
 rm_o_rl.initmodule \
 ${RM_OBJS} \
 rm_o_rl.rl_modbody \
 rm_o_rl.akbd \
 rm_o_rl.alarm \
 rm_o_rl.baricon \
 rm_o_rl.bastxt \
 rm_o_rl.bbc \
 rm_o_rl.colourmenu \
 rm_o_rl.colourtran \
 rm_o_rl.dbox \
 rm_o_rl.dboxfile \
 rm_o_rl.dboxquery \
 rm_o_rl.dboxtcol \
 rm_o_rl.dragasprit \
 rm_o_rl.drawfobj \
 rm_o_rl.drawmod \
 rm_o_rl.event \
 rm_o_rl.fileicon \
 rm_o_rl.flex \
 rm_o_rl.font \
 rm_o_rl.heap \
 rm_o_rl.jpeg \
 rm_o_rl.magnify \
 rm_o_rl.menu \
 rm_o_rl.msgs \
 rm_o_rl.os \
 rm_o_rl.pointer \
 rm_o_rl.poll \
 rm_o_rl.res \
 rm_o_rl.resspr \
 rm_o_rl.saveas \
 rm_o_rl.sprite \
 rm_o_rl.swi \
 rm_o_rl.template \
 rm_o_rl.txt \
 rm_o_rl.txt1 \
 rm_o_rl.txt3 \
 rm_o_rl.txtar \
 rm_o_rl.txtedit \
 rm_o_rl.txtfile \
 rm_o_rl.txtfind \
 rm_o_rl.txtmisc \
 rm_o_rl.txtoptmenu \
 rm_o_rl.txtscrap \
 rm_o_rl.txtundo \
 rm_o_rl.txtwin \
 rm_o_rl.visdelay \
 rm_o_rl.werr \
 rm_o_rl.wimp \
 rm_o_rl.wimpt \
 rm_o_rl.win \
 rm_o_rl.xferrecv \
 rm_o_rl.xfersend \
 rm_o_rl.help \
 rm_o_rl.print \
 rm_o_rl.txtopt \
 rm_o_rl.txtregexp \
 rm_o_rl.rl_spare

#
# Objects for RISCOSLIB:o.risc_oslib
#
RLIB_OBJS =\
 o_rl.akbd o_rl.alarm o_rl.baricon o_rl.bastxt o_rl.bbc o_rl.colourmenu \
 o_rl.colourtran o_rl.coords o_rl.dbox o_rl.dboxfile o_rl.dboxquery \
 o_rl.dboxtcol o_rl.dragasprit o_rl.drawcheck o_rl.drawfdiag o_rl.drawfiles \
 o_rl.drawfobj o_rl.drawmod o_rl.drawtextc o_rl.event o_rl.fileicon o_rl.flex \
 o_rl.font o_rl.fontlist o_rl.fontselect o_rl.heap o_rl.help o_rl.jpeg o_rl.magnify o_rl.menu \
 o_rl.msgs o_rl.os o_rl.pointer o_rl.poll o_rl.print o_rl.res o_rl.resspr \
 o_rl.saveas o_rl.sprite o_rl.swi o_rl.template o_rl.trace o_rl.txt o_rl.txt1 \
 o_rl.txt3 o_rl.txtar o_rl.txtedit o_rl.txtfile o_rl.txtfind o_rl.txtmisc \
 o_rl.txtopt o_rl.txtoptmenu o_rl.txtregexp o_rl.txtscrap o_rl.txtundo o_rl.txtwin \
 o_rl.visdelay o_rl.werr o_rl.wimp o_rl.wimpt o_rl.win o_rl.xferrecv o_rl.xfersend

#
# Objects for RISCOSLIB:o.riscoslibm
#
RLIB_MOD_OBJS =\
 m_o_rl.akbd m_o_rl.alarm m_o_rl.baricon m_o_rl.bastxt m_o_rl.bbc \
 m_o_rl.colourmenu m_o_rl.colourtran m_o_rl.coords m_o_rl.dbox \
 m_o_rl.dboxfile m_o_rl.dboxquery  m_o_rl.dboxtcol m_o_rl.dragasprit \
 m_o_rl.drawcheck m_o_rl.drawfdiag m_o_rl.drawfiles m_o_rl.drawfobj m_o_rl.drawmod \
 m_o_rl.drawtextc m_o_rl.event m_o_rl.fileicon m_o_rl.flex m_o_rl.font \
 m_o_rl.fontlist m_o_rl.fontselect m_o_rl.heap m_o_rl.help m_o_rl.jpeg m_o_rl.magnify \
 m_o_rl.menu m_o_rl.msgs m_o_rl.os m_o_rl.pointer m_o_rl.poll m_o_rl.print \
 m_o_rl.res m_o_rl.resspr m_o_rl.saveas m_o_rl.sprite m_o_rl.swi m_o_rl.template \
 m_o_rl.trace m_o_rl.txt m_o_rl.txt1 m_o_rl.txt3 m_o_rl.txtar m_o_rl.txtedit \
 m_o_rl.txtfile m_o_rl.txtfind m_o_rl.txtmisc m_o_rl.txtopt m_o_rl.txtoptmenu \
 m_o_rl.txtregexp m_o_rl.txtscrap m_o_rl.txtundo m_o_rl.txtwin m_o_rl.visdelay \
 m_o_rl.werr m_o_rl.wimp m_o_rl.wimpt m_o_rl.win m_o_rl.xferrecv m_o_rl.xfersend

#
# Build rules:
#
rom: ${OBJECT}
	@echo ${COMPONENT}: rom library built

export: export_${PHASE}
	@echo ${COMPONENT}: export complete (${PHASE})

export_hdrs: ${EXP_HDR}.SharedCLib; @

export_libs: ${EXPORTS} dirs; @

install: install-${INSTTYPE}

install-: lib.clib
	${MKDIR}  ${INSTDIR}
	${CP} lib.clib ${INSTDIR}.${TARGET} ${CPFLAGS}
	@echo ${COMPONENT}: ram module installed

install-libraries: lib.ansilib lib.ansilibm o.overmgr lib.stubs lib.risc_oslib lib.riscoslibm
	${MKDIR}                  ${INSTDIR}.CLib.h
	${CP} CLIB:h.*            ${INSTDIR}.CLib.h.*                  ${CPFLAGS}
	${MKDIR}                  ${INSTDIR}.CLib.o
	${CP} lib.ansilib         ${INSTDIR}.CLib.o.*                  ${CPFLAGS}
	${CP} lib.ansilibm        ${INSTDIR}.CLib.o.*                  ${CPFLAGS}
	${CP} o.overmgr           ${INSTDIR}.CLib.o.*                  ${CPFLAGS}
	${CP} lib.stubs           ${INSTDIR}.CLib.o.*                  ${CPFLAGS}
	${MKDIR}                  ${INSTDIR}.F77Lib.f
	${CP} F77LIB:f.*          ${INSTDIR}.F77Lib.f.*                ${CPFLAGS}
	${MKDIR}                  ${INSTDIR}.RISC_OSLib.h
	${CP} RISC_OSLib:h.*      ${INSTDIR}.RISC_OSLib.h.*            ${CPFLAGS}
	${MKDIR}                  ${INSTDIR}.RISC_OSLib.s
	${CP} s.modulewrap        ${INSTDIR}.RISC_OSLib.s.modulewrap   ${CPFLAGS}
	${MKDIR}                  ${INSTDIR}.RISC_OSLib.o
	${CP} lib.risc_oslib      ${INSTDIR}.RISC_OSLib.o.*            ${CPFLAGS}
	${CP} lib.riscoslibm      ${INSTDIR}.RISC_OSLib.o.*            ${CPFLAGS}
	@echo ${COMPONENT}: libraries installed

install_rom: ${OBJECT}
	${CP} ${OBJECT} ${INSTDIR}.${TARGET} ${CPFLAGS}
	@echo ${COMPONENT}: rom library installed

clean: clean_all

clean_all:
	${XWIPE} o.* ${WFLAGS}
	${XWIPE} m_o.* ${WFLAGS}
	${XWIPE} o_rl.* ${WFLAGS}
	${XWIPE} m_o_rl.* ${WFLAGS}
	${XWIPE} rm_o.* ${WFLAGS}
	${XWIPE} rm_o_rl.* ${WFLAGS}
	${XWIPE} linked.* ${WFLAGS}
	${XWIPE} map.* ${WFLAGS}
	${XWIPE} aof.* ${WFLAGS}
	${XWIPE} syms.* ${WFLAGS}
	${RM} derived.swis
	${RM} derived.swisf
	${RM} s.swioptions
	${XWIPE} lib.* ${WFLAGS}
	@echo ${COMPONENT}: cleaned

resources:
	${MKDIR} ${RESDIR}.RISC_OSLib
	${MKDIR} ${RESDIR}.CLib
	IfThere clib.Resources.${LOCALE}.<System>.Messages Then Set MessagesFile clib.Resources.${LOCALE}.<System>.Messages else Set MessagesFile clib.Resources.${LOCALE}.Messages
	${CP} <MessagesFile> ${RESDIR}.CLib.Messages ${CPFLAGS}
	IfThere rlib.Resources.${LOCALE}.<System>.Messages Then Set MessagesFile rlib.Resources.${LOCALE}.<System>.Messages else Set MessagesFile rlib.Resources.${LOCALE}.Messages
	${CP} <MessagesFile> ${RESDIR}.RISC_OSLib.Messages ${CPFLAGS}
	@echo ${COMPONENT}: resource files copied

BBETYPE = clibrary
bbe-clibrary: bbe-generic
	${MKDIR} ${BBEDIR}.clib.Resources.${LOCALE}
	${MKDIR} ${BBEDIR}.rlib.Resources.${LOCALE}
	${MKDIR} ${BBEDIR}.aof
	${MKDIR} ${BBEDIR}.map
	${MKDIR} ${BBEDIR}.syms
	${MKDIR} ${BBEDIR}.linked
	${MKDIR} ${BBEDIR}.kernel.s
	${MKDIR} ${BBEDIR}.clib.s
	${MKDIR} ${BBEDIR}.rlib.s
	BBE_Export_Dir clib.Resources.${LOCALE}.${SYSTEM}
	BBE_Export_File clib.Resources.${LOCALE}.Messages
	BBE_Export_Dir rlib.Resources.${LOCALE}.${SYSTEM}
	BBE_Export_File rlib.Resources.${LOCALE}.Messages
	BBE_Export_File rlib.swi
	BBE_Export_File kernel.s.k_entries
	BBE_Export_File kernel.s.k_entries2
	BBE_Export_File clib.s.cl_entries
	BBE_Export_File clib.s.cl_entry2
	BBE_Export_File rlib.s.rl_entries
	BBE_Export_File aof.${TARGET}
	${CP} clib.rom_link_v ${VERBATIMROMLINK} ${CPFLAGS}

dirs:
	${MKDIR} aof
	${MKDIR} derived
	${MKDIR} lib
	${MKDIR} linked
	${MKDIR} map
	${MKDIR} m_o
	${MKDIR} m_o_rl
	${MKDIR} o
	${MKDIR} o_rl
	${MKDIR} rm_o
	${MKDIR} rm_o_rl
	${MKDIR} syms
	${MKDIR} ${LIBDIR}
	${MKDIR} ${LIBDIR}.CLib
	${MKDIR} ${LIBDIR}.CLib.h
	${MKDIR} ${LIBDIR}.CLib.o
	${MKDIR} ${LIBDIR}.F77Lib.f
	${MKDIR} ${LIBDIR}.RISC_OSLib
	${MKDIR} ${LIBDIR}.RISC_OSLib.h
	${MKDIR} ${LIBDIR}.RISC_OSLib.s
	${MKDIR} ${LIBDIR}.RISC_OSLib.o

#
# ROM target {re-linked at ROM Image build time}
#
aof.RISC_OSLib: ${ROM_OBJS}
	${LD} ${LDFLAGS} -o $@ -aof ${ROM_OBJS}

aof.CLib: ${CLIB_ROM_OBJS}
	${LD} ${LDFLAGS} -o $@ -aof ${CLIB_ROM_OBJS}

#
# Final link for the ROM Image {using given base address}
#
rom_link_Entries:
	${XTENT} syms.C_Entries kernel.s.k_entries kernel.s.k_entries2 clib.s.cl_entries clib.s.cl_entry2 clib.s.cl_entry3 clib.s.cl_entry4 clib.s.cl_entry5
	print rlib.swi { >> syms.C_Entries }
	${XTENT} syms.A_Entries1 kernel.s.k_entries clib.s.cl_entries
	egrep -v "^(0x00000000 . )?_swix?$" < syms.A_Entries1 > syms.A_Entries
	${RM} syms.A_Entries1

rom_link_RISC_OSLib: ${ROM_OBJS} rom_link_Entries
	${XTENT} syms.Entries kernel.s.k_entries kernel.s.k_entries2 clib.s.cl_entries clib.s.cl_entry2 clib.s.cl_entry3 clib.s.cl_entry4 clib.s.cl_entry5 rlib.s.rl_entries
	print rlib.swi { >> syms.Entries }
	${LD} ${LDFLAGS} -o linked.RISC_OSLib ${ROM_OBJS} \
              -symdefs syms.C_Entries \
              -symdefs syms.A_Entries \
              -symdefs syms.Entries \
              -symbols syms.${TARGET} \
              -bin -base ${ADDRESS} \
              -map > map.${TARGET}

rom_link_CLib: ${CLIB_ROM_OBJS} rom_link_Entries
	${XTENT} syms.Entries kernel.s.k_entries kernel.s.k_entries2 clib.s.cl_entries clib.s.cl_entry2 clib.s.cl_entry3 clib.s.cl_entry4 clib.s.cl_entry5
	print rlib.swi { >> syms.Entries }
	${LD} ${LDFLAGS} -o linked.CLib ${CLIB_ROM_OBJS} \
              -symdefs syms.C_Entries \
              -symdefs syms.A_Entries \
              -symdefs syms.Entries \
              -symbols syms.${TARGET} \
              -bin -base ${ADDRESS} \
              -map > map.${TARGET}

rom_link: rom_link_${TARGET}
	${CP} linked.${TARGET} ${LINKDIR}.${TARGET} ${CPFLAGS}
	${CP} syms.${TARGET} ${LINKDIR}.${TARGET}_sym ${CPFLAGS}
	|
	${CP} syms.Entries ${ABSSYM} ${CPFLAGS}
	${CP} syms.C_Entries ${C_ABSSYM} ${CPFLAGS}
	${CP} syms.A_Entries ${A_ABSSYM} ${CPFLAGS}
	|
	@echo ${COMPONENT}: rom_link complete

#
# Build rules for Libraries and Stubs:
#
lib.ansilib: ${ANSI_OBJS}
	${AR} ${LIBFLAGS} $@ ${ANSI_OBJS}

lib.ansilibm: ${ANSI_MOD_OBJS}
	${AR} ${LIBFLAGS} $@ ${ANSI_MOD_OBJS}

lib.risc_oslib: ${RLIB_OBJS}
	${AR} ${LIBFLAGS} $@ ${RLIB_OBJS}

lib.riscoslibm: ${RLIB_MOD_OBJS}
	${AR} ${LIBFLAGS} $@ ${RLIB_MOD_OBJS}

o.cl_stub_r: clib.s.cl_stub_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub_r -to $@

o.cl_stub2_r: clib.s.cl_stub2_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub2_r -to $@

o.cl_stub3_r: clib.s.cl_stub3_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub3_r -to $@

o.cl_stub4_r: clib.s.cl_stub4_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub4_r -to $@

o.cl_stub5_r: clib.s.cl_stub5_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub5_r -to $@

o.k_stub2_r: kernel.s.k_stub2_r
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_stub2_r -to $@

o.k_stub3_r: kernel.s.k_stub3_r
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_stub3_r -to $@

m_o.cl_stub_m: clib.s.cl_stub_m
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub_m -to $@

o_rl.rl_stub_r: rlib.s.rl_stub_r
	${AS} ${AFLAGS} ${ALFLAGS} -from rlib.s.rl_stub_r -to $@

rm_o.cl_stub_rm: clib.s.cl_stub_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub_rm -to $@

rm_o.cl_stub2_rm: clib.s.cl_stub2_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub2_rm -to $@

rm_o.cl_stub3_rm: clib.s.cl_stub3_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub3_rm -to $@

rm_o.cl_stub4_rm: clib.s.cl_stub4_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub4_rm -to $@

rm_o.cl_stub5_rm: clib.s.cl_stub5_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_stub5_rm -to $@

rm_o.k_stub2_rm: kernel.s.k_stub2_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_stub2_rm -to $@

rm_o.k_stub3_rm: kernel.s.k_stub3_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_stub3_rm -to $@

rm_o_rl.rl_stub_rm: rlib.s.rl_stub_rm
	${AS} ${AFLAGS} ${ALFLAGS} -from rlib.s.rl_stub_rm -to $@

lib.stubs: o.cl_stub_r o.k_stub2_r o.k_stub3_r o.cl_stub2_r o.cl_stub3_r o.cl_stub4_r o.cl_stub5_r o.mathl
	${AR} ${LIBFLAGS} $@ o.cl_stub_r o.k_stub2_r o.k_stub3_r o.cl_stub2_r o.cl_stub3_r o.cl_stub4_r o.cl_stub5_r o.mathl

lib.rstubs: o_rl.rl_stub_r o.k_stub2_r o.k_stub3_r o.cl_stub2_r o.cl_stub3_r o.cl_stub4_r o.cl_stub5_r o.mathl
	${AR} ${LIBFLAGS} $@ o_rl.rl_stub_r o.k_stub2_r o.k_stub3_r o.cl_stub2_r o.cl_stub3_r o.cl_stub4_r o.cl_stub5_r o.mathl

lib.romcstubs: rm_o.cl_stub_rm rm_o.k_stub2_rm rm_o.k_stub3_rm rm_o.cl_stub2_rm rm_o.cl_stub3_rm rm_o.cl_stub4_rm rm_o.cl_stub5_rm o.mathl
	${AR} ${LIBFLAGS} $@ rm_o.cl_stub_rm rm_o.k_stub2_rm rm_o.k_stub3_rm rm_o.cl_stub2_rm rm_o.cl_stub3_rm rm_o.cl_stub4_rm rm_o.cl_stub5_rm o.mathl

lib.romstubs: rm_o_rl.rl_stub_rm rm_o.k_stub2_rm rm_o.k_stub3_rm rm_o.cl_stub2_rm rm_o.cl_stub3_rm rm_o.cl_stub4_rm rm_o.cl_stub5_rm o.mathl
	${AR} ${LIBFLAGS} $@ rm_o_rl.rl_stub_rm rm_o.k_stub2_rm rm_o.k_stub3_rm rm_o.cl_stub2_rm rm_o.cl_stub3_rm rm_o.cl_stub4_rm rm_o.cl_stub5_rm o.mathl

lib.romastubs: rlib.s.rl_stub_a
	${AS} ${AFLAGS} -from rlib.s.rl_stub_a -to $@

# Non-exported libraries:
lib.clib: ${CLIB_MOD_OBJS}
	${LD} ${LDFLAGS} -o $@ -module ${CLIB_MOD_OBJS}
	${MODSQZ} $@

# Derived headers:
derived.swis: o.swis
	${LD} -bin -o $@ o.swis
	settype $@ text

derived.swisf: o.swisf
	${LD} -bin -o $@ o.swisf
	settype $@ text

o.swis: s.makehswis h.swisheader s.swioptions
	${AS} ${AFLAGS} s.makehswis -o $@

o.swisf: s.makefswis h.swisfortran s.swioptions
	${AS} ${AFLAGS} s.makefswis -o $@

s.swioptions: SWIOptions
	@SWIOptions

#
# Rules for exporting:
#
${EXP_HDR}.SharedCLib: hdr.SharedCLib
	${CP} hdr.SharedCLib $@ ${CPFLAGS}

# The swis.h header is only copied if the file differs from an existing
# exported header.  This prevents needless recompilations
CLIB:h.swis: derived.swis
	-${DIFF} $@ derived.swis
	If "<AMU$ReturnCode>" <> "0" Then ${CP} derived.swis $@ ${CPFLAGS}

F77Lib:f.swis: derived.swisf
	${CP} derived.swisf $@ ${CPFLAGS}

# Headers:
CLIB:h.assert: clib.h.assert  ;   ${CP} clib.h.assert $@ ${CPFLAGS}
CLIB:h.complex: clib.h.complex;   ${CP} clib.h.complex $@ ${CPFLAGS}
CLIB:h.ctype: clib.h.ctype;       ${CP} clib.h.ctype $@ ${CPFLAGS}
CLIB:h.errno: clib.h.errno;       ${CP} clib.h.errno $@ ${CPFLAGS}
CLIB:h.fenv: clib.h.fenv;         ${CP} clib.h.fenv $@ ${CPFLAGS}
CLIB:h.float: clib.h.float;       ${CP} clib.h.float $@ ${CPFLAGS}
CLIB:h.inttypes: clib.h.inttypes; ${CP} clib.h.inttypes $@ ${CPFLAGS}
CLIB:h.iso646: clib.h.iso646;     ${CP} clib.h.iso646 $@ ${CPFLAGS}
CLIB:h.kernel: clib.h.kernel;     ${CP} clib.h.kernel $@ ${CPFLAGS}
CLIB:h.limits: clib.h.limits;     ${CP} clib.h.limits $@ ${CPFLAGS}
CLIB:h.locale: clib.h.locale;     ${CP} clib.h.locale $@ ${CPFLAGS}
CLIB:h.math: clib.h.math;         ${CP} clib.h.math $@ ${CPFLAGS}
CLIB:h.setjmp: clib.h.setjmp;     ${CP} clib.h.setjmp $@ ${CPFLAGS}
CLIB:h.signal: clib.h.signal;     ${CP} clib.h.signal $@ ${CPFLAGS}
CLIB:h.stdalign: clib.h.stdalign; ${CP} clib.h.stdalign $@ ${CPFLAGS}
CLIB:h.stdarg: clib.h.stdarg;     ${CP} clib.h.stdarg $@ ${CPFLAGS}
CLIB:h.stdatomic: clib.h.stdatomic; ${CP} clib.h.stdatomic $@ ${CPFLAGS}
CLIB:h.stdbool: clib.h.stdbool;   ${CP} clib.h.stdbool $@ ${CPFLAGS}
CLIB:h.stddef: clib.h.stddef;     ${CP} clib.h.stddef $@ ${CPFLAGS}
CLIB:h.stdint: clib.h.stdint;     ${CP} clib.h.stdint $@ ${CPFLAGS}
CLIB:h.stdio: clib.h.stdio;       ${CP} clib.h.stdio $@ ${CPFLAGS}
CLIB:h.stdlib: clib.h.stdlib;     ${CP} clib.h.stdlib $@ ${CPFLAGS}
CLIB:h.stdnoreturn: clib.h.stdnoreturn; ${CP} clib.h.stdnoreturn $@ ${CPFLAGS}
CLIB:h.string: clib.h.string;     ${CP} clib.h.string $@ ${CPFLAGS}
CLIB:h.tgmath: clib.h.tgmath;     ${CP} clib.h.tgmath $@ ${CPFLAGS}
CLIB:h.time: clib.h.time;         ${CP} clib.h.time $@ ${CPFLAGS}
CLIB:h.uchar: clib.h.uchar;       ${CP} clib.h.uchar $@ ${CPFLAGS}
CLIB:h.varargs: clib.h.varargs;   ${CP} clib.h.varargs $@ ${CPFLAGS}
CLIB:h.wchar: clib.h.wchar;       ${CP} clib.h.wchar $@ ${CPFLAGS}
CLIB:h.wctype: clib.h.wctype;     ${CP} clib.h.wctype $@ ${CPFLAGS}


RISC_OSLib:h.akbd: rlib.h.akbd;              ${CP} rlib.h.akbd $@ ${CPFLAGS}
RISC_OSLib:h.alarm: rlib.h.alarm;            ${CP} rlib.h.alarm $@ ${CPFLAGS}
RISC_OSLib:h.baricon: rlib.h.baricon;        ${CP} rlib.h.baricon $@ ${CPFLAGS}
RISC_OSLib:h.bbc: rlib.h.bbc;                ${CP} rlib.h.bbc $@ ${CPFLAGS}
RISC_OSLib:h.colourmenu: rlib.h.colourmenu;  ${CP} rlib.h.colourmenu $@ ${CPFLAGS}
RISC_OSLib:h.colourpick: rlib.h.colourpick;  ${CP} rlib.h.colourpick $@ ${CPFLAGS}
RISC_OSLib:h.colourtran: rlib.h.colourtran;  ${CP} rlib.h.colourtran $@ ${CPFLAGS}
RISC_OSLib:h.coords: rlib.h.coords;          ${CP} rlib.h.coords $@ ${CPFLAGS}
RISC_OSLib:h.dbox: rlib.h.dbox;              ${CP} rlib.h.dbox $@ ${CPFLAGS}
RISC_OSLib:h.dboxfile: rlib.h.dboxfile;      ${CP} rlib.h.dboxfile $@ ${CPFLAGS}
RISC_OSLib:h.dboxquery: rlib.h.dboxquery;    ${CP} rlib.h.dboxquery $@ ${CPFLAGS}
RISC_OSLib:h.dboxtcol: rlib.h.dboxtcol;      ${CP} rlib.h.dboxtcol $@ ${CPFLAGS}
RISC_OSLib:h.dragasprit: rlib.h.dragasprit;  ${CP} rlib.h.dragasprit $@ ${CPFLAGS}
RISC_OSLib:h.drawfdiag: rlib.h.drawfdiag;    ${CP} rlib.h.drawfdiag $@ ${CPFLAGS}
RISC_OSLib:h.drawferror: rlib.h.drawferror;  ${CP} rlib.h.drawferror $@ ${CPFLAGS}
RISC_OSLib:h.drawfobj: rlib.h.drawfobj;      ${CP} rlib.h.drawfobj $@ ${CPFLAGS}
RISC_OSLib:h.drawftypes: rlib.h.drawftypes;  ${CP} rlib.h.drawftypes $@ ${CPFLAGS}
RISC_OSLib:h.drawmod: rlib.h.drawmod;        ${CP} rlib.h.drawmod $@ ${CPFLAGS}
RISC_OSLib:h.event: rlib.h.event;            ${CP} rlib.h.event $@ ${CPFLAGS}
RISC_OSLib:h.fileicon: rlib.h.fileicon;      ${CP} rlib.h.fileicon $@ ${CPFLAGS}
RISC_OSLib:h.flex: rlib.h.flex;              ${CP} rlib.h.flex $@ ${CPFLAGS}
RISC_OSLib:h.font: rlib.h.font;              ${CP} rlib.h.font $@ ${CPFLAGS}
RISC_OSLib:h.fontlist: rlib.h.fontlist;      ${CP} rlib.h.fontlist $@ ${CPFLAGS}
RISC_OSLib:h.fontselect: rlib.h.fontselect;  ${CP} rlib.h.fontselect $@ ${CPFLAGS}
RISC_OSLib:h.heap: rlib.h.heap;              ${CP} rlib.h.heap $@ ${CPFLAGS}
RISC_OSLib:h.help: rlib.h.help;              ${CP} rlib.h.help $@ ${CPFLAGS}
RISC_OSLib:h.jpeg: rlib.h.jpeg;              ${CP} rlib.h.jpeg $@ ${CPFLAGS}
RISC_OSLib:h.magnify: rlib.h.magnify;        ${CP} rlib.h.magnify $@ ${CPFLAGS}
RISC_OSLib:h.menu: rlib.h.menu;              ${CP} rlib.h.menu $@ ${CPFLAGS}
RISC_OSLib:h.msgs: rlib.h.msgs;              ${CP} rlib.h.msgs $@ ${CPFLAGS}
RISC_OSLib:h.msgtrans: rlib.h.msgtrans;      ${CP} rlib.h.msgtrans $@ ${CPFLAGS}
RISC_OSLib:h.os: rlib.h.os;                  ${CP} rlib.h.os $@ ${CPFLAGS}
RISC_OSLib:h.pointer: rlib.h.pointer;        ${CP} rlib.h.pointer $@ ${CPFLAGS}
RISC_OSLib:h.print: rlib.h.print;            ${CP} rlib.h.print $@ ${CPFLAGS}
RISC_OSLib:h.res: rlib.h.res;                ${CP} rlib.h.res $@ ${CPFLAGS}
RISC_OSLib:h.resspr: rlib.h.resspr;          ${CP} rlib.h.resspr $@ ${CPFLAGS}
RISC_OSLib:h.saveas: rlib.h.saveas;          ${CP} rlib.h.saveas $@ ${CPFLAGS}
RISC_OSLib:h.sprite: rlib.h.sprite;          ${CP} rlib.h.sprite $@ ${CPFLAGS}
RISC_OSLib:h.template: rlib.h.template;      ${CP} rlib.h.template $@ ${CPFLAGS}
RISC_OSLib:h.trace: rlib.h.trace;            ${CP} rlib.h.trace $@ ${CPFLAGS}
RISC_OSLib:h.txt: rlib.h.txt;                ${CP} rlib.h.txt $@ ${CPFLAGS}
RISC_OSLib:h.txtedit: rlib.h.txtedit;        ${CP} rlib.h.txtedit $@ ${CPFLAGS}
RISC_OSLib:h.txtopt: rlib.h.txtopt;          ${CP} rlib.h.txtopt $@ ${CPFLAGS}
RISC_OSLib:h.txtscrap: rlib.h.txtscrap;      ${CP} rlib.h.txtscrap $@ ${CPFLAGS}
RISC_OSLib:h.txtwin: rlib.h.txtwin;          ${CP} rlib.h.txtwin $@ ${CPFLAGS}
RISC_OSLib:h.typdat: rlib.h.typdat;          ${CP} rlib.h.typdat $@ ${CPFLAGS}
RISC_OSLib:h.visdelay: rlib.h.visdelay;      ${CP} rlib.h.visdelay $@ ${CPFLAGS}
RISC_OSLib:h.werr: rlib.h.werr;              ${CP} rlib.h.werr $@ ${CPFLAGS}
RISC_OSLib:h.wimp: rlib.h.wimp;              ${CP} rlib.h.wimp $@ ${CPFLAGS}
RISC_OSLib:h.wimpt: rlib.h.wimpt;            ${CP} rlib.h.wimpt $@ ${CPFLAGS}
RISC_OSLib:h.win: rlib.h.win;                ${CP} rlib.h.win $@ ${CPFLAGS}
RISC_OSLib:h.xferrecv: rlib.h.xferrecv;      ${CP} rlib.h.xferrecv $@ ${CPFLAGS}
RISC_OSLib:h.xfersend: rlib.h.xfersend;      ${CP} rlib.h.xfersend $@ ${CPFLAGS}

# Libraries
Clib:o.ansilib:          lib.ansilib;        ${CP} lib.ansilib    $@ ${CPFLAGS}
Clib:o.ansilibm:         lib.ansilibm;       ${CP} lib.ansilibm   $@ ${CPFLAGS}
CLib:o.stubs:            lib.stubs;          ${CP} lib.stubs $@ ${CPFLAGS}
RISC_OSLib:o.risc_oslib: lib.risc_oslib;     ${CP} lib.risc_oslib $@ ${CPFLAGS}
RISC_OSLib:o.riscoslibm: lib.riscoslibm;     ${CP} lib.riscoslibm $@ ${CPFLAGS}
RISC_OSLib:o.rstubs:     lib.rstubs;         ${CP} lib.rstubs $@ ${CPFLAGS}
RISC_OSLib:o.romstubs:   lib.romstubs;       ${CP} lib.romstubs $@ ${CPFLAGS}
RISC_OSLib:o.romastubs:  lib.romastubs;      ${CP} lib.romastubs $@ ${CPFLAGS}
RISC_OSLib:o.romcstubs:  lib.romcstubs;      ${CP} lib.romcstubs $@ ${CPFLAGS}

# ModuleWrap
RISC_OSLib:s.modulewrap: s.modulewrap;       ${CP} s.modulewrap $@ ${CPFLAGS}

#
# Objects whose name isn't the same as their source
#
o.clib: clib.s.cl_obj_r
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_obj_r -to $@

o.kernel: kernel.s.k_obj_r
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_obj_r -to $@

m_o.clib: clib.s.cl_obj_m
	${AS} ${AFLAGS} ${ALFLAGS} -from clib.s.cl_obj_m -to $@

m_o.kernel: kernel.s.k_obj_m
	${AS} ${AFLAGS} ${ALFLAGS} -from kernel.s.k_obj_m -to $@

#rm_o.clib:  clib.s.cl_obj_r
#	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from clib.s.cl_obj_r -to $@

rm_o.cl_modbody: clib.s.cl_mod_r
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} ${UROM_ROM_DEFS} -from clib.s.cl_mod_r -to $@

rm_o_rl.rl_modbody: rlib.s.rl_mod_r
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from rlib.s.rl_mod_r -to $@

rm_o.k_modbody: kernel.s.k_mod_r
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from kernel.s.k_mod_r -to $@

#rm_o.memcpy: s.memcpy s.h_regs
#	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from s.memcpy -to $@

o.initmodule: clib.s.initmod_r
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from clib.s.initmod_r -to $@

rm_o.initmodule: clib.s.initmod_rm
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from clib.s.initmod_rm -to $@

rm_o_rl.initmodule: rlib.s.initmod_r
	${AS} ${AFLAGS} ${ASFLAGS} ${OPTIONS} -from rlib.s.initmod_r -to $@

#
# Objects that require extra flags
#
o.armsys: c.armsys
	${CC} ${CFLAGS} -fah ${CLFLAGS} ${VLFLAGS} -o $@ c.armsys

o.armprof: c.armprof
	${CC} ${CFLAGS} -fah ${CLFLAGS} ${VLFLAGS} -pcc -o $@ c.armprof

o.string: c.string
	${CC} ${CFLAGS} -fah ${CLFLAGS} -DSEPARATE_MEMCPY -DSEPARATE_MEMSET -o $@ c.string

m_o.armsys: c.armsys
	${CC} ${CFLAGS} -ffah -zM ${CLFLAGS} ${VLFLAGS} -o $@ c.armsys

m_o.armprof: c.armprof
	${CC} ${CFLAGS} -ffah -zM ${CLFLAGS} ${VLFLAGS} -pcc -o $@ c.armprof

m_o.string: c.string
	${CC} ${CFLAGS} -ffah -zM ${CLFLAGS} -DSEPARATE_MEMCPY -DSEPARATE_MEMSET -o $@ c.string

rm_o.armsys: c.armsys
	${CC} ${CFLAGS} -ffah -zm1 ${CSFLAGS} ${OPTIONS} ${VSFLAGS} -o $@ c.armsys

rm_o.string: c.string
	${CC} ${CFLAGS} -ffah -zm1 ${CSFLAGS} ${OPTIONS} -DSEPARATE_MEMCPY -DSEPARATE_MEMSET -o $@ c.string

#
# Special case: use "rom_defs" for ROM library (o_rm), "defs" for the others
# Note: New Assembler - could use -PreDefine "UROM SETL {FALSE}"

o_rl.swi: rlib.s.swi
	${AS} ${UROM_DEFS} rlib.s.swi o_rl.swi ${AFLAGS}

o_rl.poll: rlib.s.poll
	${AS} ${UROM_DEFS} rlib.s.poll o_rl.poll ${AFLAGS}

m_o_rl.swi: rlib.s.swi
	${AS} ${UROM_DEFS} rlib.s.swi m_o_rl.swi ${AFLAGS}

m_o_rl.poll: rlib.s.poll
	${AS} ${UROM_DEFS} rlib.s.poll m_o_rl.poll ${AFLAGS}

rm_o_rl.swi: rlib.s.swi
	${AS} ${UROM_ROM_DEFS} rlib.s.swi rm_o_rl.swi ${AFLAGS} ${OPTIONS}

rm_o_rl.poll: rlib.s.poll
	${AS} ${UROM_ROM_DEFS} rlib.s.poll rm_o_rl.poll ${AFLAGS} ${OPTIONS}

#
# trace separated out to allow defining of TRACE
#
o_rl.trace: rlib.c.trace
	${CC} ${CFLAGS} ${DFLAGS} -DTRACE -o o_rl.trace rlib.c.trace

m_o_rl.trace: rlib.c.trace
	${CC} ${CFLAGS} -ffah ${DFLAGS} -zM -DTRACE -o m_o_rl.trace rlib.c.trace

#rm_o_rl.trace: rlib.c.trace
#	${CC} ${CFLAGS} -ffah ${DFLAGS} -zm1 ${CSFLAGS} ${STK_EXTN} ${OPTIONS} -DTRACE -o rm_o_rl.trace rlib.c.trace

# Dynamic dependencies:
o.alloc:	c.alloc
o.alloc:	C:h.stdlib
o.alloc:	C:h.stddef
o.alloc:	C:h.string
o.alloc:	C:h.setjmp
o.alloc:	C:h.signal
o.alloc:	C:h.stdint
o.alloc:	h.hostsys
o.alloc:	C:h.stdio
o.alloc:	C:h.stdbool
o.alloc:	h.alloc
o.alloc:	C:h.stddef
o.alloc:	C:h.kernel
o.alloc:	C:h.swis
o.armprof:	c.armprof
o.armprof:	C:h.stdio
o.armsys:	c.armsys
o.armsys:	VersionNum
o.armsys:	h.hostsys
o.armsys:	C:h.stdio
o.armsys:	C:h.stdbool
o.armsys:	h.territory
o.armsys:	C:h.kernel
o.armsys:	C:h.swis
o.armsys:	C:h.stdio
o.armsys:	C:h.stdlib
o.armsys:	C:h.ctype
o.armsys:	C:h.string
o.armsys:	C:h.time
o.armsys:	C:h.errno
o.armsys:	C:h.stdbool
o.armsys:	C:h.stddef
o.clib: clib.s.cl_obj_r
o.clib: s.h_regs
o.clib: s.h_brazil
o.clib: Hdr:ListOpts
o.clib: Hdr:Machine.<Machine>
o.clib: Hdr:Machine.Machine
o.clib: Hdr:APCS.<APCS>
o.clib: Hdr:APCS.Common
o.clib: Hdr:Macros
o.clib: Hdr:System
o.clib: Hdr:SWIs
o.clib: Hdr:CPU.Arch
o.clib: Hdr:CPU.Generic26
o.clib: Hdr:CPU.Generic32
o.clib: Hdr:IO.GenericIO
o.clib: Hdr:RISCOS
o.clib: Hdr:ModHand
o.clib: Hdr:FPEmulator
o.clib: s.h_objmacro
o.clib: clib.s.cl_data
o.clib: clib.s.cl_init
o.clib: clib.s.cl_body
o.clib: s.h_stack
o.clib: s.h_workspc
o.clib: Hdr:PublicWS
o.clib: Hdr:OSRSI6
o.clib: Hdr:Wimp
o.clib: Hdr:TaskWindow
o.clib: clib.s.h_signal
o.ctype:	c.ctype
o.ctype:	C:h.ctype
o.ctype:	C:h.kernel
o.ctype:	h.territory
o.ctype:	C:h.swis
o.error:	c.error
o.error:	h.hostsys
o.error:	C:h.stdio
o.error:	C:h.stdbool
o.error:	C:h.math
o.error:	C:h.stdio
o.error:	C:h.stdlib
o.error:	C:h.stddef
o.error:	C:h.signal
o.error:	C:h.assert
o.error:	C:h.string
o.error:	C:h.errno
o.error:	C:h.kernel
o.fpprintf:	c.fpprintf
o.fpprintf:	h.hostsys
o.fpprintf:	C:h.stdio
o.fpprintf:	C:h.stdbool
o.fpprintf:	C:h.kernel
o.fpprintf:	C:h.stdio
o.fpprintf:	C:h.stdarg
o.fpprintf:	C:h.string
o.fpprintf:	C:h.math
o.kernel: kernel.s.k_obj_r
o.kernel: s.h_regs
o.kernel: s.h_brazil
o.kernel: Hdr:ListOpts
o.kernel: Hdr:Machine.<Machine>
o.kernel: Hdr:Machine.Machine
o.kernel: Hdr:APCS.<APCS>
o.kernel: Hdr:APCS.Common
o.kernel: Hdr:Macros
o.kernel: Hdr:System
o.kernel: Hdr:SWIs
o.kernel: Hdr:CPU.Arch
o.kernel: Hdr:CPU.Generic26
o.kernel: Hdr:CPU.Generic32
o.kernel: Hdr:IO.GenericIO
o.kernel: Hdr:RISCOS
o.kernel: Hdr:ModHand
o.kernel: Hdr:FPEmulator
o.kernel: s.h_objmacro
o.kernel: kernel.s.k_data
o.kernel: kernel.s.k_init
o.kernel: kernel.s.k_body
o.kernel: s.h_stack
o.kernel: s.h_workspc
o.kernel: Hdr:PublicWS
o.kernel: Hdr:OSRSI6
o.kernel: s.h_common
o.kernel: Hdr:OSMisc
o.kernel: Hdr:Wimp
o.kernel: Hdr:DDEUtils
o.kernel: Hdr:Machine.<Machine>
o.kernel: Hdr:Machine.Machine
o.kernel: kernel.s.k_atomic
o.kernel: kernel.s.k_atomic_armk
o.kernel: kernel.s.k_atomic_armv7
o.locale:	c.locale
o.locale:	C:h.locale
o.locale:	C:h.stddef
o.locale:	C:h.stdio
o.locale:	C:h.time
o.locale:	C:h.string
o.locale:	C:h.stdlib
o.locale:	C:h.limits
o.locale:	h.hostsys
o.locale:	C:h.stdio
o.locale:	C:h.stdbool
o.locale:	C:h.kernel
o.locale:	h.territory
o.locale:	C:h.swis
o.math:	c.math
o.math:	h.hostsys
o.math:	C:h.stdio
o.math:	C:h.stdbool
o.math:	C:h.limits
o.math:	C:h.float
o.math:	C:h.errno
o.math:	C:h.math
o.math:	C:h.fenv
o.memcpset: s.memcpset
o.memcpset: s.objmacs
o.memcpset: s.h_la_obj
o.overmgr: s.overmgr
o.overmgr: s.h_brazil
o.overmgr: Hdr:ListOpts
o.overmgr: Hdr:Machine.<Machine>
o.overmgr: Hdr:Machine.Machine
o.overmgr: Hdr:APCS.<APCS>
o.overmgr: Hdr:APCS.Common
o.overmgr: Hdr:Macros
o.overmgr: Hdr:System
o.overmgr: Hdr:SWIs
o.overmgr: Hdr:CPU.Arch
o.overmgr: Hdr:CPU.Generic26
o.overmgr: Hdr:CPU.Generic32
o.overmgr: Hdr:IO.GenericIO
o.overmgr: Hdr:RISCOS
o.overmgr: Hdr:ModHand
o.overmgr: Hdr:FPEmulator
o.overmgr: Hdr:Wimp
o.printf:	c.printf
o.printf:	h.hostsys
o.printf:	C:h.stdio
o.printf:	C:h.stdbool
o.printf:	C:h.kernel
o.printf:	C:h.stdio
o.printf:	C:h.stdarg
o.printf:	C:h.ctype
o.printf:	C:h.string
o.scanf:	c.scanf
o.scanf:	h.hostsys
o.scanf:	C:h.stdio
o.scanf:	C:h.stdbool
o.scanf:	C:h.kernel
o.scanf:	C:h.stdio
o.scanf:	C:h.stdlib
o.scanf:	C:h.inttypes
o.scanf:	C:h.stdint
o.scanf:	C:h.math
o.scanf:	C:h.errno
o.scanf:	C:h.string
o.scanf:	C:h.ctype
o.scanf:	C:h.stddef
o.scanf:	C:h.stdarg
o.scanf:	C:h.limits
o.scanf:	C:h.fenv
o.signal:	c.signal
o.signal:	h.hostsys
o.signal:	C:h.stdio
o.signal:	C:h.stdbool
o.signal:	C:h.signal
o.signal:	C:h.stdio
o.signal:	C:h.stddef
o.signal:	C:h.stdlib
o.signal:	C:h.errno
o.signal:	C:h.kernel
o.sort:	c.sort
o.sort:	h.hostsys
o.sort:	C:h.stdio
o.sort:	C:h.stdbool
o.sort:	C:h.stddef
o.sort:	C:h.stdlib
o.sort:	C:h.kernel
o.stdio:	c.stdio
o.stdio:	h.hostsys
o.stdio:	C:h.stdio
o.stdio:	C:h.stdbool
o.stdio:	C:h.stdio
o.stdio:	C:h.string
o.stdio:	C:h.stddef
o.stdio:	C:h.stdlib
o.stdio:	C:h.time
o.stdio:	C:h.errno
o.stdio:	C:h.kernel
o.stdio:	h.hostsys
o.stdio:	C:h.swis
o.stdlib:	c.stdlib
o.stdlib:	h.hostsys
o.stdlib:	C:h.stdio
o.stdlib:	C:h.stdbool
o.stdlib:	C:h.kernel
o.stdlib:	C:h.stdlib
o.stdlib:	C:h.signal
o.stdlib:	C:h.string
o.stdlib:	C:h.stdint
o.stdlib:	h.alloc
o.stdlib:	C:h.stddef
o.string:	c.string
o.string:	h.hostsys
o.string:	C:h.stdio
o.string:	C:h.stdbool
o.string:	C:h.stddef
o.string:	C:h.string
o.string:	C:h.kernel
o.string:	h.territory
o.string:	C:h.swis
o.string:	C:h.errno
o.swiv: kernel.s.swiv
o.swiv: s.h_regs
o.swiv: s.h_brazil
o.swiv: Hdr:ListOpts
o.swiv: Hdr:Machine.<Machine>
o.swiv: Hdr:Machine.Machine
o.swiv: Hdr:APCS.<APCS>
o.swiv: Hdr:APCS.Common
o.swiv: Hdr:Macros
o.swiv: Hdr:System
o.swiv: Hdr:SWIs
o.swiv: Hdr:CPU.Arch
o.swiv: Hdr:CPU.Generic26
o.swiv: Hdr:CPU.Generic32
o.swiv: Hdr:IO.GenericIO
o.swiv: Hdr:RISCOS
o.swiv: Hdr:ModHand
o.swiv: Hdr:FPEmulator
o.time:	c.time
o.time:	C:h.time
o.time:	C:h.stdio
o.time:	C:h.string
o.time:	C:h.locale
o.time:	C:h.kernel
o.time:	h.territory
o.time:	C:h.swis
o.fenv: s.fenv
o.fenv: s.objmacs
o.fenv: s.h_la_obj
o.longlong: s.longlong
o.longlong: s.objmacs
o.longlong: s.h_la_obj
o.longlong: s.h_common
o.longlong: Hdr:ListOpts
o.longlong: Hdr:CPU.Arch
o.longlong: Hdr:Machine.<Machine>
o.longlong: Hdr:Machine.Machine
o.longlong: Hdr:OSMisc
o.mathasm: s.mathasm
o.mathasm: s.objmacs
o.mathasm: s.h_la_obj
o.complex:	c.complex
o.complex:	C:h.float
o.complex:	C:h.fenv
o.complex:	C:h.math
o.complex:	C:h.complex
o.cxsupport: s.cxsupport
o.cxsupport: s.objmacs
o.cxsupport: s.h_la_obj
m_o.alloc:	c.alloc
m_o.alloc:	C:h.stdlib
m_o.alloc:	C:h.stddef
m_o.alloc:	C:h.string
m_o.alloc:	C:h.setjmp
m_o.alloc:	C:h.signal
m_o.alloc:	C:h.stdint
m_o.alloc:	h.hostsys
m_o.alloc:	C:h.stdio
m_o.alloc:	C:h.stdbool
m_o.alloc:	h.alloc
m_o.alloc:	C:h.stddef
m_o.alloc:	C:h.kernel
m_o.alloc:	C:h.swis
m_o.armprof:	c.armprof
m_o.armprof:	C:h.stdio
m_o.armsys:	c.armsys
m_o.armsys:	VersionNum
m_o.armsys:	h.hostsys
m_o.armsys:	C:h.stdio
m_o.armsys:	C:h.stdbool
m_o.armsys:	h.territory
m_o.armsys:	C:h.kernel
m_o.armsys:	C:h.swis
m_o.armsys:	C:h.stdio
m_o.armsys:	C:h.stdlib
m_o.armsys:	C:h.ctype
m_o.armsys:	C:h.string
m_o.armsys:	C:h.time
m_o.armsys:	C:h.errno
m_o.armsys:	C:h.stdbool
m_o.armsys:	C:h.stddef
m_o.clib: clib.s.cl_obj_m
m_o.clib: s.h_regs
m_o.clib: s.h_brazil
m_o.clib: Hdr:ListOpts
m_o.clib: Hdr:Machine.<Machine>
m_o.clib: Hdr:Machine.Machine
m_o.clib: Hdr:APCS.<APCS>
m_o.clib: Hdr:APCS.Common
m_o.clib: Hdr:Macros
m_o.clib: Hdr:System
m_o.clib: Hdr:SWIs
m_o.clib: Hdr:CPU.Arch
m_o.clib: Hdr:CPU.Generic26
m_o.clib: Hdr:CPU.Generic32
m_o.clib: Hdr:IO.GenericIO
m_o.clib: Hdr:RISCOS
m_o.clib: Hdr:ModHand
m_o.clib: Hdr:FPEmulator
m_o.clib: s.h_objmacro_m
m_o.clib: clib.s.cl_data
m_o.clib: clib.s.cl_init
m_o.clib: clib.s.cl_body
m_o.clib: s.h_stack
m_o.clib: s.h_workspc
m_o.clib: Hdr:PublicWS
m_o.clib: Hdr:OSRSI6
m_o.clib: Hdr:Wimp
m_o.clib: Hdr:TaskWindow
m_o.clib: clib.s.h_signal
m_o.ctype:	c.ctype
m_o.ctype:	C:h.ctype
m_o.ctype:	C:h.kernel
m_o.ctype:	h.territory
m_o.ctype:	C:h.swis
m_o.error:	c.error
m_o.error:	h.hostsys
m_o.error:	C:h.stdio
m_o.error:	C:h.stdbool
m_o.error:	C:h.math
m_o.error:	C:h.stdio
m_o.error:	C:h.stdlib
m_o.error:	C:h.stddef
m_o.error:	C:h.signal
m_o.error:	C:h.assert
m_o.error:	C:h.string
m_o.error:	C:h.errno
m_o.error:	C:h.kernel
m_o.fpprintf:	c.fpprintf
m_o.fpprintf:	h.hostsys
m_o.fpprintf:	C:h.stdio
m_o.fpprintf:	C:h.stdbool
m_o.fpprintf:	C:h.kernel
m_o.fpprintf:	C:h.stdio
m_o.fpprintf:	C:h.stdarg
m_o.fpprintf:	C:h.string
m_o.fpprintf:	C:h.math
m_o.kernel: kernel.s.k_obj_m
m_o.kernel: s.h_regs
m_o.kernel: s.h_brazil
m_o.kernel: Hdr:ListOpts
m_o.kernel: Hdr:Machine.<Machine>
m_o.kernel: Hdr:Machine.Machine
m_o.kernel: Hdr:APCS.<APCS>
m_o.kernel: Hdr:APCS.Common
m_o.kernel: Hdr:Macros
m_o.kernel: Hdr:System
m_o.kernel: Hdr:SWIs
m_o.kernel: Hdr:CPU.Arch
m_o.kernel: Hdr:CPU.Generic26
m_o.kernel: Hdr:CPU.Generic32
m_o.kernel: Hdr:IO.GenericIO
m_o.kernel: Hdr:RISCOS
m_o.kernel: Hdr:ModHand
m_o.kernel: Hdr:FPEmulator
m_o.kernel: s.h_objmacro_m
m_o.kernel: kernel.s.k_data
m_o.kernel: kernel.s.k_init
m_o.kernel: kernel.s.k_body
m_o.kernel: s.h_stack
m_o.kernel: s.h_workspc
m_o.kernel: Hdr:PublicWS
m_o.kernel: Hdr:OSRSI6
m_o.kernel: s.h_common
m_o.kernel: Hdr:OSMisc
m_o.kernel: Hdr:Wimp
m_o.kernel: Hdr:DDEUtils
m_o.kernel: Hdr:Machine.<Machine>
m_o.kernel: Hdr:Machine.Machine
m_o.kernel: kernel.s.k_atomic
m_o.kernel: kernel.s.k_atomic_armk
m_o.kernel: kernel.s.k_atomic_armv7
m_o.locale:	c.locale
m_o.locale:	C:h.locale
m_o.locale:	C:h.stddef
m_o.locale:	C:h.stdio
m_o.locale:	C:h.time
m_o.locale:	C:h.string
m_o.locale:	C:h.stdlib
m_o.locale:	C:h.limits
m_o.locale:	h.hostsys
m_o.locale:	C:h.stdio
m_o.locale:	C:h.stdbool
m_o.locale:	C:h.kernel
m_o.locale:	h.territory
m_o.locale:	C:h.swis
m_o.math:	c.math
m_o.math:	h.hostsys
m_o.math:	C:h.stdio
m_o.math:	C:h.stdbool
m_o.math:	C:h.limits
m_o.math:	C:h.float
m_o.math:	C:h.errno
m_o.math:	C:h.math
m_o.math:	C:h.fenv
m_o.memcpset: s.memcpset
m_o.memcpset: s.objmacs
m_o.memcpset: s.h_la_obj
m_o.overmgr: s.overmgr
m_o.overmgr: s.h_brazil
m_o.overmgr: Hdr:ListOpts
m_o.overmgr: Hdr:Machine.<Machine>
m_o.overmgr: Hdr:Machine.Machine
m_o.overmgr: Hdr:APCS.<APCS>
m_o.overmgr: Hdr:APCS.Common
m_o.overmgr: Hdr:Macros
m_o.overmgr: Hdr:System
m_o.overmgr: Hdr:SWIs
m_o.overmgr: Hdr:CPU.Arch
m_o.overmgr: Hdr:CPU.Generic26
m_o.overmgr: Hdr:CPU.Generic32
m_o.overmgr: Hdr:IO.GenericIO
m_o.overmgr: Hdr:RISCOS
m_o.overmgr: Hdr:ModHand
m_o.overmgr: Hdr:FPEmulator
m_o.overmgr: Hdr:Wimp
m_o.printf:	c.printf
m_o.printf:	h.hostsys
m_o.printf:	C:h.stdio
m_o.printf:	C:h.stdbool
m_o.printf:	C:h.kernel
m_o.printf:	C:h.stdio
m_o.printf:	C:h.stdarg
m_o.printf:	C:h.ctype
m_o.printf:	C:h.string
m_o.scanf:	c.scanf
m_o.scanf:	h.hostsys
m_o.scanf:	C:h.stdio
m_o.scanf:	C:h.stdbool
m_o.scanf:	C:h.kernel
m_o.scanf:	C:h.stdio
m_o.scanf:	C:h.stdlib
m_o.scanf:	C:h.inttypes
m_o.scanf:	C:h.stdint
m_o.scanf:	C:h.math
m_o.scanf:	C:h.errno
m_o.scanf:	C:h.string
m_o.scanf:	C:h.ctype
m_o.scanf:	C:h.stddef
m_o.scanf:	C:h.stdarg
m_o.scanf:	C:h.limits
m_o.scanf:	C:h.fenv
m_o.signal:	c.signal
m_o.signal:	h.hostsys
m_o.signal:	C:h.stdio
m_o.signal:	C:h.stdbool
m_o.signal:	C:h.signal
m_o.signal:	C:h.stdio
m_o.signal:	C:h.stddef
m_o.signal:	C:h.stdlib
m_o.signal:	C:h.errno
m_o.signal:	C:h.kernel
m_o.sort:	c.sort
m_o.sort:	h.hostsys
m_o.sort:	C:h.stdio
m_o.sort:	C:h.stdbool
m_o.sort:	C:h.stddef
m_o.sort:	C:h.stdlib
m_o.sort:	C:h.kernel
m_o.stdio:	c.stdio
m_o.stdio:	h.hostsys
m_o.stdio:	C:h.stdio
m_o.stdio:	C:h.stdbool
m_o.stdio:	C:h.stdio
m_o.stdio:	C:h.string
m_o.stdio:	C:h.stddef
m_o.stdio:	C:h.stdlib
m_o.stdio:	C:h.time
m_o.stdio:	C:h.errno
m_o.stdio:	C:h.kernel
m_o.stdio:	h.hostsys
m_o.stdio:	C:h.swis
m_o.stdlib:	c.stdlib
m_o.stdlib:	h.hostsys
m_o.stdlib:	C:h.stdio
m_o.stdlib:	C:h.stdbool
m_o.stdlib:	C:h.kernel
m_o.stdlib:	C:h.stdlib
m_o.stdlib:	C:h.signal
m_o.stdlib:	C:h.string
m_o.stdlib:	C:h.stdint
m_o.stdlib:	h.alloc
m_o.stdlib:	C:h.stddef
m_o.string:	c.string
m_o.string:	h.hostsys
m_o.string:	C:h.stdio
m_o.string:	C:h.stdbool
m_o.string:	C:h.stddef
m_o.string:	C:h.string
m_o.string:	C:h.kernel
m_o.string:	h.territory
m_o.string:	C:h.swis
m_o.string:	C:h.errno
m_o.swiv: kernel.s.swiv
m_o.swiv: s.h_regs
m_o.swiv: s.h_brazil
m_o.swiv: Hdr:ListOpts
m_o.swiv: Hdr:Machine.<Machine>
m_o.swiv: Hdr:Machine.Machine
m_o.swiv: Hdr:APCS.<APCS>
m_o.swiv: Hdr:APCS.Common
m_o.swiv: Hdr:Macros
m_o.swiv: Hdr:System
m_o.swiv: Hdr:SWIs
m_o.swiv: Hdr:CPU.Arch
m_o.swiv: Hdr:CPU.Generic26
m_o.swiv: Hdr:CPU.Generic32
m_o.swiv: Hdr:IO.GenericIO
m_o.swiv: Hdr:RISCOS
m_o.swiv: Hdr:ModHand
m_o.swiv: Hdr:FPEmulator
m_o.time:	c.time
m_o.time:	C:h.time
m_o.time:	C:h.stdio
m_o.time:	C:h.string
m_o.time:	C:h.locale
m_o.time:	C:h.kernel
m_o.time:	h.territory
m_o.time:	C:h.swis
m_o.fenv: s.fenv
m_o.fenv: s.objmacs
m_o.fenv: s.h_la_obj
m_o.longlong: s.longlong
m_o.longlong: s.objmacs
m_o.longlong: s.h_la_obj
m_o.longlong: s.h_common
m_o.longlong: Hdr:ListOpts
m_o.longlong: Hdr:CPU.Arch
m_o.longlong: Hdr:Machine.<Machine>
m_o.longlong: Hdr:Machine.Machine
m_o.longlong: Hdr:OSMisc
m_o.mathl: s.mathl
m_o.mathasm: s.mathasm
m_o.mathasm: s.objmacs
m_o.mathasm: s.h_la_obj
m_o.complex:	c.complex
m_o.complex:	C:h.float
m_o.complex:	C:h.fenv
m_o.complex:	C:h.math
m_o.complex:	C:h.complex
m_o.cxsupport: s.cxsupport
m_o.cxsupport: s.objmacs
m_o.cxsupport: s.h_la_obj
m_o.cl_stub_m: clib.s.cl_stub_m
m_o.cl_stub_m: clib.s.cl_stub
m_o.cl_stub_m: s.h_regs
m_o.cl_stub_m: s.h_brazil
m_o.cl_stub_m: Hdr:ListOpts
m_o.cl_stub_m: Hdr:Machine.<Machine>
m_o.cl_stub_m: Hdr:Machine.Machine
m_o.cl_stub_m: Hdr:APCS.<APCS>
m_o.cl_stub_m: Hdr:APCS.Common
m_o.cl_stub_m: Hdr:Macros
m_o.cl_stub_m: Hdr:System
m_o.cl_stub_m: Hdr:SWIs
m_o.cl_stub_m: Hdr:CPU.Arch
m_o.cl_stub_m: Hdr:CPU.Generic26
m_o.cl_stub_m: Hdr:CPU.Generic32
m_o.cl_stub_m: Hdr:IO.GenericIO
m_o.cl_stub_m: Hdr:RISCOS
m_o.cl_stub_m: Hdr:ModHand
m_o.cl_stub_m: Hdr:FPEmulator
m_o.cl_stub_m: s.h_stubs
m_o.cl_stub_m: s.h_stack
m_o.cl_stub_m: s.h_workspc
m_o.cl_stub_m: Hdr:PublicWS
m_o.cl_stub_m: Hdr:OSRSI6
m_o.cl_stub_m: clib.s.h_signal
m_o.cl_stub_m: Hdr:MsgTrans
o.cl_stub_r: clib.s.cl_stub_r
o.cl_stub_r: clib.s.cl_stub
o.cl_stub_r: s.h_regs
o.cl_stub_r: s.h_brazil
o.cl_stub_r: Hdr:ListOpts
o.cl_stub_r: Hdr:Machine.<Machine>
o.cl_stub_r: Hdr:Machine.Machine
o.cl_stub_r: Hdr:APCS.<APCS>
o.cl_stub_r: Hdr:APCS.Common
o.cl_stub_r: Hdr:Macros
o.cl_stub_r: Hdr:System
o.cl_stub_r: Hdr:SWIs
o.cl_stub_r: Hdr:CPU.Arch
o.cl_stub_r: Hdr:CPU.Generic26
o.cl_stub_r: Hdr:CPU.Generic32
o.cl_stub_r: Hdr:IO.GenericIO
o.cl_stub_r: Hdr:RISCOS
o.cl_stub_r: Hdr:ModHand
o.cl_stub_r: Hdr:FPEmulator
o.cl_stub_r: s.h_stubs
o.cl_stub_r: s.h_stack
o.cl_stub_r: s.h_workspc
o.cl_stub_r: Hdr:PublicWS
o.cl_stub_r: Hdr:OSRSI6
o.cl_stub_r: clib.s.h_signal
o.cl_stub_r: Hdr:MsgTrans
o.cl_stub_r: clib.s.cl_init
o.cl_stub_r: kernel.s.k_entries
o.cl_stub_r: clib.s.cl_entries
o.cl_stub_r: kernel.s.k_data
o.cl_stub_r: clib.s.cl_data
o.cl_stub_r: clib.s.clibdata
o_rl.akbd:	rlib.c.akbd
o_rl.akbd:	rlib.h.os
o_rl.akbd:	C:h.kernel
o_rl.akbd:	rlib.h.trace
o_rl.akbd:	rlib.h.akbd
o_rl.alarm:	rlib.c.alarm
o_rl.alarm:	C:h.stdlib
o_rl.alarm:	C:h.limits
o_rl.alarm:	rlib.h.alarm
o_rl.alarm:	rlib.h.werr
o_rl.alarm:	rlib.h.os
o_rl.alarm:	C:h.kernel
o_rl.alarm:	rlib.h.msgs
o_rl.alarm:	C:h.swis
o_rl.alarm:	rlib.VerIntern.h.messages
o_rl.baricon:	rlib.c.baricon
o_rl.baricon:	C:h.string
o_rl.baricon:	C:h.stdlib
o_rl.baricon:	rlib.h.os
o_rl.baricon:	C:h.kernel
o_rl.baricon:	rlib.h.wimp
o_rl.baricon:	rlib.h.sprite
o_rl.baricon:	rlib.h.wimpt
o_rl.baricon:	rlib.h.trace
o_rl.baricon:	rlib.h.bbc
o_rl.baricon:	rlib.h.sprite
o_rl.baricon:	rlib.h.win
o_rl.baricon:	rlib.h.menu
o_rl.baricon:	rlib.h.event
o_rl.baricon:	rlib.h.baricon
o_rl.baricon:	C:h.swis
o_rl.bastxt: rlib.s.bastxt
o_rl.bastxt: Hdr:ListOpts
o_rl.bastxt: Hdr:APCS.Common
o_rl.bastxt: Hdr:Macros
o_rl.bbc:	rlib.c.bbc
o_rl.bbc:	C:h.stdarg
o_rl.bbc:	rlib.h.os
o_rl.bbc:	C:h.kernel
o_rl.bbc:	rlib.h.bbc
o_rl.bbc:	C:h.swis
o_rl.colourmenu:	rlib.c.colourmenu
o_rl.colourmenu:	C:h.stdio
o_rl.colourmenu:	rlib.h.os
o_rl.colourmenu:	C:h.kernel
o_rl.colourmenu:	rlib.h.wimp
o_rl.colourmenu:	rlib.h.sprite
o_rl.colourmenu:	rlib.h.menu
o_rl.colourmenu:	rlib.h.colourmenu
o_rl.colourtran:	rlib.c.colourtran
o_rl.colourtran:	C:h.stddef
o_rl.colourtran:	rlib.h.colourtran
o_rl.colourtran:	rlib.h.os
o_rl.colourtran:	C:h.kernel
o_rl.colourtran:	rlib.h.wimp
o_rl.colourtran:	rlib.h.sprite
o_rl.colourtran:	rlib.h.font
o_rl.colourtran:	C:h.stddef
o_rl.colourtran:	rlib.h.drawmod
o_rl.colourtran:	rlib.h.os
o_rl.colourtran:	rlib.h.wimp
o_rl.coords:	rlib.c.coords
o_rl.coords:	rlib.h.wimp
o_rl.coords:	rlib.h.os
o_rl.coords:	C:h.kernel
o_rl.coords:	rlib.h.sprite
o_rl.coords:	rlib.h.coords
o_rl.dbox:	rlib.c.dbox
o_rl.dbox:	C:h.stdarg
o_rl.dbox:	C:h.stdlib
o_rl.dbox:	C:h.string
o_rl.dbox:	C:h.stdio
o_rl.dbox:	C:h.ctype
o_rl.dbox:	C:h.limits
o_rl.dbox:	rlib.h.trace
o_rl.dbox:	rlib.h.werr
o_rl.dbox:	rlib.h.os
o_rl.dbox:	C:h.kernel
o_rl.dbox:	rlib.h.akbd
o_rl.dbox:	rlib.h.wimp
o_rl.dbox:	rlib.h.sprite
o_rl.dbox:	rlib.h.wimpt
o_rl.dbox:	rlib.h.win
o_rl.dbox:	rlib.h.menu
o_rl.dbox:	rlib.h.event
o_rl.dbox:	rlib.h.dbox
o_rl.dbox:	rlib.h.res
o_rl.dbox:	C:h.stdio
o_rl.dbox:	rlib.h.sprite
o_rl.dbox:	rlib.h.resspr
o_rl.dbox:	rlib.h.template
o_rl.dbox:	rlib.h.alarm
o_rl.dbox:	rlib.h.msgs
o_rl.dbox:	rlib.VerIntern.h.messages
o_rl.dboxfile:	rlib.c.dboxfile
o_rl.dboxfile:	C:h.stdio
o_rl.dboxfile:	rlib.h.dbox
o_rl.dboxfile:	rlib.h.dboxfile
o_rl.dboxfile:	rlib.h.trace
o_rl.dboxquery:	rlib.c.dboxquery
o_rl.dboxquery:	C:h.stdio
o_rl.dboxquery:	rlib.h.dbox
o_rl.dboxquery:	rlib.h.dboxquery
o_rl.dboxquery:	rlib.h.help
o_rl.dboxquery:	rlib.h.wimp
o_rl.dboxquery:	rlib.h.os
o_rl.dboxquery:	C:h.kernel
o_rl.dboxquery:	rlib.h.sprite
o_rl.dboxquery:	rlib.h.event
o_rl.dboxquery:	rlib.h.menu
o_rl.dboxtcol:	rlib.c.dboxtcol
o_rl.dboxtcol:	rlib.h.colourpick
o_rl.dboxtcol:	rlib.h.coords
o_rl.dboxtcol:	rlib.h.wimp
o_rl.dboxtcol:	rlib.h.os
o_rl.dboxtcol:	C:h.kernel
o_rl.dboxtcol:	rlib.h.sprite
o_rl.dboxtcol:	rlib.h.event
o_rl.dboxtcol:	rlib.h.menu
o_rl.dboxtcol:	rlib.h.dboxtcol
o_rl.dboxtcol:	rlib.h.help
o_rl.dboxtcol:	rlib.h.dbox
o_rl.dboxtcol:	rlib.h.os
o_rl.dboxtcol:	rlib.h.wimp
o_rl.dboxtcol:	rlib.h.wimpt
o_rl.dboxtcol:	rlib.h.win
o_rl.dboxtcol:	C:h.swis
o_rl.dragasprit:	rlib.c.dragasprit
o_rl.dragasprit:	rlib.h.os
o_rl.dragasprit:	C:h.kernel
o_rl.dragasprit:	rlib.h.dragasprit
o_rl.dragasprit:	rlib.h.sprite
o_rl.dragasprit:	rlib.h.wimp
o_rl.drawcheck:	rlib.c.drawcheck
o_rl.drawcheck:	C:h.stdio
o_rl.drawcheck:	C:h.stdlib
o_rl.drawcheck:	C:h.string
o_rl.drawcheck:	C:h.limits
o_rl.drawcheck:	rlib.h.os
o_rl.drawcheck:	C:h.kernel
o_rl.drawcheck:	rlib.h.sprite
o_rl.drawcheck:	rlib.h.bbc
o_rl.drawcheck:	rlib.h.font
o_rl.drawcheck:	C:h.stddef
o_rl.drawcheck:	rlib.h.drawmod
o_rl.drawcheck:	rlib.h.wimp
o_rl.drawcheck:	rlib.h.drawmod
o_rl.drawcheck:	rlib.h.wimpt
o_rl.drawcheck:	rlib.h.trace
o_rl.drawcheck:	rlib.DrawIntern.h.drawfile1
o_rl.drawcheck:	rlib.h.drawferror
o_rl.drawfdiag:	rlib.c.drawfdiag
o_rl.drawfdiag:	C:h.stdio
o_rl.drawfdiag:	C:h.stdlib
o_rl.drawfdiag:	C:h.string
o_rl.drawfdiag:	rlib.h.os
o_rl.drawfdiag:	C:h.kernel
o_rl.drawfdiag:	rlib.h.sprite
o_rl.drawfdiag:	rlib.DrawIntern.h.drawfile1
o_rl.drawfdiag:	rlib.h.drawfdiag
o_rl.drawfdiag:	rlib.h.drawfobj
o_rl.drawfdiag:	rlib.DrawIntern.h.drawcvttyp
o_rl.drawfdiag:	rlib.DrawIntern.h.drawfile2
o_rl.drawfdiag:	rlib.h.drawferror
o_rl.drawfiles:	rlib.c.drawfiles
o_rl.drawfiles:	C:h.stdlib
o_rl.drawfiles:	C:h.stdio
o_rl.drawfiles:	C:h.string
o_rl.drawfiles:	rlib.h.os
o_rl.drawfiles:	C:h.kernel
o_rl.drawfiles:	rlib.h.bbc
o_rl.drawfiles:	rlib.h.sprite
o_rl.drawfiles:	rlib.h.font
o_rl.drawfiles:	C:h.stddef
o_rl.drawfiles:	rlib.h.drawmod
o_rl.drawfiles:	rlib.h.wimp
o_rl.drawfiles:	C:h.swis
o_rl.drawfiles:	rlib.DrawIntern.h.drawfile1
o_rl.drawfiles:	rlib.h.drawfdiag
o_rl.drawfiles:	rlib.DrawIntern.h.drawfile2
o_rl.drawfobj:	rlib.c.drawfobj
o_rl.drawfobj:	C:h.stdio
o_rl.drawfobj:	C:h.stdlib
o_rl.drawfobj:	C:h.string
o_rl.drawfobj:	rlib.h.os
o_rl.drawfobj:	C:h.kernel
o_rl.drawfobj:	rlib.h.bbc
o_rl.drawfobj:	rlib.h.sprite
o_rl.drawfobj:	rlib.h.wimpt
o_rl.drawfobj:	rlib.h.wimp
o_rl.drawfobj:	rlib.DrawIntern.h.drawfile1
o_rl.drawfobj:	rlib.h.drawfdiag
o_rl.drawfobj:	rlib.h.drawfobj
o_rl.drawfobj:	rlib.DrawIntern.h.drawcvttyp
o_rl.drawfobj:	rlib.DrawIntern.h.drawfile2
o_rl.drawfobj:	rlib.h.drawferror
o_rl.drawmod:	rlib.c.drawmod
o_rl.drawmod:	rlib.h.drawmod
o_rl.drawmod:	rlib.h.os
o_rl.drawmod:	C:h.kernel
o_rl.drawmod:	rlib.h.os
o_rl.drawtextc:	rlib.c.drawtextc
o_rl.drawtextc:	C:h.stdio
o_rl.drawtextc:	C:h.stdlib
o_rl.drawtextc:	C:h.string
o_rl.drawtextc:	rlib.h.os
o_rl.drawtextc:	C:h.kernel
o_rl.drawtextc:	rlib.h.bbc
o_rl.drawtextc:	rlib.h.font
o_rl.drawtextc:	C:h.stddef
o_rl.drawtextc:	rlib.h.drawmod
o_rl.drawtextc:	rlib.h.wimp
o_rl.drawtextc:	rlib.h.sprite
o_rl.drawtextc:	rlib.h.sprite
o_rl.drawtextc:	rlib.h.werr
o_rl.drawtextc:	rlib.DrawIntern.h.drawfile1
o_rl.drawtextc:	rlib.h.drawfdiag
o_rl.drawtextc:	rlib.DrawIntern.h.drawfile2
o_rl.drawtextc:	rlib.h.drawferror
o_rl.event:	rlib.c.event
o_rl.event:	C:h.stdlib
o_rl.event:	rlib.h.trace
o_rl.event:	rlib.h.os
o_rl.event:	C:h.kernel
o_rl.event:	rlib.h.wimp
o_rl.event:	rlib.h.sprite
o_rl.event:	rlib.h.wimpt
o_rl.event:	rlib.h.win
o_rl.event:	rlib.h.menu
o_rl.event:	rlib.h.alarm
o_rl.event:	rlib.h.event
o_rl.fileicon:	rlib.c.fileicon
o_rl.fileicon:	C:h.stdio
o_rl.fileicon:	rlib.h.os
o_rl.fileicon:	C:h.kernel
o_rl.fileicon:	rlib.h.wimp
o_rl.fileicon:	rlib.h.sprite
o_rl.fileicon:	rlib.h.wimpt
o_rl.fileicon:	rlib.h.sprite
o_rl.fileicon:	rlib.h.trace
o_rl.fileicon:	rlib.h.fileicon
o_rl.fileicon:	rlib.h.werr
o_rl.flex:	rlib.c.flex
o_rl.flex:	C:h.stdlib
o_rl.flex:	C:h.stdarg
o_rl.flex:	C:h.string
o_rl.flex:	C:h.stdio
o_rl.flex:	C:h.swis
o_rl.flex:	C:h.kernel
o_rl.flex:	rlib.h.os
o_rl.flex:	rlib.h.werr
o_rl.flex:	rlib.h.flex
o_rl.flex:	rlib.h.trace
o_rl.flex:	rlib.h.wimp
o_rl.flex:	rlib.h.sprite
o_rl.flex:	rlib.h.wimpt
o_rl.flex:	rlib.h.msgs
o_rl.flex:	rlib.VerIntern.h.messages
o_rl.font:	rlib.c.font
o_rl.font:	C:h.stddef
o_rl.font:	C:h.stdlib
o_rl.font:	C:h.string
o_rl.font:	rlib.h.os
o_rl.font:	C:h.kernel
o_rl.font:	rlib.h.trace
o_rl.font:	rlib.h.msgs
o_rl.font:	rlib.h.wimp
o_rl.font:	rlib.h.sprite
o_rl.font:	rlib.h.font
o_rl.font:	C:h.stddef
o_rl.font:	rlib.h.drawmod
o_rl.font:	rlib.VerIntern.h.messages
o_rl.fontlist:	rlib.c.fontlist
o_rl.fontlist:	C:h.stdlib
o_rl.fontlist:	C:h.stdio
o_rl.fontlist:	C:h.string
o_rl.fontlist:	rlib.h.werr
o_rl.fontlist:	rlib.h.wimp
o_rl.fontlist:	rlib.h.os
o_rl.fontlist:	C:h.kernel
o_rl.fontlist:	rlib.h.sprite
o_rl.fontlist:	rlib.h.wimpt
o_rl.fontlist:	rlib.h.win
o_rl.fontlist:	rlib.h.event
o_rl.fontlist:	rlib.h.menu
o_rl.fontlist:	rlib.h.baricon
o_rl.fontlist:	rlib.h.res
o_rl.fontlist:	C:h.stdio
o_rl.fontlist:	rlib.h.resspr
o_rl.fontlist:	rlib.h.menu
o_rl.fontlist:	rlib.h.template
o_rl.fontlist:	rlib.h.dbox
o_rl.fontlist:	rlib.h.fontlist
o_rl.fontlist:	rlib.h.fontselect
o_rl.fontlist:	rlib.h.msgs
o_rl.fontlist:	rlib.h.akbd
o_rl.fontlist:	rlib.h.font
o_rl.fontlist:	C:h.stddef
o_rl.fontlist:	rlib.h.drawmod
o_rl.fontselect:	rlib.c.fontselect
o_rl.fontselect:	C:h.stdlib
o_rl.fontselect:	C:h.stdio
o_rl.fontselect:	rlib.h.werr
o_rl.fontselect:	rlib.h.wimp
o_rl.fontselect:	rlib.h.os
o_rl.fontselect:	C:h.kernel
o_rl.fontselect:	rlib.h.sprite
o_rl.fontselect:	rlib.h.wimpt
o_rl.fontselect:	rlib.h.win
o_rl.fontselect:	rlib.h.event
o_rl.fontselect:	rlib.h.menu
o_rl.fontselect:	rlib.h.baricon
o_rl.fontselect:	rlib.h.res
o_rl.fontselect:	C:h.stdio
o_rl.fontselect:	rlib.h.resspr
o_rl.fontselect:	rlib.h.menu
o_rl.fontselect:	rlib.h.template
o_rl.fontselect:	rlib.h.dbox
o_rl.fontselect:	rlib.h.fontlist
o_rl.fontselect:	rlib.h.fontselect
o_rl.fontselect:	rlib.h.msgs
o_rl.fontselect:	rlib.h.akbd
o_rl.fontselect:	rlib.h.font
o_rl.fontselect:	C:h.stddef
o_rl.fontselect:	rlib.h.drawmod
o_rl.fontselect:	C:h.string
o_rl.heap:	rlib.c.heap
o_rl.heap:	rlib.h.heap
o_rl.heap:	rlib.h.os
o_rl.heap:	C:h.kernel
o_rl.heap:	C:h.stdlib
o_rl.help:	rlib.c.help
o_rl.help:	C:h.string
o_rl.help:	rlib.h.os
o_rl.help:	C:h.kernel
o_rl.help:	rlib.h.wimp
o_rl.help:	rlib.h.sprite
o_rl.help:	rlib.h.wimpt
o_rl.help:	rlib.h.werr
o_rl.help:	rlib.h.trace
o_rl.help:	rlib.h.event
o_rl.help:	rlib.h.menu
o_rl.help:	rlib.h.dbox
o_rl.help:	rlib.h.msgs
o_rl.help:	rlib.h.help
o_rl.help:	C:h.swis
o_rl.jpeg:	rlib.c.jpeg
o_rl.jpeg:	C:h.stddef
o_rl.jpeg:	rlib.h.jpeg
o_rl.jpeg:	rlib.h.sprite
o_rl.jpeg:	rlib.h.os
o_rl.jpeg:	C:h.kernel
o_rl.magnify:	rlib.c.magnify
o_rl.magnify:	rlib.h.os
o_rl.magnify:	C:h.kernel
o_rl.magnify:	rlib.h.wimp
o_rl.magnify:	rlib.h.sprite
o_rl.magnify:	rlib.h.wimpt
o_rl.magnify:	rlib.h.dbox
o_rl.magnify:	rlib.h.magnify
o_rl.magnify:	rlib.h.help
o_rl.magnify:	rlib.h.event
o_rl.magnify:	rlib.h.menu
o_rl.menu:	rlib.c.menu
o_rl.menu:	C:h.stdlib
o_rl.menu:	C:h.string
o_rl.menu:	C:h.stdarg
o_rl.menu:	rlib.h.os
o_rl.menu:	C:h.kernel
o_rl.menu:	rlib.h.wimp
o_rl.menu:	rlib.h.sprite
o_rl.menu:	rlib.h.werr
o_rl.menu:	rlib.h.menu
o_rl.menu:	rlib.h.sprite
o_rl.menu:	rlib.h.resspr
o_rl.menu:	rlib.h.msgs
o_rl.menu:	rlib.VerIntern.h.messages
o_rl.msgs:	rlib.c.msgs
o_rl.msgs:	C:h.stdlib
o_rl.msgs:	rlib.h.msgs
o_rl.msgs:	C:h.swis
o_rl.msgs:	C:h.kernel
o_rl.msgs:	rlib.h.msgtrans
o_rl.msgs:	rlib.h.res
o_rl.msgs:	C:h.stdio
o_rl.msgs:	rlib.h.os
o_rl.msgs:	rlib.h.wimpt
o_rl.msgs:	rlib.h.wimp
o_rl.msgs:	rlib.h.sprite
o_rl.os:	rlib.c.os
o_rl.os:	rlib.h.os
o_rl.os:	C:h.kernel
o_rl.pointer:	rlib.c.pointer
o_rl.pointer:	C:h.stddef
o_rl.pointer:	rlib.h.os
o_rl.pointer:	C:h.kernel
o_rl.pointer:	rlib.h.sprite
o_rl.pointer:	rlib.h.pointer
o_rl.pointer:	rlib.h.wimp
o_rl.poll: rlib.s.poll
o_rl.poll: Hdr:ListOpts
o_rl.poll: Hdr:APCS.Common
o_rl.poll: Hdr:Macros
o_rl.print:	rlib.c.print
o_rl.print:	rlib.h.os
o_rl.print:	C:h.kernel
o_rl.print:	rlib.h.print
o_rl.res:	rlib.c.res
o_rl.res:	C:h.stdio
o_rl.res:	C:h.string
o_rl.res:	rlib.h.os
o_rl.res:	C:h.kernel
o_rl.res:	rlib.h.trace
o_rl.res:	rlib.h.werr
o_rl.res:	rlib.h.res
o_rl.res:	C:h.stdio
o_rl.resspr:	rlib.c.resspr
o_rl.resspr:	C:h.stdlib
o_rl.resspr:	C:h.stdio
o_rl.resspr:	C:h.string
o_rl.resspr:	C:h.swis
o_rl.resspr:	C:h.kernel
o_rl.resspr:	rlib.h.sprite
o_rl.resspr:	rlib.h.os
o_rl.resspr:	rlib.h.res
o_rl.resspr:	C:h.stdio
o_rl.resspr:	rlib.h.wimp
o_rl.resspr:	rlib.h.werr
o_rl.resspr:	rlib.h.msgs
o_rl.resspr:	rlib.VerIntern.h.messages
o_rl.resspr:	rlib.h.resspr
o_rl.saveas:	rlib.c.saveas
o_rl.saveas:	C:h.string
o_rl.saveas:	C:h.stdio
o_rl.saveas:	C:h.stdlib
o_rl.saveas:	rlib.h.trace
o_rl.saveas:	rlib.h.os
o_rl.saveas:	C:h.kernel
o_rl.saveas:	rlib.h.bbc
o_rl.saveas:	rlib.h.wimp
o_rl.saveas:	rlib.h.sprite
o_rl.saveas:	rlib.h.wimpt
o_rl.saveas:	rlib.h.win
o_rl.saveas:	rlib.h.dbox
o_rl.saveas:	rlib.h.saveas
o_rl.saveas:	rlib.h.xfersend
o_rl.saveas:	rlib.h.fileicon
o_rl.saveas:	rlib.h.werr
o_rl.saveas:	rlib.h.menu
o_rl.saveas:	rlib.h.event
o_rl.saveas:	rlib.h.msgs
o_rl.saveas:	rlib.h.help
o_rl.saveas:	rlib.h.template
o_rl.saveas:	rlib.VerIntern.h.messages
o_rl.sprite:	rlib.c.sprite
o_rl.sprite:	C:h.stddef
o_rl.sprite:	rlib.h.os
o_rl.sprite:	C:h.kernel
o_rl.sprite:	rlib.h.sprite
o_rl.swi: rlib.s.swi
o_rl.swi: Hdr:ListOpts
o_rl.swi: Hdr:APCS.Common
o_rl.swi: Hdr:Macros
o_rl.template:	rlib.c.template
o_rl.template:	C:h.stdlib
o_rl.template:	C:h.stdio
o_rl.template:	C:h.string
o_rl.template:	C:h.string
o_rl.template:	C:h.swis
o_rl.template:	C:h.kernel
o_rl.template:	rlib.h.os
o_rl.template:	rlib.h.wimp
o_rl.template:	rlib.h.sprite
o_rl.template:	rlib.h.wimpt
o_rl.template:	rlib.h.res
o_rl.template:	C:h.stdio
o_rl.template:	rlib.h.sprite
o_rl.template:	rlib.h.resspr
o_rl.template:	rlib.h.werr
o_rl.template:	rlib.h.template
o_rl.template:	rlib.h.trace
o_rl.template:	rlib.h.msgs
o_rl.template:	rlib.h.font
o_rl.template:	C:h.stddef
o_rl.template:	rlib.h.drawmod
o_rl.template:	rlib.VerIntern.h.messages
o_rl.trace:	rlib.c.trace
o_rl.trace:	C:h.string
o_rl.trace:	C:h.stdarg
o_rl.trace:	C:h.stdio
o_rl.trace:	C:h.ctype
o_rl.trace:	rlib.h.os
o_rl.trace:	C:h.kernel
o_rl.trace:	rlib.h.bbc
o_rl.trace:	rlib.h.wimp
o_rl.trace:	rlib.h.sprite
o_rl.trace:	rlib.h.wimpt
o_rl.txt:	rlib.c.txt
o_rl.txt:	C:h.stdlib
o_rl.txt:	C:h.stdarg
o_rl.txt:	rlib.h.txt
o_rl.txt:	rlib.EditIntern.h.txtundo
o_rl.txt:	rlib.EditIntern.h.txt1
o_rl.txt:	rlib.EditIntern.h.txt3
o_rl.txt:	rlib.EditIntern.h.txtar
o_rl.txt:	rlib.h.werr
o_rl.txt:	rlib.h.trace
o_rl.txt1:	rlib.c.txt1
o_rl.txt1:	C:h.limits
o_rl.txt1:	C:h.string
o_rl.txt1:	C:h.stdlib
o_rl.txt1:	C:h.limits
o_rl.txt1:	C:h.stdarg
o_rl.txt1:	rlib.h.trace
o_rl.txt1:	rlib.h.werr
o_rl.txt1:	rlib.h.flex
o_rl.txt1:	rlib.h.msgs
o_rl.txt1:	rlib.h.txt
o_rl.txt1:	rlib.EditIntern.h.txtundo
o_rl.txt1:	rlib.EditIntern.h.txt1
o_rl.txt1:	rlib.EditIntern.h.txt3
o_rl.txt1:	rlib.VerIntern.h.messages
o_rl.txt3:	rlib.c.txt3
o_rl.txt3:	C:h.stdio
o_rl.txt3:	C:h.string
o_rl.txt3:	C:h.stdlib
o_rl.txt3:	rlib.h.trace
o_rl.txt3:	rlib.h.werr
o_rl.txt3:	rlib.h.txt
o_rl.txt3:	rlib.EditIntern.h.txtundo
o_rl.txt3:	rlib.EditIntern.h.txt1
o_rl.txt3:	rlib.EditIntern.h.txt3
o_rl.txtar:	rlib.c.txtar
o_rl.txtar:	C:h.string
o_rl.txtar:	C:h.stdlib
o_rl.txtar:	C:h.stdarg
o_rl.txtar:	C:h.stdio
o_rl.txtar:	rlib.h.os
o_rl.txtar:	C:h.kernel
o_rl.txtar:	C:h.swis
o_rl.txtar:	rlib.h.bbc
o_rl.txtar:	rlib.h.dbox
o_rl.txtar:	rlib.h.werr
o_rl.txtar:	rlib.h.akbd
o_rl.txtar:	rlib.h.wimp
o_rl.txtar:	rlib.h.sprite
o_rl.txtar:	rlib.h.wimpt
o_rl.txtar:	rlib.h.font
o_rl.txtar:	C:h.stddef
o_rl.txtar:	rlib.h.drawmod
o_rl.txtar:	rlib.h.trace
o_rl.txtar:	rlib.h.win
o_rl.txtar:	rlib.h.menu
o_rl.txtar:	rlib.h.event
o_rl.txtar:	rlib.h.xferrecv
o_rl.txtar:	rlib.h.visdelay
o_rl.txtar:	rlib.h.msgs
o_rl.txtar:	rlib.h.txt
o_rl.txtar:	rlib.EditIntern.h.txtundo
o_rl.txtar:	rlib.EditIntern.h.txt1
o_rl.txtar:	rlib.EditIntern.h.txt3
o_rl.txtar:	rlib.EditIntern.h.txtar
o_rl.txtar:	rlib.h.txtscrap
o_rl.txtar:	rlib.h.txtopt
o_rl.txtar:	rlib.VerIntern.h.messages
o_rl.txtedit:	rlib.c.txtedit
o_rl.txtedit:	C:h.stdio
o_rl.txtedit:	C:h.string
o_rl.txtedit:	C:h.stdlib
o_rl.txtedit:	C:h.limits
o_rl.txtedit:	C:h.signal
o_rl.txtedit:	C:h.ctype
o_rl.txtedit:	rlib.h.akbd
o_rl.txtedit:	rlib.h.werr
o_rl.txtedit:	rlib.h.menu
o_rl.txtedit:	rlib.h.os
o_rl.txtedit:	C:h.kernel
o_rl.txtedit:	rlib.h.wimp
o_rl.txtedit:	rlib.h.sprite
o_rl.txtedit:	rlib.h.wimpt
o_rl.txtedit:	rlib.h.txt
o_rl.txtedit:	rlib.h.win
o_rl.txtedit:	rlib.h.txtwin
o_rl.txtedit:	rlib.h.flex
o_rl.txtedit:	rlib.h.txtscrap
o_rl.txtedit:	rlib.h.event
o_rl.txtedit:	rlib.h.txtedit
o_rl.txtedit:	rlib.h.typdat
o_rl.txtedit:	rlib.EditIntern.h.txtfind
o_rl.txtedit:	rlib.EditIntern.h.txtregexp
o_rl.txtedit:	rlib.EditIntern.h.txtmisc
o_rl.txtedit:	rlib.EditIntern.h.txtundo
o_rl.txtedit:	rlib.EditIntern.h.txt1
o_rl.txtedit:	rlib.EditIntern.h.txtar
o_rl.txtedit:	rlib.h.dboxquery
o_rl.txtedit:	rlib.h.dboxfile
o_rl.txtedit:	rlib.h.trace
o_rl.txtedit:	rlib.h.dbox
o_rl.txtedit:	rlib.EditIntern.h.txtoptmenu
o_rl.txtedit:	rlib.h.xfersend
o_rl.txtedit:	rlib.h.xferrecv
o_rl.txtedit:	rlib.h.saveas
o_rl.txtedit:	rlib.h.typdat
o_rl.txtedit:	rlib.h.fileicon
o_rl.txtedit:	rlib.h.visdelay
o_rl.txtedit:	rlib.EditIntern.h.txtfile
o_rl.txtedit:	rlib.EditIntern.h.txtregexp
o_rl.txtedit:	C:h.swis
o_rl.txtedit:	rlib.h.txtopt
o_rl.txtedit:	rlib.h.msgs
o_rl.txtedit:	rlib.h.help
o_rl.txtedit:	rlib.h.template
o_rl.txtedit:	rlib.VerIntern.h.messages
o_rl.txtfile:	rlib.c.txtfile
o_rl.txtfile:	C:h.stdio
o_rl.txtfile:	C:h.string
o_rl.txtfile:	C:h.stdlib
o_rl.txtfile:	C:h.limits
o_rl.txtfile:	rlib.h.os
o_rl.txtfile:	C:h.kernel
o_rl.txtfile:	rlib.h.txt
o_rl.txtfile:	rlib.h.typdat
o_rl.txtfile:	rlib.h.flex
o_rl.txtfile:	C:h.swis
o_rl.txtfile:	rlib.h.wimpt
o_rl.txtfile:	rlib.h.wimp
o_rl.txtfile:	rlib.h.sprite
o_rl.txtfile:	rlib.h.txt
o_rl.txtfile:	rlib.EditIntern.h.txtundo
o_rl.txtfile:	rlib.EditIntern.h.txt1
o_rl.txtfile:	rlib.h.txtedit
o_rl.txtfile:	rlib.h.menu
o_rl.txtfile:	rlib.h.txtscrap
o_rl.txtfile:	rlib.h.xfersend
o_rl.txtfile:	rlib.h.xferrecv
o_rl.txtfile:	rlib.EditIntern.h.txtfile
o_rl.txtfile:	rlib.h.trace
o_rl.txtfile:	rlib.h.werr
o_rl.txtfile:	rlib.h.msgs
o_rl.txtfile:	rlib.h.visdelay
o_rl.txtfile:	rlib.VerIntern.h.messages
o_rl.txtfind:	rlib.c.txtfind
o_rl.txtfind:	C:h.stdio
o_rl.txtfind:	C:h.string
o_rl.txtfind:	C:h.stdlib
o_rl.txtfind:	C:h.ctype
o_rl.txtfind:	rlib.h.werr
o_rl.txtfind:	rlib.h.txt
o_rl.txtfind:	rlib.EditIntern.h.txtregexp
o_rl.txtfind:	rlib.EditIntern.h.txtfind
o_rl.txtfind:	rlib.EditIntern.h.txtregexp
o_rl.txtfind:	rlib.h.trace
o_rl.txtfind:	rlib.h.msgs
o_rl.txtfind:	rlib.h.visdelay
o_rl.txtfind:	rlib.VerIntern.h.messages
o_rl.txtmisc:	rlib.c.txtmisc
o_rl.txtmisc:	C:h.stdio
o_rl.txtmisc:	C:h.string
o_rl.txtmisc:	C:h.stdlib
o_rl.txtmisc:	C:h.limits
o_rl.txtmisc:	rlib.h.werr
o_rl.txtmisc:	rlib.h.txt
o_rl.txtmisc:	rlib.h.flex
o_rl.txtmisc:	rlib.h.txtscrap
o_rl.txtmisc:	rlib.EditIntern.h.txtmisc
o_rl.txtmisc:	rlib.EditIntern.h.txtundo
o_rl.txtmisc:	rlib.h.trace
o_rl.txtmisc:	rlib.h.msgs
o_rl.txtmisc:	rlib.VerIntern.h.messages
o_rl.txtopt:	rlib.c.txtopt
o_rl.txtopt:	C:h.stdlib
o_rl.txtopt:	C:h.string
o_rl.txtopt:	rlib.h.msgs
o_rl.txtopt:	rlib.h.werr
o_rl.txtopt:	rlib.h.txtopt
o_rl.txtopt:	rlib.VerIntern.h.messages
o_rl.txtoptmenu:	rlib.c.txtoptmenu
o_rl.txtoptmenu:	C:h.stdio
o_rl.txtoptmenu:	C:h.string
o_rl.txtoptmenu:	C:h.stdlib
o_rl.txtoptmenu:	rlib.h.os
o_rl.txtoptmenu:	C:h.kernel
o_rl.txtoptmenu:	rlib.h.wimp
o_rl.txtoptmenu:	rlib.h.sprite
o_rl.txtoptmenu:	rlib.h.wimpt
o_rl.txtoptmenu:	rlib.h.menu
o_rl.txtoptmenu:	rlib.h.dbox
o_rl.txtoptmenu:	rlib.h.event
o_rl.txtoptmenu:	rlib.h.txt
o_rl.txtoptmenu:	rlib.EditIntern.h.txtar
o_rl.txtoptmenu:	rlib.EditIntern.h.txtundo
o_rl.txtoptmenu:	rlib.EditIntern.h.txt1
o_rl.txtoptmenu:	rlib.EditIntern.h.txtoptmenu
o_rl.txtoptmenu:	rlib.h.visdelay
o_rl.txtoptmenu:	rlib.h.font
o_rl.txtoptmenu:	C:h.stddef
o_rl.txtoptmenu:	rlib.h.drawmod
o_rl.txtoptmenu:	rlib.h.trace
o_rl.txtoptmenu:	rlib.h.werr
o_rl.txtoptmenu:	rlib.h.colourmenu
o_rl.txtoptmenu:	rlib.h.msgs
o_rl.txtoptmenu:	rlib.h.txtwin
o_rl.txtoptmenu:	rlib.VerIntern.h.messages
o_rl.txtregexp:	rlib.c.txtregexp
o_rl.txtregexp:	C:h.stdio
o_rl.txtregexp:	C:h.stdlib
o_rl.txtregexp:	C:h.string
o_rl.txtregexp:	C:h.ctype
o_rl.txtregexp:	rlib.EditIntern.h.txtregexp
o_rl.txtregexp:	rlib.h.txt
o_rl.txtregexp:	rlib.VerIntern.h.messages
o_rl.txtregexp:	rlib.h.msgs
o_rl.txtregexp:	rlib.h.txt
o_rl.txtregexp:	rlib.h.werr
o_rl.txtscrap:	rlib.c.txtscrap
o_rl.txtscrap:	C:h.stdio
o_rl.txtscrap:	C:h.string
o_rl.txtscrap:	C:h.stdlib
o_rl.txtscrap:	rlib.h.txt
o_rl.txtscrap:	rlib.h.txtscrap
o_rl.txtundo:	rlib.c.txtundo
o_rl.txtundo:	C:h.stdlib
o_rl.txtundo:	C:h.string
o_rl.txtundo:	C:h.stdarg
o_rl.txtundo:	rlib.h.flex
o_rl.txtundo:	rlib.h.trace
o_rl.txtundo:	rlib.h.txt
o_rl.txtundo:	rlib.EditIntern.h.txtundo
o_rl.txtundo:	rlib.EditIntern.h.txt1
o_rl.txtundo:	rlib.h.txtscrap
o_rl.txtundo:	rlib.h.werr
o_rl.txtwin:	rlib.c.txtwin
o_rl.txtwin:	rlib.h.trace
o_rl.txtwin:	rlib.h.os
o_rl.txtwin:	C:h.kernel
o_rl.txtwin:	rlib.h.wimp
o_rl.txtwin:	rlib.h.sprite
o_rl.txtwin:	rlib.h.wimpt
o_rl.txtwin:	rlib.h.win
o_rl.txtwin:	rlib.h.txt
o_rl.txtwin:	rlib.EditIntern.h.txtundo
o_rl.txtwin:	rlib.EditIntern.h.txt1
o_rl.txtwin:	rlib.EditIntern.h.txt3
o_rl.txtwin:	rlib.EditIntern.h.txtar
o_rl.txtwin:	rlib.h.txtwin
o_rl.visdelay:	rlib.c.visdelay
o_rl.visdelay:	rlib.h.os
o_rl.visdelay:	C:h.kernel
o_rl.visdelay:	rlib.h.visdelay
o_rl.werr:	rlib.c.werr
o_rl.werr:	C:h.stdarg
o_rl.werr:	C:h.stdlib
o_rl.werr:	C:h.stdio
o_rl.werr:	C:h.string
o_rl.werr:	C:h.swis
o_rl.werr:	C:h.kernel
o_rl.werr:	rlib.h.os
o_rl.werr:	rlib.h.wimp
o_rl.werr:	rlib.h.sprite
o_rl.werr:	rlib.h.werr
o_rl.werr:	rlib.h.wimpt
o_rl.wimp:	rlib.c.wimp
o_rl.wimp:	C:h.stdlib
o_rl.wimp:	C:h.string
o_rl.wimp:	C:h.stdarg
o_rl.wimp:	rlib.h.os
o_rl.wimp:	C:h.kernel
o_rl.wimp:	rlib.h.trace
o_rl.wimp:	rlib.h.wimp
o_rl.wimp:	rlib.h.sprite
o_rl.wimpt:	rlib.c.wimpt
o_rl.wimpt:	C:h.stdarg
o_rl.wimpt:	C:h.stdlib
o_rl.wimpt:	C:h.stdio
o_rl.wimpt:	C:h.signal
o_rl.wimpt:	C:h.string
o_rl.wimpt:	C:h.swis
o_rl.wimpt:	C:h.kernel
o_rl.wimpt:	rlib.h.akbd
o_rl.wimpt:	rlib.h.os
o_rl.wimpt:	rlib.h.bbc
o_rl.wimpt:	rlib.h.wimp
o_rl.wimpt:	rlib.h.sprite
o_rl.wimpt:	rlib.h.wimpt
o_rl.wimpt:	rlib.h.trace
o_rl.wimpt:	rlib.h.werr
o_rl.wimpt:	rlib.h.alarm
o_rl.wimpt:	rlib.h.event
o_rl.wimpt:	rlib.h.menu
o_rl.wimpt:	rlib.h.msgs
o_rl.wimpt:	rlib.h.win
o_rl.wimpt:	rlib.VerIntern.h.messages
o_rl.win:	rlib.c.win
o_rl.win:	C:h.stdarg
o_rl.win:	C:h.stdlib
o_rl.win:	C:h.string
o_rl.win:	rlib.h.trace
o_rl.win:	rlib.h.os
o_rl.win:	C:h.kernel
o_rl.win:	rlib.h.wimp
o_rl.win:	rlib.h.sprite
o_rl.win:	rlib.h.werr
o_rl.win:	rlib.h.wimpt
o_rl.win:	rlib.h.event
o_rl.win:	rlib.h.menu
o_rl.win:	rlib.h.msgs
o_rl.win:	rlib.VerIntern.h.messages
o_rl.win:	rlib.h.win
o_rl.xferrecv:	rlib.c.xferrecv
o_rl.xferrecv:	C:h.string
o_rl.xferrecv:	C:h.stdio
o_rl.xferrecv:	C:h.swis
o_rl.xferrecv:	C:h.kernel
o_rl.xferrecv:	rlib.h.trace
o_rl.xferrecv:	rlib.h.os
o_rl.xferrecv:	rlib.h.bbc
o_rl.xferrecv:	rlib.h.wimp
o_rl.xferrecv:	rlib.h.sprite
o_rl.xferrecv:	rlib.h.wimpt
o_rl.xferrecv:	rlib.h.win
o_rl.xferrecv:	rlib.h.dbox
o_rl.xferrecv:	rlib.h.typdat
o_rl.xferrecv:	rlib.h.xfersend
o_rl.xferrecv:	rlib.h.fileicon
o_rl.xferrecv:	rlib.h.werr
o_rl.xferrecv:	rlib.h.menu
o_rl.xferrecv:	rlib.h.event
o_rl.xferrecv:	rlib.h.xferrecv
o_rl.xferrecv:	rlib.h.msgs
o_rl.xferrecv:	rlib.VerIntern.h.messages
o_rl.xfersend:	rlib.c.xfersend
o_rl.xfersend:	C:h.string
o_rl.xfersend:	C:h.stdio
o_rl.xfersend:	C:h.stdlib
o_rl.xfersend:	rlib.h.trace
o_rl.xfersend:	C:h.swis
o_rl.xfersend:	C:h.kernel
o_rl.xfersend:	rlib.h.os
o_rl.xfersend:	rlib.h.bbc
o_rl.xfersend:	rlib.h.wimp
o_rl.xfersend:	rlib.h.sprite
o_rl.xfersend:	rlib.h.wimpt
o_rl.xfersend:	rlib.h.win
o_rl.xfersend:	rlib.h.dbox
o_rl.xfersend:	rlib.h.xfersend
o_rl.xfersend:	rlib.h.fileicon
o_rl.xfersend:	rlib.h.werr
o_rl.xfersend:	rlib.h.menu
o_rl.xfersend:	rlib.h.event
o_rl.xfersend:	rlib.h.msgs
o_rl.xfersend:	rlib.h.dragasprit
o_rl.xfersend:	rlib.VerIntern.h.messages
m_o_rl.akbd:	rlib.c.akbd
m_o_rl.akbd:	rlib.h.os
m_o_rl.akbd:	C:h.kernel
m_o_rl.akbd:	rlib.h.trace
m_o_rl.akbd:	rlib.h.akbd
m_o_rl.alarm:	rlib.c.alarm
m_o_rl.alarm:	C:h.stdlib
m_o_rl.alarm:	C:h.limits
m_o_rl.alarm:	rlib.h.alarm
m_o_rl.alarm:	rlib.h.werr
m_o_rl.alarm:	rlib.h.os
m_o_rl.alarm:	C:h.kernel
m_o_rl.alarm:	rlib.h.msgs
m_o_rl.alarm:	C:h.swis
m_o_rl.alarm:	rlib.VerIntern.h.messages
m_o_rl.baricon:	rlib.c.baricon
m_o_rl.baricon:	C:h.string
m_o_rl.baricon:	C:h.stdlib
m_o_rl.baricon:	rlib.h.os
m_o_rl.baricon:	C:h.kernel
m_o_rl.baricon:	rlib.h.wimp
m_o_rl.baricon:	rlib.h.sprite
m_o_rl.baricon:	rlib.h.wimpt
m_o_rl.baricon:	rlib.h.trace
m_o_rl.baricon:	rlib.h.bbc
m_o_rl.baricon:	rlib.h.sprite
m_o_rl.baricon:	rlib.h.win
m_o_rl.baricon:	rlib.h.menu
m_o_rl.baricon:	rlib.h.event
m_o_rl.baricon:	rlib.h.baricon
m_o_rl.baricon:	C:h.swis
m_o_rl.bastxt: rlib.s.bastxt
m_o_rl.bastxt: Hdr:ListOpts
m_o_rl.bastxt: Hdr:APCS.Common
m_o_rl.bastxt: Hdr:Macros
m_o_rl.bbc:	rlib.c.bbc
m_o_rl.bbc:	C:h.stdarg
m_o_rl.bbc:	rlib.h.os
m_o_rl.bbc:	C:h.kernel
m_o_rl.bbc:	rlib.h.bbc
m_o_rl.bbc:	C:h.swis
m_o_rl.colourmenu:	rlib.c.colourmenu
m_o_rl.colourmenu:	C:h.stdio
m_o_rl.colourmenu:	rlib.h.os
m_o_rl.colourmenu:	C:h.kernel
m_o_rl.colourmenu:	rlib.h.wimp
m_o_rl.colourmenu:	rlib.h.sprite
m_o_rl.colourmenu:	rlib.h.menu
m_o_rl.colourmenu:	rlib.h.colourmenu
m_o_rl.colourtran:	rlib.c.colourtran
m_o_rl.colourtran:	C:h.stddef
m_o_rl.colourtran:	rlib.h.colourtran
m_o_rl.colourtran:	rlib.h.os
m_o_rl.colourtran:	C:h.kernel
m_o_rl.colourtran:	rlib.h.wimp
m_o_rl.colourtran:	rlib.h.sprite
m_o_rl.colourtran:	rlib.h.font
m_o_rl.colourtran:	C:h.stddef
m_o_rl.colourtran:	rlib.h.drawmod
m_o_rl.colourtran:	rlib.h.os
m_o_rl.colourtran:	rlib.h.wimp
m_o_rl.coords:	rlib.c.coords
m_o_rl.coords:	rlib.h.wimp
m_o_rl.coords:	rlib.h.os
m_o_rl.coords:	C:h.kernel
m_o_rl.coords:	rlib.h.sprite
m_o_rl.coords:	rlib.h.coords
m_o_rl.dbox:	rlib.c.dbox
m_o_rl.dbox:	C:h.stdarg
m_o_rl.dbox:	C:h.stdlib
m_o_rl.dbox:	C:h.string
m_o_rl.dbox:	C:h.stdio
m_o_rl.dbox:	C:h.ctype
m_o_rl.dbox:	C:h.limits
m_o_rl.dbox:	rlib.h.trace
m_o_rl.dbox:	rlib.h.werr
m_o_rl.dbox:	rlib.h.os
m_o_rl.dbox:	C:h.kernel
m_o_rl.dbox:	rlib.h.akbd
m_o_rl.dbox:	rlib.h.wimp
m_o_rl.dbox:	rlib.h.sprite
m_o_rl.dbox:	rlib.h.wimpt
m_o_rl.dbox:	rlib.h.win
m_o_rl.dbox:	rlib.h.menu
m_o_rl.dbox:	rlib.h.event
m_o_rl.dbox:	rlib.h.dbox
m_o_rl.dbox:	rlib.h.res
m_o_rl.dbox:	C:h.stdio
m_o_rl.dbox:	rlib.h.sprite
m_o_rl.dbox:	rlib.h.resspr
m_o_rl.dbox:	rlib.h.template
m_o_rl.dbox:	rlib.h.alarm
m_o_rl.dbox:	rlib.h.msgs
m_o_rl.dbox:	rlib.VerIntern.h.messages
m_o_rl.dboxfile:	rlib.c.dboxfile
m_o_rl.dboxfile:	C:h.stdio
m_o_rl.dboxfile:	rlib.h.dbox
m_o_rl.dboxfile:	rlib.h.dboxfile
m_o_rl.dboxfile:	rlib.h.trace
m_o_rl.dboxquery:	rlib.c.dboxquery
m_o_rl.dboxquery:	C:h.stdio
m_o_rl.dboxquery:	rlib.h.dbox
m_o_rl.dboxquery:	rlib.h.dboxquery
m_o_rl.dboxquery:	rlib.h.help
m_o_rl.dboxquery:	rlib.h.wimp
m_o_rl.dboxquery:	rlib.h.os
m_o_rl.dboxquery:	C:h.kernel
m_o_rl.dboxquery:	rlib.h.sprite
m_o_rl.dboxquery:	rlib.h.event
m_o_rl.dboxquery:	rlib.h.menu
m_o_rl.dboxtcol:	rlib.c.dboxtcol
m_o_rl.dboxtcol:	rlib.h.colourpick
m_o_rl.dboxtcol:	rlib.h.coords
m_o_rl.dboxtcol:	rlib.h.wimp
m_o_rl.dboxtcol:	rlib.h.os
m_o_rl.dboxtcol:	C:h.kernel
m_o_rl.dboxtcol:	rlib.h.sprite
m_o_rl.dboxtcol:	rlib.h.event
m_o_rl.dboxtcol:	rlib.h.menu
m_o_rl.dboxtcol:	rlib.h.dboxtcol
m_o_rl.dboxtcol:	rlib.h.help
m_o_rl.dboxtcol:	rlib.h.dbox
m_o_rl.dboxtcol:	rlib.h.os
m_o_rl.dboxtcol:	rlib.h.wimp
m_o_rl.dboxtcol:	rlib.h.wimpt
m_o_rl.dboxtcol:	rlib.h.win
m_o_rl.dboxtcol:	C:h.swis
m_o_rl.dragasprit:	rlib.c.dragasprit
m_o_rl.dragasprit:	rlib.h.os
m_o_rl.dragasprit:	C:h.kernel
m_o_rl.dragasprit:	rlib.h.dragasprit
m_o_rl.dragasprit:	rlib.h.sprite
m_o_rl.dragasprit:	rlib.h.wimp
m_o_rl.drawcheck:	rlib.c.drawcheck
m_o_rl.drawcheck:	C:h.stdio
m_o_rl.drawcheck:	C:h.stdlib
m_o_rl.drawcheck:	C:h.string
m_o_rl.drawcheck:	C:h.limits
m_o_rl.drawcheck:	rlib.h.os
m_o_rl.drawcheck:	C:h.kernel
m_o_rl.drawcheck:	rlib.h.sprite
m_o_rl.drawcheck:	rlib.h.bbc
m_o_rl.drawcheck:	rlib.h.font
m_o_rl.drawcheck:	C:h.stddef
m_o_rl.drawcheck:	rlib.h.drawmod
m_o_rl.drawcheck:	rlib.h.wimp
m_o_rl.drawcheck:	rlib.h.drawmod
m_o_rl.drawcheck:	rlib.h.wimpt
m_o_rl.drawcheck:	rlib.h.trace
m_o_rl.drawcheck:	rlib.DrawIntern.h.drawfile1
m_o_rl.drawcheck:	rlib.h.drawferror
m_o_rl.drawfdiag:	rlib.c.drawfdiag
m_o_rl.drawfdiag:	C:h.stdio
m_o_rl.drawfdiag:	C:h.stdlib
m_o_rl.drawfdiag:	C:h.string
m_o_rl.drawfdiag:	rlib.h.os
m_o_rl.drawfdiag:	C:h.kernel
m_o_rl.drawfdiag:	rlib.h.sprite
m_o_rl.drawfdiag:	rlib.DrawIntern.h.drawfile1
m_o_rl.drawfdiag:	rlib.h.drawfdiag
m_o_rl.drawfdiag:	rlib.h.drawfobj
m_o_rl.drawfdiag:	rlib.DrawIntern.h.drawcvttyp
m_o_rl.drawfdiag:	rlib.DrawIntern.h.drawfile2
m_o_rl.drawfdiag:	rlib.h.drawferror
m_o_rl.drawfiles:	rlib.c.drawfiles
m_o_rl.drawfiles:	C:h.stdlib
m_o_rl.drawfiles:	C:h.stdio
m_o_rl.drawfiles:	C:h.string
m_o_rl.drawfiles:	rlib.h.os
m_o_rl.drawfiles:	C:h.kernel
m_o_rl.drawfiles:	rlib.h.bbc
m_o_rl.drawfiles:	rlib.h.sprite
m_o_rl.drawfiles:	rlib.h.font
m_o_rl.drawfiles:	C:h.stddef
m_o_rl.drawfiles:	rlib.h.drawmod
m_o_rl.drawfiles:	rlib.h.wimp
m_o_rl.drawfiles:	C:h.swis
m_o_rl.drawfiles:	rlib.DrawIntern.h.drawfile1
m_o_rl.drawfiles:	rlib.h.drawfdiag
m_o_rl.drawfiles:	rlib.DrawIntern.h.drawfile2
m_o_rl.drawfobj:	rlib.c.drawfobj
m_o_rl.drawfobj:	C:h.stdio
m_o_rl.drawfobj:	C:h.stdlib
m_o_rl.drawfobj:	C:h.string
m_o_rl.drawfobj:	rlib.h.os
m_o_rl.drawfobj:	C:h.kernel
m_o_rl.drawfobj:	rlib.h.bbc
m_o_rl.drawfobj:	rlib.h.sprite
m_o_rl.drawfobj:	rlib.h.wimpt
m_o_rl.drawfobj:	rlib.h.wimp
m_o_rl.drawfobj:	rlib.DrawIntern.h.drawfile1
m_o_rl.drawfobj:	rlib.h.drawfdiag
m_o_rl.drawfobj:	rlib.h.drawfobj
m_o_rl.drawfobj:	rlib.DrawIntern.h.drawcvttyp
m_o_rl.drawfobj:	rlib.DrawIntern.h.drawfile2
m_o_rl.drawfobj:	rlib.h.drawferror
m_o_rl.drawmod:	rlib.c.drawmod
m_o_rl.drawmod:	rlib.h.drawmod
m_o_rl.drawmod:	rlib.h.os
m_o_rl.drawmod:	C:h.kernel
m_o_rl.drawmod:	rlib.h.os
m_o_rl.drawtextc:	rlib.c.drawtextc
m_o_rl.drawtextc:	C:h.stdio
m_o_rl.drawtextc:	C:h.stdlib
m_o_rl.drawtextc:	C:h.string
m_o_rl.drawtextc:	rlib.h.os
m_o_rl.drawtextc:	C:h.kernel
m_o_rl.drawtextc:	rlib.h.bbc
m_o_rl.drawtextc:	rlib.h.font
m_o_rl.drawtextc:	C:h.stddef
m_o_rl.drawtextc:	rlib.h.drawmod
m_o_rl.drawtextc:	rlib.h.wimp
m_o_rl.drawtextc:	rlib.h.sprite
m_o_rl.drawtextc:	rlib.h.sprite
m_o_rl.drawtextc:	rlib.h.werr
m_o_rl.drawtextc:	rlib.DrawIntern.h.drawfile1
m_o_rl.drawtextc:	rlib.h.drawfdiag
m_o_rl.drawtextc:	rlib.DrawIntern.h.drawfile2
m_o_rl.drawtextc:	rlib.h.drawferror
m_o_rl.event:	rlib.c.event
m_o_rl.event:	C:h.stdlib
m_o_rl.event:	rlib.h.trace
m_o_rl.event:	rlib.h.os
m_o_rl.event:	C:h.kernel
m_o_rl.event:	rlib.h.wimp
m_o_rl.event:	rlib.h.sprite
m_o_rl.event:	rlib.h.wimpt
m_o_rl.event:	rlib.h.win
m_o_rl.event:	rlib.h.menu
m_o_rl.event:	rlib.h.alarm
m_o_rl.event:	rlib.h.event
m_o_rl.fileicon:	rlib.c.fileicon
m_o_rl.fileicon:	C:h.stdio
m_o_rl.fileicon:	rlib.h.os
m_o_rl.fileicon:	C:h.kernel
m_o_rl.fileicon:	rlib.h.wimp
m_o_rl.fileicon:	rlib.h.sprite
m_o_rl.fileicon:	rlib.h.wimpt
m_o_rl.fileicon:	rlib.h.sprite
m_o_rl.fileicon:	rlib.h.trace
m_o_rl.fileicon:	rlib.h.fileicon
m_o_rl.fileicon:	rlib.h.werr
m_o_rl.flex:	rlib.c.flex
m_o_rl.flex:	C:h.stdlib
m_o_rl.flex:	C:h.stdarg
m_o_rl.flex:	C:h.string
m_o_rl.flex:	C:h.stdio
m_o_rl.flex:	C:h.swis
m_o_rl.flex:	C:h.kernel
m_o_rl.flex:	rlib.h.os
m_o_rl.flex:	rlib.h.werr
m_o_rl.flex:	rlib.h.flex
m_o_rl.flex:	rlib.h.trace
m_o_rl.flex:	rlib.h.wimp
m_o_rl.flex:	rlib.h.sprite
m_o_rl.flex:	rlib.h.wimpt
m_o_rl.flex:	rlib.h.msgs
m_o_rl.flex:	rlib.VerIntern.h.messages
m_o_rl.font:	rlib.c.font
m_o_rl.font:	C:h.stddef
m_o_rl.font:	C:h.stdlib
m_o_rl.font:	C:h.string
m_o_rl.font:	rlib.h.os
m_o_rl.font:	C:h.kernel
m_o_rl.font:	rlib.h.trace
m_o_rl.font:	rlib.h.msgs
m_o_rl.font:	rlib.h.wimp
m_o_rl.font:	rlib.h.sprite
m_o_rl.font:	rlib.h.font
m_o_rl.font:	C:h.stddef
m_o_rl.font:	rlib.h.drawmod
m_o_rl.font:	rlib.VerIntern.h.messages
m_o_rl.fontlist:	rlib.c.fontlist
m_o_rl.fontlist:	C:h.stdlib
m_o_rl.fontlist:	C:h.stdio
m_o_rl.fontlist:	C:h.string
m_o_rl.fontlist:	rlib.h.werr
m_o_rl.fontlist:	rlib.h.wimp
m_o_rl.fontlist:	rlib.h.os
m_o_rl.fontlist:	C:h.kernel
m_o_rl.fontlist:	rlib.h.sprite
m_o_rl.fontlist:	rlib.h.wimpt
m_o_rl.fontlist:	rlib.h.win
m_o_rl.fontlist:	rlib.h.event
m_o_rl.fontlist:	rlib.h.menu
m_o_rl.fontlist:	rlib.h.baricon
m_o_rl.fontlist:	rlib.h.res
m_o_rl.fontlist:	C:h.stdio
m_o_rl.fontlist:	rlib.h.resspr
m_o_rl.fontlist:	rlib.h.menu
m_o_rl.fontlist:	rlib.h.template
m_o_rl.fontlist:	rlib.h.dbox
m_o_rl.fontlist:	rlib.h.fontlist
m_o_rl.fontlist:	rlib.h.fontselect
m_o_rl.fontlist:	rlib.h.msgs
m_o_rl.fontlist:	rlib.h.akbd
m_o_rl.fontlist:	rlib.h.font
m_o_rl.fontlist:	C:h.stddef
m_o_rl.fontlist:	rlib.h.drawmod
m_o_rl.fontselect:	rlib.c.fontselect
m_o_rl.fontselect:	C:h.stdlib
m_o_rl.fontselect:	C:h.stdio
m_o_rl.fontselect:	rlib.h.werr
m_o_rl.fontselect:	rlib.h.wimp
m_o_rl.fontselect:	rlib.h.os
m_o_rl.fontselect:	C:h.kernel
m_o_rl.fontselect:	rlib.h.sprite
m_o_rl.fontselect:	rlib.h.wimpt
m_o_rl.fontselect:	rlib.h.win
m_o_rl.fontselect:	rlib.h.event
m_o_rl.fontselect:	rlib.h.menu
m_o_rl.fontselect:	rlib.h.baricon
m_o_rl.fontselect:	rlib.h.res
m_o_rl.fontselect:	C:h.stdio
m_o_rl.fontselect:	rlib.h.resspr
m_o_rl.fontselect:	rlib.h.menu
m_o_rl.fontselect:	rlib.h.template
m_o_rl.fontselect:	rlib.h.dbox
m_o_rl.fontselect:	rlib.h.fontlist
m_o_rl.fontselect:	rlib.h.fontselect
m_o_rl.fontselect:	rlib.h.msgs
m_o_rl.fontselect:	rlib.h.akbd
m_o_rl.fontselect:	rlib.h.font
m_o_rl.fontselect:	C:h.stddef
m_o_rl.fontselect:	rlib.h.drawmod
m_o_rl.fontselect:	C:h.string
m_o_rl.heap:	rlib.c.heap
m_o_rl.heap:	rlib.h.heap
m_o_rl.heap:	rlib.h.os
m_o_rl.heap:	C:h.kernel
m_o_rl.heap:	C:h.stdlib
m_o_rl.help:	rlib.c.help
m_o_rl.help:	C:h.string
m_o_rl.help:	rlib.h.os
m_o_rl.help:	C:h.kernel
m_o_rl.help:	rlib.h.wimp
m_o_rl.help:	rlib.h.sprite
m_o_rl.help:	rlib.h.wimpt
m_o_rl.help:	rlib.h.werr
m_o_rl.help:	rlib.h.trace
m_o_rl.help:	rlib.h.event
m_o_rl.help:	rlib.h.menu
m_o_rl.help:	rlib.h.dbox
m_o_rl.help:	rlib.h.msgs
m_o_rl.help:	rlib.h.help
m_o_rl.help:	C:h.swis
m_o_rl.jpeg:	rlib.c.jpeg
m_o_rl.jpeg:	C:h.stddef
m_o_rl.jpeg:	rlib.h.jpeg
m_o_rl.jpeg:	rlib.h.sprite
m_o_rl.jpeg:	rlib.h.os
m_o_rl.jpeg:	C:h.kernel
m_o_rl.magnify:	rlib.c.magnify
m_o_rl.magnify:	rlib.h.os
m_o_rl.magnify:	C:h.kernel
m_o_rl.magnify:	rlib.h.wimp
m_o_rl.magnify:	rlib.h.sprite
m_o_rl.magnify:	rlib.h.wimpt
m_o_rl.magnify:	rlib.h.dbox
m_o_rl.magnify:	rlib.h.magnify
m_o_rl.magnify:	rlib.h.help
m_o_rl.magnify:	rlib.h.event
m_o_rl.magnify:	rlib.h.menu
m_o_rl.menu:	rlib.c.menu
m_o_rl.menu:	C:h.stdlib
m_o_rl.menu:	C:h.string
m_o_rl.menu:	C:h.stdarg
m_o_rl.menu:	rlib.h.os
m_o_rl.menu:	C:h.kernel
m_o_rl.menu:	rlib.h.wimp
m_o_rl.menu:	rlib.h.sprite
m_o_rl.menu:	rlib.h.werr
m_o_rl.menu:	rlib.h.menu
m_o_rl.menu:	rlib.h.sprite
m_o_rl.menu:	rlib.h.resspr
m_o_rl.menu:	rlib.h.msgs
m_o_rl.menu:	rlib.VerIntern.h.messages
m_o_rl.msgs:	rlib.c.msgs
m_o_rl.msgs:	C:h.stdlib
m_o_rl.msgs:	rlib.h.msgs
m_o_rl.msgs:	C:h.swis
m_o_rl.msgs:	C:h.kernel
m_o_rl.msgs:	rlib.h.msgtrans
m_o_rl.msgs:	rlib.h.res
m_o_rl.msgs:	C:h.stdio
m_o_rl.msgs:	rlib.h.os
m_o_rl.msgs:	rlib.h.wimpt
m_o_rl.msgs:	rlib.h.wimp
m_o_rl.msgs:	rlib.h.sprite
m_o_rl.os:	rlib.c.os
m_o_rl.os:	rlib.h.os
m_o_rl.os:	C:h.kernel
m_o_rl.pointer:	rlib.c.pointer
m_o_rl.pointer:	C:h.stddef
m_o_rl.pointer:	rlib.h.os
m_o_rl.pointer:	C:h.kernel
m_o_rl.pointer:	rlib.h.sprite
m_o_rl.pointer:	rlib.h.pointer
m_o_rl.pointer:	rlib.h.wimp
m_o_rl.poll: rlib.s.poll
m_o_rl.poll: Hdr:ListOpts
m_o_rl.poll: Hdr:APCS.Common
m_o_rl.poll: Hdr:Macros
m_o_rl.print:	rlib.c.print
m_o_rl.print:	rlib.h.os
m_o_rl.print:	C:h.kernel
m_o_rl.print:	rlib.h.print
m_o_rl.res:	rlib.c.res
m_o_rl.res:	C:h.stdio
m_o_rl.res:	C:h.string
m_o_rl.res:	rlib.h.os
m_o_rl.res:	C:h.kernel
m_o_rl.res:	rlib.h.trace
m_o_rl.res:	rlib.h.werr
m_o_rl.res:	rlib.h.res
m_o_rl.res:	C:h.stdio
m_o_rl.resspr:	rlib.c.resspr
m_o_rl.resspr:	C:h.stdlib
m_o_rl.resspr:	C:h.stdio
m_o_rl.resspr:	C:h.string
m_o_rl.resspr:	C:h.swis
m_o_rl.resspr:	C:h.kernel
m_o_rl.resspr:	rlib.h.sprite
m_o_rl.resspr:	rlib.h.os
m_o_rl.resspr:	rlib.h.res
m_o_rl.resspr:	C:h.stdio
m_o_rl.resspr:	rlib.h.wimp
m_o_rl.resspr:	rlib.h.werr
m_o_rl.resspr:	rlib.h.msgs
m_o_rl.resspr:	rlib.VerIntern.h.messages
m_o_rl.resspr:	rlib.h.resspr
m_o_rl.saveas:	rlib.c.saveas
m_o_rl.saveas:	C:h.string
m_o_rl.saveas:	C:h.stdio
m_o_rl.saveas:	C:h.stdlib
m_o_rl.saveas:	rlib.h.trace
m_o_rl.saveas:	rlib.h.os
m_o_rl.saveas:	C:h.kernel
m_o_rl.saveas:	rlib.h.bbc
m_o_rl.saveas:	rlib.h.wimp
m_o_rl.saveas:	rlib.h.sprite
m_o_rl.saveas:	rlib.h.wimpt
m_o_rl.saveas:	rlib.h.win
m_o_rl.saveas:	rlib.h.dbox
m_o_rl.saveas:	rlib.h.saveas
m_o_rl.saveas:	rlib.h.xfersend
m_o_rl.saveas:	rlib.h.fileicon
m_o_rl.saveas:	rlib.h.werr
m_o_rl.saveas:	rlib.h.menu
m_o_rl.saveas:	rlib.h.event
m_o_rl.saveas:	rlib.h.msgs
m_o_rl.saveas:	rlib.h.help
m_o_rl.saveas:	rlib.h.template
m_o_rl.saveas:	rlib.VerIntern.h.messages
m_o_rl.sprite:	rlib.c.sprite
m_o_rl.sprite:	C:h.stddef
m_o_rl.sprite:	rlib.h.os
m_o_rl.sprite:	C:h.kernel
m_o_rl.sprite:	rlib.h.sprite
m_o_rl.swi: rlib.s.swi
m_o_rl.swi: Hdr:ListOpts
m_o_rl.swi: Hdr:APCS.Common
m_o_rl.swi: Hdr:Macros
m_o_rl.template:	rlib.c.template
m_o_rl.template:	C:h.stdlib
m_o_rl.template:	C:h.stdio
m_o_rl.template:	C:h.string
m_o_rl.template:	C:h.string
m_o_rl.template:	C:h.swis
m_o_rl.template:	C:h.kernel
m_o_rl.template:	rlib.h.os
m_o_rl.template:	rlib.h.wimp
m_o_rl.template:	rlib.h.sprite
m_o_rl.template:	rlib.h.wimpt
m_o_rl.template:	rlib.h.res
m_o_rl.template:	C:h.stdio
m_o_rl.template:	rlib.h.sprite
m_o_rl.template:	rlib.h.resspr
m_o_rl.template:	rlib.h.werr
m_o_rl.template:	rlib.h.template
m_o_rl.template:	rlib.h.trace
m_o_rl.template:	rlib.h.msgs
m_o_rl.template:	rlib.h.font
m_o_rl.template:	C:h.stddef
m_o_rl.template:	rlib.h.drawmod
m_o_rl.template:	rlib.VerIntern.h.messages
m_o_rl.trace:	rlib.c.trace
m_o_rl.trace:	C:h.string
m_o_rl.trace:	C:h.stdarg
m_o_rl.trace:	C:h.stdio
m_o_rl.trace:	C:h.ctype
m_o_rl.trace:	rlib.h.os
m_o_rl.trace:	C:h.kernel
m_o_rl.trace:	rlib.h.bbc
m_o_rl.trace:	rlib.h.wimp
m_o_rl.trace:	rlib.h.sprite
m_o_rl.trace:	rlib.h.wimpt
m_o_rl.txt:	rlib.c.txt
m_o_rl.txt:	C:h.stdlib
m_o_rl.txt:	C:h.stdarg
m_o_rl.txt:	rlib.h.txt
m_o_rl.txt:	rlib.EditIntern.h.txtundo
m_o_rl.txt:	rlib.EditIntern.h.txt1
m_o_rl.txt:	rlib.EditIntern.h.txt3
m_o_rl.txt:	rlib.EditIntern.h.txtar
m_o_rl.txt:	rlib.h.werr
m_o_rl.txt:	rlib.h.trace
m_o_rl.txt1:	rlib.c.txt1
m_o_rl.txt1:	C:h.limits
m_o_rl.txt1:	C:h.string
m_o_rl.txt1:	C:h.stdlib
m_o_rl.txt1:	C:h.limits
m_o_rl.txt1:	C:h.stdarg
m_o_rl.txt1:	rlib.h.trace
m_o_rl.txt1:	rlib.h.werr
m_o_rl.txt1:	rlib.h.flex
m_o_rl.txt1:	rlib.h.msgs
m_o_rl.txt1:	rlib.h.txt
m_o_rl.txt1:	rlib.EditIntern.h.txtundo
m_o_rl.txt1:	rlib.EditIntern.h.txt1
m_o_rl.txt1:	rlib.EditIntern.h.txt3
m_o_rl.txt1:	rlib.VerIntern.h.messages
m_o_rl.txt3:	rlib.c.txt3
m_o_rl.txt3:	C:h.stdio
m_o_rl.txt3:	C:h.string
m_o_rl.txt3:	C:h.stdlib
m_o_rl.txt3:	rlib.h.trace
m_o_rl.txt3:	rlib.h.werr
m_o_rl.txt3:	rlib.h.txt
m_o_rl.txt3:	rlib.EditIntern.h.txtundo
m_o_rl.txt3:	rlib.EditIntern.h.txt1
m_o_rl.txt3:	rlib.EditIntern.h.txt3
m_o_rl.txtar:	rlib.c.txtar
m_o_rl.txtar:	C:h.string
m_o_rl.txtar:	C:h.stdlib
m_o_rl.txtar:	C:h.stdarg
m_o_rl.txtar:	C:h.stdio
m_o_rl.txtar:	rlib.h.os
m_o_rl.txtar:	C:h.kernel
m_o_rl.txtar:	C:h.swis
m_o_rl.txtar:	rlib.h.bbc
m_o_rl.txtar:	rlib.h.dbox
m_o_rl.txtar:	rlib.h.werr
m_o_rl.txtar:	rlib.h.akbd
m_o_rl.txtar:	rlib.h.wimp
m_o_rl.txtar:	rlib.h.sprite
m_o_rl.txtar:	rlib.h.wimpt
m_o_rl.txtar:	rlib.h.font
m_o_rl.txtar:	C:h.stddef
m_o_rl.txtar:	rlib.h.drawmod
m_o_rl.txtar:	rlib.h.trace
m_o_rl.txtar:	rlib.h.win
m_o_rl.txtar:	rlib.h.menu
m_o_rl.txtar:	rlib.h.event
m_o_rl.txtar:	rlib.h.xferrecv
m_o_rl.txtar:	rlib.h.visdelay
m_o_rl.txtar:	rlib.h.msgs
m_o_rl.txtar:	rlib.h.txt
m_o_rl.txtar:	rlib.EditIntern.h.txtundo
m_o_rl.txtar:	rlib.EditIntern.h.txt1
m_o_rl.txtar:	rlib.EditIntern.h.txt3
m_o_rl.txtar:	rlib.EditIntern.h.txtar
m_o_rl.txtar:	rlib.h.txtscrap
m_o_rl.txtar:	rlib.h.txtopt
m_o_rl.txtar:	rlib.VerIntern.h.messages
m_o_rl.txtedit:	rlib.c.txtedit
m_o_rl.txtedit:	C:h.stdio
m_o_rl.txtedit:	C:h.string
m_o_rl.txtedit:	C:h.stdlib
m_o_rl.txtedit:	C:h.limits
m_o_rl.txtedit:	C:h.signal
m_o_rl.txtedit:	C:h.ctype
m_o_rl.txtedit:	rlib.h.akbd
m_o_rl.txtedit:	rlib.h.werr
m_o_rl.txtedit:	rlib.h.menu
m_o_rl.txtedit:	rlib.h.os
m_o_rl.txtedit:	C:h.kernel
m_o_rl.txtedit:	rlib.h.wimp
m_o_rl.txtedit:	rlib.h.sprite
m_o_rl.txtedit:	rlib.h.wimpt
m_o_rl.txtedit:	rlib.h.txt
m_o_rl.txtedit:	rlib.h.win
m_o_rl.txtedit:	rlib.h.txtwin
m_o_rl.txtedit:	rlib.h.flex
m_o_rl.txtedit:	rlib.h.txtscrap
m_o_rl.txtedit:	rlib.h.event
m_o_rl.txtedit:	rlib.h.txtedit
m_o_rl.txtedit:	rlib.h.typdat
m_o_rl.txtedit:	rlib.EditIntern.h.txtfind
m_o_rl.txtedit:	rlib.EditIntern.h.txtregexp
m_o_rl.txtedit:	rlib.EditIntern.h.txtmisc
m_o_rl.txtedit:	rlib.EditIntern.h.txtundo
m_o_rl.txtedit:	rlib.EditIntern.h.txt1
m_o_rl.txtedit:	rlib.EditIntern.h.txtar
m_o_rl.txtedit:	rlib.h.dboxquery
m_o_rl.txtedit:	rlib.h.dboxfile
m_o_rl.txtedit:	rlib.h.trace
m_o_rl.txtedit:	rlib.h.dbox
m_o_rl.txtedit:	rlib.EditIntern.h.txtoptmenu
m_o_rl.txtedit:	rlib.h.xfersend
m_o_rl.txtedit:	rlib.h.xferrecv
m_o_rl.txtedit:	rlib.h.saveas
m_o_rl.txtedit:	rlib.h.typdat
m_o_rl.txtedit:	rlib.h.fileicon
m_o_rl.txtedit:	rlib.h.visdelay
m_o_rl.txtedit:	rlib.EditIntern.h.txtfile
m_o_rl.txtedit:	rlib.EditIntern.h.txtregexp
m_o_rl.txtedit:	C:h.swis
m_o_rl.txtedit:	rlib.h.txtopt
m_o_rl.txtedit:	rlib.h.msgs
m_o_rl.txtedit:	rlib.h.help
m_o_rl.txtedit:	rlib.h.template
m_o_rl.txtedit:	rlib.VerIntern.h.messages
m_o_rl.txtfile:	rlib.c.txtfile
m_o_rl.txtfile:	C:h.stdio
m_o_rl.txtfile:	C:h.string
m_o_rl.txtfile:	C:h.stdlib
m_o_rl.txtfile:	C:h.limits
m_o_rl.txtfile:	rlib.h.os
m_o_rl.txtfile:	C:h.kernel
m_o_rl.txtfile:	rlib.h.txt
m_o_rl.txtfile:	rlib.h.typdat
m_o_rl.txtfile:	rlib.h.flex
m_o_rl.txtfile:	C:h.swis
m_o_rl.txtfile:	rlib.h.wimpt
m_o_rl.txtfile:	rlib.h.wimp
m_o_rl.txtfile:	rlib.h.sprite
m_o_rl.txtfile:	rlib.h.txt
m_o_rl.txtfile:	rlib.EditIntern.h.txtundo
m_o_rl.txtfile:	rlib.EditIntern.h.txt1
m_o_rl.txtfile:	rlib.h.txtedit
m_o_rl.txtfile:	rlib.h.menu
m_o_rl.txtfile:	rlib.h.txtscrap
m_o_rl.txtfile:	rlib.h.xfersend
m_o_rl.txtfile:	rlib.h.xferrecv
m_o_rl.txtfile:	rlib.EditIntern.h.txtfile
m_o_rl.txtfile:	rlib.h.trace
m_o_rl.txtfile:	rlib.h.werr
m_o_rl.txtfile:	rlib.h.msgs
m_o_rl.txtfile:	rlib.h.visdelay
m_o_rl.txtfile:	rlib.VerIntern.h.messages
m_o_rl.txtfind:	rlib.c.txtfind
m_o_rl.txtfind:	C:h.stdio
m_o_rl.txtfind:	C:h.string
m_o_rl.txtfind:	C:h.stdlib
m_o_rl.txtfind:	C:h.ctype
m_o_rl.txtfind:	rlib.h.werr
m_o_rl.txtfind:	rlib.h.txt
m_o_rl.txtfind:	rlib.EditIntern.h.txtregexp
m_o_rl.txtfind:	rlib.EditIntern.h.txtfind
m_o_rl.txtfind:	rlib.EditIntern.h.txtregexp
m_o_rl.txtfind:	rlib.h.trace
m_o_rl.txtfind:	rlib.h.msgs
m_o_rl.txtfind:	rlib.h.visdelay
m_o_rl.txtfind:	rlib.VerIntern.h.messages
m_o_rl.txtmisc:	rlib.c.txtmisc
m_o_rl.txtmisc:	C:h.stdio
m_o_rl.txtmisc:	C:h.string
m_o_rl.txtmisc:	C:h.stdlib
m_o_rl.txtmisc:	C:h.limits
m_o_rl.txtmisc:	rlib.h.werr
m_o_rl.txtmisc:	rlib.h.txt
m_o_rl.txtmisc:	rlib.h.flex
m_o_rl.txtmisc:	rlib.h.txtscrap
m_o_rl.txtmisc:	rlib.EditIntern.h.txtmisc
m_o_rl.txtmisc:	rlib.EditIntern.h.txtundo
m_o_rl.txtmisc:	rlib.h.trace
m_o_rl.txtmisc:	rlib.h.msgs
m_o_rl.txtmisc:	rlib.VerIntern.h.messages
m_o_rl.txtopt:	rlib.c.txtopt
m_o_rl.txtopt:	C:h.stdlib
m_o_rl.txtopt:	C:h.string
m_o_rl.txtopt:	rlib.h.msgs
m_o_rl.txtopt:	rlib.h.werr
m_o_rl.txtopt:	rlib.h.txtopt
m_o_rl.txtopt:	rlib.VerIntern.h.messages
m_o_rl.txtoptmenu:	rlib.c.txtoptmenu
m_o_rl.txtoptmenu:	C:h.stdio
m_o_rl.txtoptmenu:	C:h.string
m_o_rl.txtoptmenu:	C:h.stdlib
m_o_rl.txtoptmenu:	rlib.h.os
m_o_rl.txtoptmenu:	C:h.kernel
m_o_rl.txtoptmenu:	rlib.h.wimp
m_o_rl.txtoptmenu:	rlib.h.sprite
m_o_rl.txtoptmenu:	rlib.h.wimpt
m_o_rl.txtoptmenu:	rlib.h.menu
m_o_rl.txtoptmenu:	rlib.h.dbox
m_o_rl.txtoptmenu:	rlib.h.event
m_o_rl.txtoptmenu:	rlib.h.txt
m_o_rl.txtoptmenu:	rlib.EditIntern.h.txtar
m_o_rl.txtoptmenu:	rlib.EditIntern.h.txtundo
m_o_rl.txtoptmenu:	rlib.EditIntern.h.txt1
m_o_rl.txtoptmenu:	rlib.EditIntern.h.txtoptmenu
m_o_rl.txtoptmenu:	rlib.h.visdelay
m_o_rl.txtoptmenu:	rlib.h.font
m_o_rl.txtoptmenu:	C:h.stddef
m_o_rl.txtoptmenu:	rlib.h.drawmod
m_o_rl.txtoptmenu:	rlib.h.trace
m_o_rl.txtoptmenu:	rlib.h.werr
m_o_rl.txtoptmenu:	rlib.h.colourmenu
m_o_rl.txtoptmenu:	rlib.h.msgs
m_o_rl.txtoptmenu:	rlib.h.txtwin
m_o_rl.txtoptmenu:	rlib.VerIntern.h.messages
m_o_rl.txtregexp:	rlib.c.txtregexp
m_o_rl.txtregexp:	C:h.stdio
m_o_rl.txtregexp:	C:h.stdlib
m_o_rl.txtregexp:	C:h.string
m_o_rl.txtregexp:	C:h.ctype
m_o_rl.txtregexp:	rlib.EditIntern.h.txtregexp
m_o_rl.txtregexp:	rlib.h.txt
m_o_rl.txtregexp:	rlib.VerIntern.h.messages
m_o_rl.txtregexp:	rlib.h.msgs
m_o_rl.txtregexp:	rlib.h.txt
m_o_rl.txtregexp:	rlib.h.werr
m_o_rl.txtscrap:	rlib.c.txtscrap
m_o_rl.txtscrap:	C:h.stdio
m_o_rl.txtscrap:	C:h.string
m_o_rl.txtscrap:	C:h.stdlib
m_o_rl.txtscrap:	rlib.h.txt
m_o_rl.txtscrap:	rlib.h.txtscrap
m_o_rl.txtundo:	rlib.c.txtundo
m_o_rl.txtundo:	C:h.stdlib
m_o_rl.txtundo:	C:h.string
m_o_rl.txtundo:	C:h.stdarg
m_o_rl.txtundo:	rlib.h.flex
m_o_rl.txtundo:	rlib.h.trace
m_o_rl.txtundo:	rlib.h.txt
m_o_rl.txtundo:	rlib.EditIntern.h.txtundo
m_o_rl.txtundo:	rlib.EditIntern.h.txt1
m_o_rl.txtundo:	rlib.h.txtscrap
m_o_rl.txtundo:	rlib.h.werr
m_o_rl.txtwin:	rlib.c.txtwin
m_o_rl.txtwin:	rlib.h.trace
m_o_rl.txtwin:	rlib.h.os
m_o_rl.txtwin:	C:h.kernel
m_o_rl.txtwin:	rlib.h.wimp
m_o_rl.txtwin:	rlib.h.sprite
m_o_rl.txtwin:	rlib.h.wimpt
m_o_rl.txtwin:	rlib.h.win
m_o_rl.txtwin:	rlib.h.txt
m_o_rl.txtwin:	rlib.EditIntern.h.txtundo
m_o_rl.txtwin:	rlib.EditIntern.h.txt1
m_o_rl.txtwin:	rlib.EditIntern.h.txt3
m_o_rl.txtwin:	rlib.EditIntern.h.txtar
m_o_rl.txtwin:	rlib.h.txtwin
m_o_rl.visdelay:	rlib.c.visdelay
m_o_rl.visdelay:	rlib.h.os
m_o_rl.visdelay:	C:h.kernel
m_o_rl.visdelay:	rlib.h.visdelay
m_o_rl.werr:	rlib.c.werr
m_o_rl.werr:	C:h.stdarg
m_o_rl.werr:	C:h.stdlib
m_o_rl.werr:	C:h.stdio
m_o_rl.werr:	C:h.string
m_o_rl.werr:	C:h.swis
m_o_rl.werr:	C:h.kernel
m_o_rl.werr:	rlib.h.os
m_o_rl.werr:	rlib.h.wimp
m_o_rl.werr:	rlib.h.sprite
m_o_rl.werr:	rlib.h.werr
m_o_rl.werr:	rlib.h.wimpt
m_o_rl.wimp:	rlib.c.wimp
m_o_rl.wimp:	C:h.stdlib
m_o_rl.wimp:	C:h.string
m_o_rl.wimp:	C:h.stdarg
m_o_rl.wimp:	rlib.h.os
m_o_rl.wimp:	C:h.kernel
m_o_rl.wimp:	rlib.h.trace
m_o_rl.wimp:	rlib.h.wimp
m_o_rl.wimp:	rlib.h.sprite
m_o_rl.wimpt:	rlib.c.wimpt
m_o_rl.wimpt:	C:h.stdarg
m_o_rl.wimpt:	C:h.stdlib
m_o_rl.wimpt:	C:h.stdio
m_o_rl.wimpt:	C:h.signal
m_o_rl.wimpt:	C:h.string
m_o_rl.wimpt:	C:h.swis
m_o_rl.wimpt:	C:h.kernel
m_o_rl.wimpt:	rlib.h.akbd
m_o_rl.wimpt:	rlib.h.os
m_o_rl.wimpt:	rlib.h.bbc
m_o_rl.wimpt:	rlib.h.wimp
m_o_rl.wimpt:	rlib.h.sprite
m_o_rl.wimpt:	rlib.h.wimpt
m_o_rl.wimpt:	rlib.h.trace
m_o_rl.wimpt:	rlib.h.werr
m_o_rl.wimpt:	rlib.h.alarm
m_o_rl.wimpt:	rlib.h.event
m_o_rl.wimpt:	rlib.h.menu
m_o_rl.wimpt:	rlib.h.msgs
m_o_rl.wimpt:	rlib.h.win
m_o_rl.wimpt:	rlib.VerIntern.h.messages
m_o_rl.win:	rlib.c.win
m_o_rl.win:	C:h.stdarg
m_o_rl.win:	C:h.stdlib
m_o_rl.win:	C:h.string
m_o_rl.win:	rlib.h.trace
m_o_rl.win:	rlib.h.os
m_o_rl.win:	C:h.kernel
m_o_rl.win:	rlib.h.wimp
m_o_rl.win:	rlib.h.sprite
m_o_rl.win:	rlib.h.werr
m_o_rl.win:	rlib.h.wimpt
m_o_rl.win:	rlib.h.event
m_o_rl.win:	rlib.h.menu
m_o_rl.win:	rlib.h.msgs
m_o_rl.win:	rlib.VerIntern.h.messages
m_o_rl.win:	rlib.h.win
m_o_rl.xferrecv:	rlib.c.xferrecv
m_o_rl.xferrecv:	C:h.string
m_o_rl.xferrecv:	C:h.stdio
m_o_rl.xferrecv:	C:h.swis
m_o_rl.xferrecv:	C:h.kernel
m_o_rl.xferrecv:	rlib.h.trace
m_o_rl.xferrecv:	rlib.h.os
m_o_rl.xferrecv:	rlib.h.bbc
m_o_rl.xferrecv:	rlib.h.wimp
m_o_rl.xferrecv:	rlib.h.sprite
m_o_rl.xferrecv:	rlib.h.wimpt
m_o_rl.xferrecv:	rlib.h.win
m_o_rl.xferrecv:	rlib.h.dbox
m_o_rl.xferrecv:	rlib.h.typdat
m_o_rl.xferrecv:	rlib.h.xfersend
m_o_rl.xferrecv:	rlib.h.fileicon
m_o_rl.xferrecv:	rlib.h.werr
m_o_rl.xferrecv:	rlib.h.menu
m_o_rl.xferrecv:	rlib.h.event
m_o_rl.xferrecv:	rlib.h.xferrecv
m_o_rl.xferrecv:	rlib.h.msgs
m_o_rl.xferrecv:	rlib.VerIntern.h.messages
m_o_rl.xfersend:	rlib.c.xfersend
m_o_rl.xfersend:	C:h.string
m_o_rl.xfersend:	C:h.stdio
m_o_rl.xfersend:	C:h.stdlib
m_o_rl.xfersend:	rlib.h.trace
m_o_rl.xfersend:	C:h.swis
m_o_rl.xfersend:	C:h.kernel
m_o_rl.xfersend:	rlib.h.os
m_o_rl.xfersend:	rlib.h.bbc
m_o_rl.xfersend:	rlib.h.wimp
m_o_rl.xfersend:	rlib.h.sprite
m_o_rl.xfersend:	rlib.h.wimpt
m_o_rl.xfersend:	rlib.h.win
m_o_rl.xfersend:	rlib.h.dbox
m_o_rl.xfersend:	rlib.h.xfersend
m_o_rl.xfersend:	rlib.h.fileicon
m_o_rl.xfersend:	rlib.h.werr
m_o_rl.xfersend:	rlib.h.menu
m_o_rl.xfersend:	rlib.h.event
m_o_rl.xfersend:	rlib.h.msgs
m_o_rl.xfersend:	rlib.h.dragasprit
m_o_rl.xfersend:	rlib.VerIntern.h.messages
o_rl.rl_stub_r: rlib.s.rl_stub_r
o_rl.rl_stub_r: clib.s.cl_stub
o_rl.rl_stub_r: s.h_regs
o_rl.rl_stub_r: s.h_brazil
o_rl.rl_stub_r: Hdr:ListOpts
o_rl.rl_stub_r: Hdr:Machine.<Machine>
o_rl.rl_stub_r: Hdr:Machine.Machine
o_rl.rl_stub_r: Hdr:APCS.<APCS>
o_rl.rl_stub_r: Hdr:APCS.Common
o_rl.rl_stub_r: Hdr:Macros
o_rl.rl_stub_r: Hdr:System
o_rl.rl_stub_r: Hdr:SWIs
o_rl.rl_stub_r: Hdr:CPU.Arch
o_rl.rl_stub_r: Hdr:CPU.Generic26
o_rl.rl_stub_r: Hdr:CPU.Generic32
o_rl.rl_stub_r: Hdr:IO.GenericIO
o_rl.rl_stub_r: Hdr:RISCOS
o_rl.rl_stub_r: Hdr:ModHand
o_rl.rl_stub_r: Hdr:FPEmulator
o_rl.rl_stub_r: s.h_stubs
o_rl.rl_stub_r: s.h_stack
o_rl.rl_stub_r: s.h_workspc
o_rl.rl_stub_r: Hdr:PublicWS
o_rl.rl_stub_r: Hdr:OSRSI6
o_rl.rl_stub_r: clib.s.h_signal
o_rl.rl_stub_r: Hdr:MsgTrans
o_rl.rl_stub_r: clib.s.cl_init
o_rl.rl_stub_r: kernel.s.k_entries
o_rl.rl_stub_r: clib.s.cl_entries
o_rl.rl_stub_r: rlib.s.rl_entries
o_rl.rl_stub_r: kernel.s.k_data
o_rl.rl_stub_r: clib.s.cl_data
o_rl.rl_stub_r: clib.s.clibdata
o_rl.rl_stub_r: rlib.s.rl_data
o_rl.rl_stub_r: rlib.s.rlibdata
o.k_stub2_r: kernel.s.k_stub2_r
o.k_stub2_r: kernel.s.k_stub2
o.k_stub2_r: s.h_regs
o.k_stub2_r: s.h_brazil
o.k_stub2_r: Hdr:ListOpts
o.k_stub2_r: Hdr:Machine.<Machine>
o.k_stub2_r: Hdr:Machine.Machine
o.k_stub2_r: Hdr:APCS.<APCS>
o.k_stub2_r: Hdr:APCS.Common
o.k_stub2_r: Hdr:Macros
o.k_stub2_r: Hdr:System
o.k_stub2_r: Hdr:SWIs
o.k_stub2_r: Hdr:CPU.Arch
o.k_stub2_r: Hdr:CPU.Generic26
o.k_stub2_r: Hdr:CPU.Generic32
o.k_stub2_r: Hdr:IO.GenericIO
o.k_stub2_r: Hdr:RISCOS
o.k_stub2_r: Hdr:ModHand
o.k_stub2_r: Hdr:FPEmulator
o.k_stub2_r: s.h_stubs
o.k_stub2_r: s.h_stack
o.k_stub2_r: s.h_workspc
o.k_stub2_r: Hdr:PublicWS
o.k_stub2_r: Hdr:OSRSI6
o.k_stub2_r: kernel.s.k_entries2
o.k_stub3_r: kernel.s.k_stub3_r
o.k_stub3_r: kernel.s.k_stub3
o.k_stub3_r: s.h_regs
o.k_stub3_r: s.h_brazil
o.k_stub3_r: Hdr:ListOpts
o.k_stub3_r: Hdr:Machine.<Machine>
o.k_stub3_r: Hdr:Machine.Machine
o.k_stub3_r: Hdr:APCS.<APCS>
o.k_stub3_r: Hdr:APCS.Common
o.k_stub3_r: Hdr:Macros
o.k_stub3_r: Hdr:System
o.k_stub3_r: Hdr:SWIs
o.k_stub3_r: Hdr:CPU.Arch
o.k_stub3_r: Hdr:CPU.Generic26
o.k_stub3_r: Hdr:CPU.Generic32
o.k_stub3_r: Hdr:IO.GenericIO
o.k_stub3_r: Hdr:RISCOS
o.k_stub3_r: Hdr:ModHand
o.k_stub3_r: Hdr:FPEmulator
o.k_stub3_r: s.h_stubs
o.k_stub3_r: s.h_stack
o.k_stub3_r: s.h_workspc
o.k_stub3_r: Hdr:PublicWS
o.k_stub3_r: Hdr:OSRSI6
o.k_stub3_r: kernel.s.k_entries3
o.cl_stub2_r: clib.s.cl_stub2_r
o.cl_stub2_r: clib.s.cl_stub2
o.cl_stub2_r: s.h_regs
o.cl_stub2_r: s.h_brazil
o.cl_stub2_r: Hdr:ListOpts
o.cl_stub2_r: Hdr:Machine.<Machine>
o.cl_stub2_r: Hdr:Machine.Machine
o.cl_stub2_r: Hdr:APCS.<APCS>
o.cl_stub2_r: Hdr:APCS.Common
o.cl_stub2_r: Hdr:Macros
o.cl_stub2_r: Hdr:System
o.cl_stub2_r: Hdr:SWIs
o.cl_stub2_r: Hdr:CPU.Arch
o.cl_stub2_r: Hdr:CPU.Generic26
o.cl_stub2_r: Hdr:CPU.Generic32
o.cl_stub2_r: Hdr:IO.GenericIO
o.cl_stub2_r: Hdr:RISCOS
o.cl_stub2_r: Hdr:ModHand
o.cl_stub2_r: Hdr:FPEmulator
o.cl_stub2_r: s.h_stubs
o.cl_stub2_r: s.h_stack
o.cl_stub2_r: s.h_workspc
o.cl_stub2_r: Hdr:PublicWS
o.cl_stub2_r: Hdr:OSRSI6
o.cl_stub2_r: clib.s.cl_entry2
o.cl_stub3_r: clib.s.cl_stub3_r
o.cl_stub3_r: clib.s.cl_stub3
o.cl_stub3_r: s.h_regs
o.cl_stub3_r: s.h_brazil
o.cl_stub3_r: Hdr:ListOpts
o.cl_stub3_r: Hdr:Machine.<Machine>
o.cl_stub3_r: Hdr:Machine.Machine
o.cl_stub3_r: Hdr:APCS.<APCS>
o.cl_stub3_r: Hdr:APCS.Common
o.cl_stub3_r: Hdr:Macros
o.cl_stub3_r: Hdr:System
o.cl_stub3_r: Hdr:SWIs
o.cl_stub3_r: Hdr:CPU.Arch
o.cl_stub3_r: Hdr:CPU.Generic26
o.cl_stub3_r: Hdr:CPU.Generic32
o.cl_stub3_r: Hdr:IO.GenericIO
o.cl_stub3_r: Hdr:RISCOS
o.cl_stub3_r: Hdr:ModHand
o.cl_stub3_r: Hdr:FPEmulator
o.cl_stub3_r: s.h_stubs
o.cl_stub3_r: s.h_stack
o.cl_stub3_r: s.h_workspc
o.cl_stub3_r: Hdr:PublicWS
o.cl_stub3_r: Hdr:OSRSI6
o.cl_stub3_r: clib.s.cl_entry3
o.cl_stub4_r: clib.s.cl_stub4_r
o.cl_stub4_r: clib.s.cl_stub4
o.cl_stub4_r: s.h_regs
o.cl_stub4_r: s.h_brazil
o.cl_stub4_r: Hdr:ListOpts
o.cl_stub4_r: Hdr:Machine.<Machine>
o.cl_stub4_r: Hdr:Machine.Machine
o.cl_stub4_r: Hdr:APCS.<APCS>
o.cl_stub4_r: Hdr:APCS.Common
o.cl_stub4_r: Hdr:Macros
o.cl_stub4_r: Hdr:System
o.cl_stub4_r: Hdr:SWIs
o.cl_stub4_r: Hdr:CPU.Arch
o.cl_stub4_r: Hdr:CPU.Generic26
o.cl_stub4_r: Hdr:CPU.Generic32
o.cl_stub4_r: Hdr:IO.GenericIO
o.cl_stub4_r: Hdr:RISCOS
o.cl_stub4_r: Hdr:ModHand
o.cl_stub4_r: Hdr:FPEmulator
o.cl_stub4_r: s.h_stubs
o.cl_stub4_r: s.h_stack
o.cl_stub4_r: s.h_workspc
o.cl_stub4_r: Hdr:PublicWS
o.cl_stub4_r: Hdr:OSRSI6
o.cl_stub4_r: clib.s.cl_entry4
o.cl_stub5_r: clib.s.cl_stub5_r
o.cl_stub5_r: clib.s.cl_stub5
o.cl_stub5_r: s.h_regs
o.cl_stub5_r: s.h_brazil
o.cl_stub5_r: Hdr:ListOpts
o.cl_stub5_r: Hdr:Machine.<Machine>
o.cl_stub5_r: Hdr:Machine.Machine
o.cl_stub5_r: Hdr:APCS.<APCS>
o.cl_stub5_r: Hdr:APCS.Common
o.cl_stub5_r: Hdr:Macros
o.cl_stub5_r: Hdr:System
o.cl_stub5_r: Hdr:SWIs
o.cl_stub5_r: Hdr:CPU.Arch
o.cl_stub5_r: Hdr:CPU.Generic26
o.cl_stub5_r: Hdr:CPU.Generic32
o.cl_stub5_r: Hdr:IO.GenericIO
o.cl_stub5_r: Hdr:RISCOS
o.cl_stub5_r: Hdr:ModHand
o.cl_stub5_r: Hdr:FPEmulator
o.cl_stub5_r: s.h_stubs
o.cl_stub5_r: s.h_stack
o.cl_stub5_r: s.h_workspc
o.cl_stub5_r: Hdr:PublicWS
o.cl_stub5_r: Hdr:OSRSI6
o.cl_stub5_r: clib.s.cl_entry5
rm_o_rl.rl_stub_rm: rlib.s.rl_stub_rm
rm_o_rl.rl_stub_rm: clib.s.cl_stub
rm_o_rl.rl_stub_rm: s.h_regs
rm_o_rl.rl_stub_rm: s.h_brazil
rm_o_rl.rl_stub_rm: Hdr:ListOpts
rm_o_rl.rl_stub_rm: Hdr:Machine.<Machine>
rm_o_rl.rl_stub_rm: Hdr:Machine.Machine
rm_o_rl.rl_stub_rm: Hdr:APCS.<APCS>
rm_o_rl.rl_stub_rm: Hdr:APCS.Common
rm_o_rl.rl_stub_rm: Hdr:Macros
rm_o_rl.rl_stub_rm: Hdr:System
rm_o_rl.rl_stub_rm: Hdr:SWIs
rm_o_rl.rl_stub_rm: Hdr:CPU.Arch
rm_o_rl.rl_stub_rm: Hdr:CPU.Generic26
rm_o_rl.rl_stub_rm: Hdr:CPU.Generic32
rm_o_rl.rl_stub_rm: Hdr:IO.GenericIO
rm_o_rl.rl_stub_rm: Hdr:RISCOS
rm_o_rl.rl_stub_rm: Hdr:ModHand
rm_o_rl.rl_stub_rm: Hdr:FPEmulator
rm_o_rl.rl_stub_rm: s.h_stubs
rm_o_rl.rl_stub_rm: s.h_stack
rm_o_rl.rl_stub_rm: s.h_workspc
rm_o_rl.rl_stub_rm: Hdr:PublicWS
rm_o_rl.rl_stub_rm: Hdr:OSRSI6
rm_o_rl.rl_stub_rm: clib.s.h_signal
rm_o_rl.rl_stub_rm: Hdr:MsgTrans
rm_o_rl.rl_stub_rm: clib.s.cl_init
rm_o_rl.rl_stub_rm: kernel.s.k_data
rm_o_rl.rl_stub_rm: clib.s.cl_data
rm_o_rl.rl_stub_rm: clib.s.clibdata
rm_o_rl.rl_stub_rm: rlib.s.rl_data
rm_o_rl.rl_stub_rm: rlib.s.rlibdata
rm_o.cl_stub_rm: clib.s.cl_stub_rm
rm_o.cl_stub_rm: clib.s.cl_stub
rm_o.cl_stub_rm: s.h_regs
rm_o.cl_stub_rm: s.h_brazil
rm_o.cl_stub_rm: Hdr:ListOpts
rm_o.cl_stub_rm: Hdr:Machine.<Machine>
rm_o.cl_stub_rm: Hdr:Machine.Machine
rm_o.cl_stub_rm: Hdr:APCS.<APCS>
rm_o.cl_stub_rm: Hdr:APCS.Common
rm_o.cl_stub_rm: Hdr:Macros
rm_o.cl_stub_rm: Hdr:System
rm_o.cl_stub_rm: Hdr:SWIs
rm_o.cl_stub_rm: Hdr:CPU.Arch
rm_o.cl_stub_rm: Hdr:CPU.Generic26
rm_o.cl_stub_rm: Hdr:CPU.Generic32
rm_o.cl_stub_rm: Hdr:IO.GenericIO
rm_o.cl_stub_rm: Hdr:RISCOS
rm_o.cl_stub_rm: Hdr:ModHand
rm_o.cl_stub_rm: Hdr:FPEmulator
rm_o.cl_stub_rm: s.h_stubs
rm_o.cl_stub_rm: s.h_stack
rm_o.cl_stub_rm: s.h_workspc
rm_o.cl_stub_rm: Hdr:PublicWS
rm_o.cl_stub_rm: Hdr:OSRSI6
rm_o.cl_stub_rm: clib.s.h_signal
rm_o.cl_stub_rm: Hdr:MsgTrans
rm_o.cl_stub_rm: clib.s.cl_init
rm_o.cl_stub_rm: kernel.s.k_data
rm_o.cl_stub_rm: clib.s.cl_data
rm_o.cl_stub_rm: clib.s.clibdata
rm_o.k_stub2_rm: kernel.s.k_stub2_rm
rm_o.k_stub2_rm: kernel.s.k_stub2
rm_o.k_stub2_rm: s.h_regs
rm_o.k_stub2_rm: s.h_brazil
rm_o.k_stub2_rm: Hdr:ListOpts
rm_o.k_stub2_rm: Hdr:Machine.<Machine>
rm_o.k_stub2_rm: Hdr:Machine.Machine
rm_o.k_stub2_rm: Hdr:APCS.<APCS>
rm_o.k_stub2_rm: Hdr:APCS.Common
rm_o.k_stub2_rm: Hdr:Macros
rm_o.k_stub2_rm: Hdr:System
rm_o.k_stub2_rm: Hdr:SWIs
rm_o.k_stub2_rm: Hdr:CPU.Arch
rm_o.k_stub2_rm: Hdr:CPU.Generic26
rm_o.k_stub2_rm: Hdr:CPU.Generic32
rm_o.k_stub2_rm: Hdr:IO.GenericIO
rm_o.k_stub2_rm: Hdr:RISCOS
rm_o.k_stub2_rm: Hdr:ModHand
rm_o.k_stub2_rm: Hdr:FPEmulator
rm_o.k_stub2_rm: s.h_stubs
rm_o.k_stub2_rm: s.h_stack
rm_o.k_stub2_rm: s.h_workspc
rm_o.k_stub2_rm: Hdr:PublicWS
rm_o.k_stub2_rm: Hdr:OSRSI6
rm_o.k_stub3_rm: kernel.s.k_stub3_rm
rm_o.k_stub3_rm: kernel.s.k_stub3
rm_o.k_stub3_rm: s.h_regs
rm_o.k_stub3_rm: s.h_brazil
rm_o.k_stub3_rm: Hdr:ListOpts
rm_o.k_stub3_rm: Hdr:Machine.<Machine>
rm_o.k_stub3_rm: Hdr:Machine.Machine
rm_o.k_stub3_rm: Hdr:APCS.<APCS>
rm_o.k_stub3_rm: Hdr:APCS.Common
rm_o.k_stub3_rm: Hdr:Macros
rm_o.k_stub3_rm: Hdr:System
rm_o.k_stub3_rm: Hdr:SWIs
rm_o.k_stub3_rm: Hdr:CPU.Arch
rm_o.k_stub3_rm: Hdr:CPU.Generic26
rm_o.k_stub3_rm: Hdr:CPU.Generic32
rm_o.k_stub3_rm: Hdr:IO.GenericIO
rm_o.k_stub3_rm: Hdr:RISCOS
rm_o.k_stub3_rm: Hdr:ModHand
rm_o.k_stub3_rm: Hdr:FPEmulator
rm_o.k_stub3_rm: s.h_stubs
rm_o.k_stub3_rm: s.h_stack
rm_o.k_stub3_rm: s.h_workspc
rm_o.k_stub3_rm: Hdr:PublicWS
rm_o.k_stub3_rm: Hdr:OSRSI6
rm_o.cl_stub2_rm: clib.s.cl_stub2_rm
rm_o.cl_stub2_rm: clib.s.cl_stub2
rm_o.cl_stub2_rm: s.h_regs
rm_o.cl_stub2_rm: s.h_brazil
rm_o.cl_stub2_rm: Hdr:ListOpts
rm_o.cl_stub2_rm: Hdr:Machine.<Machine>
rm_o.cl_stub2_rm: Hdr:Machine.Machine
rm_o.cl_stub2_rm: Hdr:APCS.<APCS>
rm_o.cl_stub2_rm: Hdr:APCS.Common
rm_o.cl_stub2_rm: Hdr:Macros
rm_o.cl_stub2_rm: Hdr:System
rm_o.cl_stub2_rm: Hdr:SWIs
rm_o.cl_stub2_rm: Hdr:CPU.Arch
rm_o.cl_stub2_rm: Hdr:CPU.Generic26
rm_o.cl_stub2_rm: Hdr:CPU.Generic32
rm_o.cl_stub2_rm: Hdr:IO.GenericIO
rm_o.cl_stub2_rm: Hdr:RISCOS
rm_o.cl_stub2_rm: Hdr:ModHand
rm_o.cl_stub2_rm: Hdr:FPEmulator
rm_o.cl_stub2_rm: s.h_stubs
rm_o.cl_stub2_rm: s.h_stack
rm_o.cl_stub2_rm: s.h_workspc
rm_o.cl_stub2_rm: Hdr:PublicWS
rm_o.cl_stub2_rm: Hdr:OSRSI6
rm_o.cl_stub3_rm: clib.s.cl_stub3_rm
rm_o.cl_stub3_rm: clib.s.cl_stub3
rm_o.cl_stub3_rm: s.h_regs
rm_o.cl_stub3_rm: s.h_brazil
rm_o.cl_stub3_rm: Hdr:ListOpts
rm_o.cl_stub3_rm: Hdr:Machine.<Machine>
rm_o.cl_stub3_rm: Hdr:Machine.Machine
rm_o.cl_stub3_rm: Hdr:APCS.<APCS>
rm_o.cl_stub3_rm: Hdr:APCS.Common
rm_o.cl_stub3_rm: Hdr:Macros
rm_o.cl_stub3_rm: Hdr:System
rm_o.cl_stub3_rm: Hdr:SWIs
rm_o.cl_stub3_rm: Hdr:CPU.Arch
rm_o.cl_stub3_rm: Hdr:CPU.Generic26
rm_o.cl_stub3_rm: Hdr:CPU.Generic32
rm_o.cl_stub3_rm: Hdr:IO.GenericIO
rm_o.cl_stub3_rm: Hdr:RISCOS
rm_o.cl_stub3_rm: Hdr:ModHand
rm_o.cl_stub3_rm: Hdr:FPEmulator
rm_o.cl_stub3_rm: s.h_stubs
rm_o.cl_stub3_rm: s.h_stack
rm_o.cl_stub3_rm: s.h_workspc
rm_o.cl_stub3_rm: Hdr:PublicWS
rm_o.cl_stub3_rm: Hdr:OSRSI6
rm_o.cl_stub4_rm: clib.s.cl_stub4_rm
rm_o.cl_stub4_rm: clib.s.cl_stub4
rm_o.cl_stub4_rm: s.h_regs
rm_o.cl_stub4_rm: s.h_brazil
rm_o.cl_stub4_rm: Hdr:ListOpts
rm_o.cl_stub4_rm: Hdr:Machine.<Machine>
rm_o.cl_stub4_rm: Hdr:Machine.Machine
rm_o.cl_stub4_rm: Hdr:APCS.<APCS>
rm_o.cl_stub4_rm: Hdr:APCS.Common
rm_o.cl_stub4_rm: Hdr:Macros
rm_o.cl_stub4_rm: Hdr:System
rm_o.cl_stub4_rm: Hdr:SWIs
rm_o.cl_stub4_rm: Hdr:CPU.Arch
rm_o.cl_stub4_rm: Hdr:CPU.Generic26
rm_o.cl_stub4_rm: Hdr:CPU.Generic32
rm_o.cl_stub4_rm: Hdr:IO.GenericIO
rm_o.cl_stub4_rm: Hdr:RISCOS
rm_o.cl_stub4_rm: Hdr:ModHand
rm_o.cl_stub4_rm: Hdr:FPEmulator
rm_o.cl_stub4_rm: s.h_stubs
rm_o.cl_stub4_rm: s.h_stack
rm_o.cl_stub4_rm: s.h_workspc
rm_o.cl_stub4_rm: Hdr:PublicWS
rm_o.cl_stub4_rm: Hdr:OSRSI6
rm_o.cl_stub5_rm: clib.s.cl_stub5_rm
rm_o.cl_stub5_rm: clib.s.cl_stub5
rm_o.cl_stub5_rm: s.h_regs
rm_o.cl_stub5_rm: s.h_brazil
rm_o.cl_stub5_rm: Hdr:ListOpts
rm_o.cl_stub5_rm: Hdr:Machine.<Machine>
rm_o.cl_stub5_rm: Hdr:Machine.Machine
rm_o.cl_stub5_rm: Hdr:APCS.<APCS>
rm_o.cl_stub5_rm: Hdr:APCS.Common
rm_o.cl_stub5_rm: Hdr:Macros
rm_o.cl_stub5_rm: Hdr:System
rm_o.cl_stub5_rm: Hdr:SWIs
rm_o.cl_stub5_rm: Hdr:CPU.Arch
rm_o.cl_stub5_rm: Hdr:CPU.Generic26
rm_o.cl_stub5_rm: Hdr:CPU.Generic32
rm_o.cl_stub5_rm: Hdr:IO.GenericIO
rm_o.cl_stub5_rm: Hdr:RISCOS
rm_o.cl_stub5_rm: Hdr:ModHand
rm_o.cl_stub5_rm: Hdr:FPEmulator
rm_o.cl_stub5_rm: s.h_stubs
rm_o.cl_stub5_rm: s.h_stack
rm_o.cl_stub5_rm: s.h_workspc
rm_o.cl_stub5_rm: Hdr:PublicWS
rm_o.cl_stub5_rm: Hdr:OSRSI6
o.mathl: s.mathl
o.swis: s.makehswis
o.swis: Hdr:ListOpts
o.swis: Hdr:PublicWS
o.swis: h.swisheader
o.swis: Hdr:FSNumbers
o.swis: Hdr:NewErrors
o.swis: Hdr:SWIs
o.swis: Hdr:CPU.Generic26
o.swis: Hdr:Machine.<Machine>
o.swis: Hdr:Machine.Machine
o.swis: Hdr:ModHand
o.swis: s.swioptions
o.swis: Hdr:ADFS
o.swis: Hdr:ATAPI
o.swis: Hdr:ATA
o.swis: Hdr:BlendTable
o.swis: Hdr:Buffer
o.swis: Hdr:CDROM
o.swis: Hdr:CDFS
o.swis: Hdr:ColourPick
o.swis: Hdr:ColourTran
o.swis: Hdr:Debugger
o.swis: Hdr:DeviceFS
o.swis: Hdr:DMA
o.swis: Hdr:DOSFS
o.swis: Hdr:DragASprit
o.swis: Hdr:DragAnObj
o.swis: Hdr:Draw
o.swis: Hdr:Econet
o.swis: Hdr:FileCore
o.swis: Hdr:FilerAct
o.swis: Hdr:Filter
o.swis: Hdr:Font
o.swis: Hdr:FPEmulator
o.swis: Hdr:Free
o.swis: Hdr:Freeway
o.swis: Hdr:FSLock
o.swis: Hdr:Hourglass
o.swis: Hdr:HostFS
o.swis: Hdr:IIC
o.swis: Hdr:ITable
o.swis: Hdr:SprExtend
o.swis: Hdr:MsgTrans
o.swis: Hdr:RISCOS
o.swis: Hdr:PCI
o.swis: Hdr:PDriver
o.swis: Hdr:Podule
o.swis: Hdr:Portable
o.swis: Hdr:RAMFS
o.swis: Hdr:ResourceFS
o.swis: Hdr:RTC
o.swis: Hdr:ScrBlank
o.swis: Hdr:ScrModes
o.swis: Hdr:SCSI
o.swis: Hdr:SCSIFS
o.swis: Hdr:SDFS
o.swis: Hdr:SDIO
o.swis: Hdr:SharedCLib
o.swis: Hdr:Shell
o.swis: Hdr:Sound
o.swis: Hdr:Squash
o.swis: Hdr:Super
o.swis: Hdr:Switcher
o.swis: Hdr:TaskWindow
o.swis: Hdr:Territory
o.swis: Hdr:VFPSupport
o.swis: Hdr:Wimp
o.swisf: s.makefswis
o.swisf: Hdr:ListOpts
o.swisf: h.swisfortran
o.swisf: Hdr:PublicWS
o.swisf: Hdr:FSNumbers
o.swisf: Hdr:NewErrors
o.swisf: Hdr:SWIs
o.swisf: Hdr:CPU.Generic26
o.swisf: Hdr:Machine.<Machine>
o.swisf: Hdr:Machine.Machine
o.swisf: Hdr:ModHand
o.swisf: s.swioptions
o.swisf: Hdr:ADFS
o.swisf: Hdr:ATAPI
o.swisf: Hdr:ATA
o.swisf: Hdr:BlendTable
o.swisf: Hdr:Buffer
o.swisf: Hdr:CDROM
o.swisf: Hdr:CDFS
o.swisf: Hdr:ColourPick
o.swisf: Hdr:ColourTran
o.swisf: Hdr:Debugger
o.swisf: Hdr:DeviceFS
o.swisf: Hdr:DMA
o.swisf: Hdr:DOSFS
o.swisf: Hdr:DragASprit
o.swisf: Hdr:DragAnObj
o.swisf: Hdr:Draw
o.swisf: Hdr:Econet
o.swisf: Hdr:FileCore
o.swisf: Hdr:FilerAct
o.swisf: Hdr:Filter
o.swisf: Hdr:Font
o.swisf: Hdr:FPEmulator
o.swisf: Hdr:Free
o.swisf: Hdr:Freeway
o.swisf: Hdr:FSLock
o.swisf: Hdr:Hourglass
o.swisf: Hdr:HostFS
o.swisf: Hdr:IIC
o.swisf: Hdr:ITable
o.swisf: Hdr:SprExtend
o.swisf: Hdr:MsgTrans
o.swisf: Hdr:RISCOS
o.swisf: Hdr:PCI
o.swisf: Hdr:PDriver
o.swisf: Hdr:Podule
o.swisf: Hdr:Portable
o.swisf: Hdr:RAMFS
o.swisf: Hdr:ResourceFS
o.swisf: Hdr:RTC
o.swisf: Hdr:ScrBlank
o.swisf: Hdr:ScrModes
o.swisf: Hdr:SCSI
o.swisf: Hdr:SCSIFS
o.swisf: Hdr:SDFS
o.swisf: Hdr:SDIO
o.swisf: Hdr:SharedCLib
o.swisf: Hdr:Shell
o.swisf: Hdr:Sound
o.swisf: Hdr:Squash
o.swisf: Hdr:Super
o.swisf: Hdr:Switcher
o.swisf: Hdr:TaskWindow
o.swisf: Hdr:Territory
o.swisf: Hdr:VFPSupport
o.swisf: Hdr:Wimp
rm_o.cl_rmhdr: clib.s.cl_rmhdr
rm_o.cl_rmhdr: s.version
rm_o.cl_rmhdr: VersionASM
rm_o_rl.initmodule: rlib.s.initmod_r
rm_o_rl.initmodule: s.initmodule
rm_o_rl.initmodule: s.h_regs
rm_o_rl.initmodule: s.h_brazil
rm_o_rl.initmodule: Hdr:ListOpts
rm_o_rl.initmodule: Hdr:Machine.<Machine>
rm_o_rl.initmodule: Hdr:Machine.Machine
rm_o_rl.initmodule: Hdr:APCS.<APCS>
rm_o_rl.initmodule: Hdr:APCS.Common
rm_o_rl.initmodule: Hdr:Macros
rm_o_rl.initmodule: Hdr:System
rm_o_rl.initmodule: Hdr:SWIs
rm_o_rl.initmodule: Hdr:CPU.Arch
rm_o_rl.initmodule: Hdr:CPU.Generic26
rm_o_rl.initmodule: Hdr:CPU.Generic32
rm_o_rl.initmodule: Hdr:IO.GenericIO
rm_o_rl.initmodule: Hdr:RISCOS
rm_o_rl.initmodule: Hdr:ModHand
rm_o_rl.initmodule: Hdr:FPEmulator
rm_o_rl.initmodule: s.h_stack
rm_o_rl.initmodule: s.h_modmacro
rm_o_rl.initmodule: s.h_workspc
rm_o_rl.initmodule: Hdr:PublicWS
rm_o_rl.initmodule: Hdr:OSRSI6
rm_o_rl.initmodule: Hdr:Proc
rm_o_rl.initmodule: Hdr:OSMisc
rm_o.k_modbody: kernel.s.k_mod_r
rm_o.k_modbody: s.h_regs
rm_o.k_modbody: s.h_brazil
rm_o.k_modbody: Hdr:ListOpts
rm_o.k_modbody: Hdr:Machine.<Machine>
rm_o.k_modbody: Hdr:Machine.Machine
rm_o.k_modbody: Hdr:APCS.<APCS>
rm_o.k_modbody: Hdr:APCS.Common
rm_o.k_modbody: Hdr:Macros
rm_o.k_modbody: Hdr:System
rm_o.k_modbody: Hdr:SWIs
rm_o.k_modbody: Hdr:CPU.Arch
rm_o.k_modbody: Hdr:CPU.Generic26
rm_o.k_modbody: Hdr:CPU.Generic32
rm_o.k_modbody: Hdr:IO.GenericIO
rm_o.k_modbody: Hdr:RISCOS
rm_o.k_modbody: Hdr:ModHand
rm_o.k_modbody: Hdr:FPEmulator
rm_o.k_modbody: s.h_modmacro
rm_o.k_modbody: kernel.s.k_data
rm_o.k_modbody: kernel.s.k_entries
rm_o.k_modbody: kernel.s.k_entries2
rm_o.k_modbody: kernel.s.k_entries3
rm_o.k_modbody: kernel.s.k_body
rm_o.k_modbody: s.h_stack
rm_o.k_modbody: s.h_workspc
rm_o.k_modbody: Hdr:PublicWS
rm_o.k_modbody: Hdr:OSRSI6
rm_o.k_modbody: s.h_common
rm_o.k_modbody: Hdr:OSMisc
rm_o.k_modbody: Hdr:Wimp
rm_o.k_modbody: Hdr:DDEUtils
rm_o.k_modbody: Hdr:Machine.<Machine>
rm_o.k_modbody: Hdr:Machine.Machine
rm_o.k_modbody: Hdr:MsgTrans
rm_o.k_modbody: kernel.s.k_atomic
rm_o.k_modbody: kernel.s.k_atomic_armk
rm_o.k_modbody: kernel.s.k_atomic_armv7
rm_o.cl_modbody: clib.s.cl_mod_r
rm_o.cl_modbody: s.h_regs
rm_o.cl_modbody: s.h_brazil
rm_o.cl_modbody: Hdr:ListOpts
rm_o.cl_modbody: Hdr:Machine.<Machine>
rm_o.cl_modbody: Hdr:Machine.Machine
rm_o.cl_modbody: Hdr:APCS.<APCS>
rm_o.cl_modbody: Hdr:APCS.Common
rm_o.cl_modbody: Hdr:Macros
rm_o.cl_modbody: Hdr:System
rm_o.cl_modbody: Hdr:SWIs
rm_o.cl_modbody: Hdr:CPU.Arch
rm_o.cl_modbody: Hdr:CPU.Generic26
rm_o.cl_modbody: Hdr:CPU.Generic32
rm_o.cl_modbody: Hdr:IO.GenericIO
rm_o.cl_modbody: Hdr:RISCOS
rm_o.cl_modbody: Hdr:ModHand
rm_o.cl_modbody: Hdr:FPEmulator
rm_o.cl_modbody: s.h_modmacro
rm_o.cl_modbody: clib.s.cl_data
rm_o.cl_modbody: clib.s.cl_entries
rm_o.cl_modbody: clib.s.cl_entry1x
rm_o.cl_modbody: clib.s.cl_entry2
rm_o.cl_modbody: clib.s.cl_entry2x
rm_o.cl_modbody: clib.s.cl_entry3
rm_o.cl_modbody: clib.s.cl_entry4
rm_o.cl_modbody: clib.s.cl_entry5
rm_o.cl_modbody: clib.s.cl_body
rm_o.cl_modbody: s.h_stack
rm_o.cl_modbody: s.h_workspc
rm_o.cl_modbody: Hdr:PublicWS
rm_o.cl_modbody: Hdr:OSRSI6
rm_o.cl_modbody: Hdr:Wimp
rm_o.cl_modbody: Hdr:TaskWindow
rm_o.cl_modbody: clib.s.h_signal
rm_o.alloc:	c.alloc
rm_o.alloc:	C:h.stdlib
rm_o.alloc:	C:h.stddef
rm_o.alloc:	C:h.string
rm_o.alloc:	C:h.setjmp
rm_o.alloc:	C:h.signal
rm_o.alloc:	C:h.stdint
rm_o.alloc:	h.hostsys
rm_o.alloc:	C:h.stdio
rm_o.alloc:	C:h.stdbool
rm_o.alloc:	h.alloc
rm_o.alloc:	C:h.stddef
rm_o.alloc:	C:h.kernel
rm_o.alloc:	C:h.swis
rm_o.armsys:	c.armsys
rm_o.armsys:	VersionNum
rm_o.armsys:	h.hostsys
rm_o.armsys:	C:h.stdio
rm_o.armsys:	C:h.stdbool
rm_o.armsys:	h.territory
rm_o.armsys:	C:h.kernel
rm_o.armsys:	C:h.swis
rm_o.armsys:	C:h.stdio
rm_o.armsys:	C:h.stdlib
rm_o.armsys:	C:h.ctype
rm_o.armsys:	C:h.string
rm_o.armsys:	C:h.time
rm_o.armsys:	C:h.errno
rm_o.armsys:	C:h.stdbool
rm_o.armsys:	C:h.stddef
rm_o.complex:	c.complex
rm_o.complex:	C:h.float
rm_o.complex:	C:h.fenv
rm_o.complex:	C:h.math
rm_o.complex:	C:h.complex
rm_o.ctype:	c.ctype
rm_o.ctype:	C:h.ctype
rm_o.ctype:	C:h.kernel
rm_o.ctype:	h.territory
rm_o.ctype:	C:h.swis
rm_o.cxsupport: s.cxsupport
rm_o.cxsupport: s.objmacs
rm_o.cxsupport: s.h_la_obj
rm_o.error:	c.error
rm_o.error:	h.hostsys
rm_o.error:	C:h.stdio
rm_o.error:	C:h.stdbool
rm_o.error:	C:h.math
rm_o.error:	C:h.stdio
rm_o.error:	C:h.stdlib
rm_o.error:	C:h.stddef
rm_o.error:	C:h.signal
rm_o.error:	C:h.assert
rm_o.error:	C:h.string
rm_o.error:	C:h.errno
rm_o.error:	C:h.kernel
rm_o.fpprintf:	c.fpprintf
rm_o.fpprintf:	h.hostsys
rm_o.fpprintf:	C:h.stdio
rm_o.fpprintf:	C:h.stdbool
rm_o.fpprintf:	C:h.kernel
rm_o.fpprintf:	C:h.stdio
rm_o.fpprintf:	C:h.stdarg
rm_o.fpprintf:	C:h.string
rm_o.fpprintf:	C:h.math
rm_o.locale:	c.locale
rm_o.locale:	C:h.locale
rm_o.locale:	C:h.stddef
rm_o.locale:	C:h.stdio
rm_o.locale:	C:h.time
rm_o.locale:	C:h.string
rm_o.locale:	C:h.stdlib
rm_o.locale:	C:h.limits
rm_o.locale:	h.hostsys
rm_o.locale:	C:h.stdio
rm_o.locale:	C:h.stdbool
rm_o.locale:	C:h.kernel
rm_o.locale:	h.territory
rm_o.locale:	C:h.swis
rm_o.longlong: s.longlong
rm_o.longlong: s.objmacs
rm_o.longlong: s.h_la_obj
rm_o.longlong: s.h_common
rm_o.longlong: Hdr:ListOpts
rm_o.longlong: Hdr:CPU.Arch
rm_o.longlong: Hdr:Machine.<Machine>
rm_o.longlong: Hdr:Machine.Machine
rm_o.longlong: Hdr:OSMisc
rm_o.math:	c.math
rm_o.math:	h.hostsys
rm_o.math:	C:h.stdio
rm_o.math:	C:h.stdbool
rm_o.math:	C:h.limits
rm_o.math:	C:h.float
rm_o.math:	C:h.errno
rm_o.math:	C:h.math
rm_o.math:	C:h.fenv
rm_o.mathasm: s.mathasm
rm_o.mathasm: s.objmacs
rm_o.mathasm: s.h_la_obj
rm_o.memcpset: s.memcpset
rm_o.memcpset: s.objmacs
rm_o.memcpset: s.h_la_obj
rm_o.printf:	c.printf
rm_o.printf:	h.hostsys
rm_o.printf:	C:h.stdio
rm_o.printf:	C:h.stdbool
rm_o.printf:	C:h.kernel
rm_o.printf:	C:h.stdio
rm_o.printf:	C:h.stdarg
rm_o.printf:	C:h.ctype
rm_o.printf:	C:h.string
rm_o.scanf:	c.scanf
rm_o.scanf:	h.hostsys
rm_o.scanf:	C:h.stdio
rm_o.scanf:	C:h.stdbool
rm_o.scanf:	C:h.kernel
rm_o.scanf:	C:h.stdio
rm_o.scanf:	C:h.stdlib
rm_o.scanf:	C:h.inttypes
rm_o.scanf:	C:h.stdint
rm_o.scanf:	C:h.math
rm_o.scanf:	C:h.errno
rm_o.scanf:	C:h.string
rm_o.scanf:	C:h.ctype
rm_o.scanf:	C:h.stddef
rm_o.scanf:	C:h.stdarg
rm_o.scanf:	C:h.limits
rm_o.scanf:	C:h.fenv
rm_o.signal:	c.signal
rm_o.signal:	h.hostsys
rm_o.signal:	C:h.stdio
rm_o.signal:	C:h.stdbool
rm_o.signal:	C:h.signal
rm_o.signal:	C:h.stdio
rm_o.signal:	C:h.stddef
rm_o.signal:	C:h.stdlib
rm_o.signal:	C:h.errno
rm_o.signal:	C:h.kernel
rm_o.sort:	c.sort
rm_o.sort:	h.hostsys
rm_o.sort:	C:h.stdio
rm_o.sort:	C:h.stdbool
rm_o.sort:	C:h.stddef
rm_o.sort:	C:h.stdlib
rm_o.sort:	C:h.kernel
rm_o.stdio:	c.stdio
rm_o.stdio:	h.hostsys
rm_o.stdio:	C:h.stdio
rm_o.stdio:	C:h.stdbool
rm_o.stdio:	C:h.stdio
rm_o.stdio:	C:h.string
rm_o.stdio:	C:h.stddef
rm_o.stdio:	C:h.stdlib
rm_o.stdio:	C:h.time
rm_o.stdio:	C:h.errno
rm_o.stdio:	C:h.kernel
rm_o.stdio:	h.hostsys
rm_o.stdio:	C:h.swis
rm_o.stdlib:	c.stdlib
rm_o.stdlib:	h.hostsys
rm_o.stdlib:	C:h.stdio
rm_o.stdlib:	C:h.stdbool
rm_o.stdlib:	C:h.kernel
rm_o.stdlib:	C:h.stdlib
rm_o.stdlib:	C:h.signal
rm_o.stdlib:	C:h.string
rm_o.stdlib:	C:h.stdint
rm_o.stdlib:	h.alloc
rm_o.stdlib:	C:h.stddef
rm_o.string:	c.string
rm_o.string:	h.hostsys
rm_o.string:	C:h.stdio
rm_o.string:	C:h.stdbool
rm_o.string:	C:h.stddef
rm_o.string:	C:h.string
rm_o.string:	C:h.kernel
rm_o.string:	h.territory
rm_o.string:	C:h.swis
rm_o.string:	C:h.errno
rm_o.time:	c.time
rm_o.time:	C:h.time
rm_o.time:	C:h.stdio
rm_o.time:	C:h.string
rm_o.time:	C:h.locale
rm_o.time:	C:h.kernel
rm_o.time:	h.territory
rm_o.time:	C:h.swis
rm_o.fenv: s.fenv
rm_o.fenv: s.objmacs
rm_o.fenv: s.h_la_obj
rm_o.swiv: kernel.s.swiv
rm_o.swiv: s.h_regs
rm_o.swiv: s.h_brazil
rm_o.swiv: Hdr:ListOpts
rm_o.swiv: Hdr:Machine.<Machine>
rm_o.swiv: Hdr:Machine.Machine
rm_o.swiv: Hdr:APCS.<APCS>
rm_o.swiv: Hdr:APCS.Common
rm_o.swiv: Hdr:Macros
rm_o.swiv: Hdr:System
rm_o.swiv: Hdr:SWIs
rm_o.swiv: Hdr:CPU.Arch
rm_o.swiv: Hdr:CPU.Generic26
rm_o.swiv: Hdr:CPU.Generic32
rm_o.swiv: Hdr:IO.GenericIO
rm_o.swiv: Hdr:RISCOS
rm_o.swiv: Hdr:ModHand
rm_o.swiv: Hdr:FPEmulator
rm_o.cl_spare: clib.s.cl_spare
rm_o_rl.rl_modbody: rlib.s.rl_mod_r
rm_o_rl.rl_modbody: s.h_regs
rm_o_rl.rl_modbody: s.h_brazil
rm_o_rl.rl_modbody: Hdr:ListOpts
rm_o_rl.rl_modbody: Hdr:Machine.<Machine>
rm_o_rl.rl_modbody: Hdr:Machine.Machine
rm_o_rl.rl_modbody: Hdr:APCS.<APCS>
rm_o_rl.rl_modbody: Hdr:APCS.Common
rm_o_rl.rl_modbody: Hdr:Macros
rm_o_rl.rl_modbody: Hdr:System
rm_o_rl.rl_modbody: Hdr:SWIs
rm_o_rl.rl_modbody: Hdr:CPU.Arch
rm_o_rl.rl_modbody: Hdr:CPU.Generic26
rm_o_rl.rl_modbody: Hdr:CPU.Generic32
rm_o_rl.rl_modbody: Hdr:IO.GenericIO
rm_o_rl.rl_modbody: Hdr:RISCOS
rm_o_rl.rl_modbody: Hdr:ModHand
rm_o_rl.rl_modbody: Hdr:FPEmulator
rm_o_rl.rl_modbody: s.h_modmacro
rm_o_rl.rl_modbody: rlib.s.rl_data
rm_o_rl.rl_modbody: rlib.s.rl_entries
rm_o_rl.akbd:	rlib.c.akbd
rm_o_rl.akbd:	rlib.h.os
rm_o_rl.akbd:	C:h.kernel
rm_o_rl.akbd:	rlib.h.trace
rm_o_rl.akbd:	rlib.h.akbd
rm_o_rl.alarm:	rlib.c.alarm
rm_o_rl.alarm:	C:h.stdlib
rm_o_rl.alarm:	C:h.limits
rm_o_rl.alarm:	rlib.h.alarm
rm_o_rl.alarm:	rlib.h.werr
rm_o_rl.alarm:	rlib.h.os
rm_o_rl.alarm:	C:h.kernel
rm_o_rl.alarm:	rlib.h.msgs
rm_o_rl.alarm:	C:h.swis
rm_o_rl.alarm:	rlib.VerIntern.h.messages
rm_o_rl.baricon:	rlib.c.baricon
rm_o_rl.baricon:	C:h.string
rm_o_rl.baricon:	C:h.stdlib
rm_o_rl.baricon:	rlib.h.os
rm_o_rl.baricon:	C:h.kernel
rm_o_rl.baricon:	rlib.h.wimp
rm_o_rl.baricon:	rlib.h.sprite
rm_o_rl.baricon:	rlib.h.wimpt
rm_o_rl.baricon:	rlib.h.trace
rm_o_rl.baricon:	rlib.h.bbc
rm_o_rl.baricon:	rlib.h.sprite
rm_o_rl.baricon:	rlib.h.win
rm_o_rl.baricon:	rlib.h.menu
rm_o_rl.baricon:	rlib.h.event
rm_o_rl.baricon:	rlib.h.baricon
rm_o_rl.baricon:	C:h.swis
rm_o_rl.bastxt: rlib.s.bastxt
rm_o_rl.bastxt: Hdr:ListOpts
rm_o_rl.bastxt: Hdr:APCS.Common
rm_o_rl.bastxt: Hdr:Macros
rm_o_rl.bbc:	rlib.c.bbc
rm_o_rl.bbc:	C:h.stdarg
rm_o_rl.bbc:	rlib.h.os
rm_o_rl.bbc:	C:h.kernel
rm_o_rl.bbc:	rlib.h.bbc
rm_o_rl.bbc:	C:h.swis
rm_o_rl.colourmenu:	rlib.c.colourmenu
rm_o_rl.colourmenu:	C:h.stdio
rm_o_rl.colourmenu:	rlib.h.os
rm_o_rl.colourmenu:	C:h.kernel
rm_o_rl.colourmenu:	rlib.h.wimp
rm_o_rl.colourmenu:	rlib.h.sprite
rm_o_rl.colourmenu:	rlib.h.menu
rm_o_rl.colourmenu:	rlib.h.colourmenu
rm_o_rl.colourtran:	rlib.c.colourtran
rm_o_rl.colourtran:	C:h.stddef
rm_o_rl.colourtran:	rlib.h.colourtran
rm_o_rl.colourtran:	rlib.h.os
rm_o_rl.colourtran:	C:h.kernel
rm_o_rl.colourtran:	rlib.h.wimp
rm_o_rl.colourtran:	rlib.h.sprite
rm_o_rl.colourtran:	rlib.h.font
rm_o_rl.colourtran:	C:h.stddef
rm_o_rl.colourtran:	rlib.h.drawmod
rm_o_rl.colourtran:	rlib.h.os
rm_o_rl.colourtran:	rlib.h.wimp
rm_o_rl.dbox:	rlib.c.dbox
rm_o_rl.dbox:	C:h.stdarg
rm_o_rl.dbox:	C:h.stdlib
rm_o_rl.dbox:	C:h.string
rm_o_rl.dbox:	C:h.stdio
rm_o_rl.dbox:	C:h.ctype
rm_o_rl.dbox:	C:h.limits
rm_o_rl.dbox:	rlib.h.trace
rm_o_rl.dbox:	rlib.h.werr
rm_o_rl.dbox:	rlib.h.os
rm_o_rl.dbox:	C:h.kernel
rm_o_rl.dbox:	rlib.h.akbd
rm_o_rl.dbox:	rlib.h.wimp
rm_o_rl.dbox:	rlib.h.sprite
rm_o_rl.dbox:	rlib.h.wimpt
rm_o_rl.dbox:	rlib.h.win
rm_o_rl.dbox:	rlib.h.menu
rm_o_rl.dbox:	rlib.h.event
rm_o_rl.dbox:	rlib.h.dbox
rm_o_rl.dbox:	rlib.h.res
rm_o_rl.dbox:	C:h.stdio
rm_o_rl.dbox:	rlib.h.sprite
rm_o_rl.dbox:	rlib.h.resspr
rm_o_rl.dbox:	rlib.h.template
rm_o_rl.dbox:	rlib.h.alarm
rm_o_rl.dbox:	rlib.h.msgs
rm_o_rl.dbox:	rlib.VerIntern.h.messages
rm_o_rl.dboxfile:	rlib.c.dboxfile
rm_o_rl.dboxfile:	C:h.stdio
rm_o_rl.dboxfile:	rlib.h.dbox
rm_o_rl.dboxfile:	rlib.h.dboxfile
rm_o_rl.dboxfile:	rlib.h.trace
rm_o_rl.dboxquery:	rlib.c.dboxquery
rm_o_rl.dboxquery:	C:h.stdio
rm_o_rl.dboxquery:	rlib.h.dbox
rm_o_rl.dboxquery:	rlib.h.dboxquery
rm_o_rl.dboxquery:	rlib.h.help
rm_o_rl.dboxquery:	rlib.h.wimp
rm_o_rl.dboxquery:	rlib.h.os
rm_o_rl.dboxquery:	C:h.kernel
rm_o_rl.dboxquery:	rlib.h.sprite
rm_o_rl.dboxquery:	rlib.h.event
rm_o_rl.dboxquery:	rlib.h.menu
rm_o_rl.dboxtcol:	rlib.c.dboxtcol
rm_o_rl.dboxtcol:	rlib.h.colourpick
rm_o_rl.dboxtcol:	rlib.h.coords
rm_o_rl.dboxtcol:	rlib.h.wimp
rm_o_rl.dboxtcol:	rlib.h.os
rm_o_rl.dboxtcol:	C:h.kernel
rm_o_rl.dboxtcol:	rlib.h.sprite
rm_o_rl.dboxtcol:	rlib.h.event
rm_o_rl.dboxtcol:	rlib.h.menu
rm_o_rl.dboxtcol:	rlib.h.dboxtcol
rm_o_rl.dboxtcol:	rlib.h.help
rm_o_rl.dboxtcol:	rlib.h.dbox
rm_o_rl.dboxtcol:	rlib.h.os
rm_o_rl.dboxtcol:	rlib.h.wimp
rm_o_rl.dboxtcol:	rlib.h.wimpt
rm_o_rl.dboxtcol:	rlib.h.win
rm_o_rl.dboxtcol:	C:h.swis
rm_o_rl.dragasprit:	rlib.c.dragasprit
rm_o_rl.dragasprit:	rlib.h.os
rm_o_rl.dragasprit:	C:h.kernel
rm_o_rl.dragasprit:	rlib.h.dragasprit
rm_o_rl.dragasprit:	rlib.h.sprite
rm_o_rl.dragasprit:	rlib.h.wimp
rm_o_rl.drawfobj:	rlib.c.drawfobj
rm_o_rl.drawfobj:	C:h.stdio
rm_o_rl.drawfobj:	C:h.stdlib
rm_o_rl.drawfobj:	C:h.string
rm_o_rl.drawfobj:	rlib.h.os
rm_o_rl.drawfobj:	C:h.kernel
rm_o_rl.drawfobj:	rlib.h.bbc
rm_o_rl.drawfobj:	rlib.h.sprite
rm_o_rl.drawfobj:	rlib.h.wimpt
rm_o_rl.drawfobj:	rlib.h.wimp
rm_o_rl.drawfobj:	rlib.DrawIntern.h.drawfile1
rm_o_rl.drawfobj:	rlib.h.drawfdiag
rm_o_rl.drawfobj:	rlib.h.drawfobj
rm_o_rl.drawfobj:	rlib.DrawIntern.h.drawcvttyp
rm_o_rl.drawfobj:	rlib.DrawIntern.h.drawfile2
rm_o_rl.drawfobj:	rlib.h.drawferror
rm_o_rl.drawmod:	rlib.c.drawmod
rm_o_rl.drawmod:	rlib.h.drawmod
rm_o_rl.drawmod:	rlib.h.os
rm_o_rl.drawmod:	C:h.kernel
rm_o_rl.drawmod:	rlib.h.os
rm_o_rl.event:	rlib.c.event
rm_o_rl.event:	C:h.stdlib
rm_o_rl.event:	rlib.h.trace
rm_o_rl.event:	rlib.h.os
rm_o_rl.event:	C:h.kernel
rm_o_rl.event:	rlib.h.wimp
rm_o_rl.event:	rlib.h.sprite
rm_o_rl.event:	rlib.h.wimpt
rm_o_rl.event:	rlib.h.win
rm_o_rl.event:	rlib.h.menu
rm_o_rl.event:	rlib.h.alarm
rm_o_rl.event:	rlib.h.event
rm_o_rl.fileicon:	rlib.c.fileicon
rm_o_rl.fileicon:	C:h.stdio
rm_o_rl.fileicon:	rlib.h.os
rm_o_rl.fileicon:	C:h.kernel
rm_o_rl.fileicon:	rlib.h.wimp
rm_o_rl.fileicon:	rlib.h.sprite
rm_o_rl.fileicon:	rlib.h.wimpt
rm_o_rl.fileicon:	rlib.h.sprite
rm_o_rl.fileicon:	rlib.h.trace
rm_o_rl.fileicon:	rlib.h.fileicon
rm_o_rl.fileicon:	rlib.h.werr
rm_o_rl.flex:	rlib.c.flex
rm_o_rl.flex:	C:h.stdlib
rm_o_rl.flex:	C:h.stdarg
rm_o_rl.flex:	C:h.string
rm_o_rl.flex:	C:h.stdio
rm_o_rl.flex:	C:h.swis
rm_o_rl.flex:	C:h.kernel
rm_o_rl.flex:	rlib.h.os
rm_o_rl.flex:	rlib.h.werr
rm_o_rl.flex:	rlib.h.flex
rm_o_rl.flex:	rlib.h.trace
rm_o_rl.flex:	rlib.h.wimp
rm_o_rl.flex:	rlib.h.sprite
rm_o_rl.flex:	rlib.h.wimpt
rm_o_rl.flex:	rlib.h.msgs
rm_o_rl.flex:	rlib.VerIntern.h.messages
rm_o_rl.font:	rlib.c.font
rm_o_rl.font:	C:h.stddef
rm_o_rl.font:	C:h.stdlib
rm_o_rl.font:	C:h.string
rm_o_rl.font:	rlib.h.os
rm_o_rl.font:	C:h.kernel
rm_o_rl.font:	rlib.h.trace
rm_o_rl.font:	rlib.h.msgs
rm_o_rl.font:	rlib.h.wimp
rm_o_rl.font:	rlib.h.sprite
rm_o_rl.font:	rlib.h.font
rm_o_rl.font:	C:h.stddef
rm_o_rl.font:	rlib.h.drawmod
rm_o_rl.font:	rlib.VerIntern.h.messages
rm_o_rl.heap:	rlib.c.heap
rm_o_rl.heap:	rlib.h.heap
rm_o_rl.heap:	rlib.h.os
rm_o_rl.heap:	C:h.kernel
rm_o_rl.heap:	C:h.stdlib
rm_o_rl.jpeg:	rlib.c.jpeg
rm_o_rl.jpeg:	C:h.stddef
rm_o_rl.jpeg:	rlib.h.jpeg
rm_o_rl.jpeg:	rlib.h.sprite
rm_o_rl.jpeg:	rlib.h.os
rm_o_rl.jpeg:	C:h.kernel
rm_o_rl.magnify:	rlib.c.magnify
rm_o_rl.magnify:	rlib.h.os
rm_o_rl.magnify:	C:h.kernel
rm_o_rl.magnify:	rlib.h.wimp
rm_o_rl.magnify:	rlib.h.sprite
rm_o_rl.magnify:	rlib.h.wimpt
rm_o_rl.magnify:	rlib.h.dbox
rm_o_rl.magnify:	rlib.h.magnify
rm_o_rl.magnify:	rlib.h.help
rm_o_rl.magnify:	rlib.h.event
rm_o_rl.magnify:	rlib.h.menu
rm_o_rl.menu:	rlib.c.menu
rm_o_rl.menu:	C:h.stdlib
rm_o_rl.menu:	C:h.string
rm_o_rl.menu:	C:h.stdarg
rm_o_rl.menu:	rlib.h.os
rm_o_rl.menu:	C:h.kernel
rm_o_rl.menu:	rlib.h.wimp
rm_o_rl.menu:	rlib.h.sprite
rm_o_rl.menu:	rlib.h.werr
rm_o_rl.menu:	rlib.h.menu
rm_o_rl.menu:	rlib.h.sprite
rm_o_rl.menu:	rlib.h.resspr
rm_o_rl.menu:	rlib.h.msgs
rm_o_rl.menu:	rlib.VerIntern.h.messages
rm_o_rl.msgs:	rlib.c.msgs
rm_o_rl.msgs:	C:h.stdlib
rm_o_rl.msgs:	rlib.h.msgs
rm_o_rl.msgs:	C:h.swis
rm_o_rl.msgs:	C:h.kernel
rm_o_rl.msgs:	rlib.h.msgtrans
rm_o_rl.msgs:	rlib.h.res
rm_o_rl.msgs:	C:h.stdio
rm_o_rl.msgs:	rlib.h.os
rm_o_rl.msgs:	rlib.h.wimpt
rm_o_rl.msgs:	rlib.h.wimp
rm_o_rl.msgs:	rlib.h.sprite
rm_o_rl.os:	rlib.c.os
rm_o_rl.os:	rlib.h.os
rm_o_rl.os:	C:h.kernel
rm_o_rl.pointer:	rlib.c.pointer
rm_o_rl.pointer:	C:h.stddef
rm_o_rl.pointer:	rlib.h.os
rm_o_rl.pointer:	C:h.kernel
rm_o_rl.pointer:	rlib.h.sprite
rm_o_rl.pointer:	rlib.h.pointer
rm_o_rl.pointer:	rlib.h.wimp
rm_o_rl.poll: rlib.s.poll
rm_o_rl.poll: Hdr:ListOpts
rm_o_rl.poll: Hdr:APCS.Common
rm_o_rl.poll: Hdr:Macros
rm_o_rl.res:	rlib.c.res
rm_o_rl.res:	C:h.stdio
rm_o_rl.res:	C:h.string
rm_o_rl.res:	rlib.h.os
rm_o_rl.res:	C:h.kernel
rm_o_rl.res:	rlib.h.trace
rm_o_rl.res:	rlib.h.werr
rm_o_rl.res:	rlib.h.res
rm_o_rl.res:	C:h.stdio
rm_o_rl.resspr:	rlib.c.resspr
rm_o_rl.resspr:	C:h.stdlib
rm_o_rl.resspr:	C:h.stdio
rm_o_rl.resspr:	C:h.string
rm_o_rl.resspr:	C:h.swis
rm_o_rl.resspr:	C:h.kernel
rm_o_rl.resspr:	rlib.h.sprite
rm_o_rl.resspr:	rlib.h.os
rm_o_rl.resspr:	rlib.h.res
rm_o_rl.resspr:	C:h.stdio
rm_o_rl.resspr:	rlib.h.wimp
rm_o_rl.resspr:	rlib.h.werr
rm_o_rl.resspr:	rlib.h.msgs
rm_o_rl.resspr:	rlib.VerIntern.h.messages
rm_o_rl.resspr:	rlib.h.resspr
rm_o_rl.saveas:	rlib.c.saveas
rm_o_rl.saveas:	C:h.string
rm_o_rl.saveas:	C:h.stdio
rm_o_rl.saveas:	C:h.stdlib
rm_o_rl.saveas:	rlib.h.trace
rm_o_rl.saveas:	rlib.h.os
rm_o_rl.saveas:	C:h.kernel
rm_o_rl.saveas:	rlib.h.bbc
rm_o_rl.saveas:	rlib.h.wimp
rm_o_rl.saveas:	rlib.h.sprite
rm_o_rl.saveas:	rlib.h.wimpt
rm_o_rl.saveas:	rlib.h.win
rm_o_rl.saveas:	rlib.h.dbox
rm_o_rl.saveas:	rlib.h.saveas
rm_o_rl.saveas:	rlib.h.xfersend
rm_o_rl.saveas:	rlib.h.fileicon
rm_o_rl.saveas:	rlib.h.werr
rm_o_rl.saveas:	rlib.h.menu
rm_o_rl.saveas:	rlib.h.event
rm_o_rl.saveas:	rlib.h.msgs
rm_o_rl.saveas:	rlib.h.help
rm_o_rl.saveas:	rlib.h.template
rm_o_rl.saveas:	rlib.VerIntern.h.messages
rm_o_rl.sprite:	rlib.c.sprite
rm_o_rl.sprite:	C:h.stddef
rm_o_rl.sprite:	rlib.h.os
rm_o_rl.sprite:	C:h.kernel
rm_o_rl.sprite:	rlib.h.sprite
rm_o_rl.swi: rlib.s.swi
rm_o_rl.swi: Hdr:ListOpts
rm_o_rl.swi: Hdr:APCS.Common
rm_o_rl.swi: Hdr:Macros
rm_o_rl.template:	rlib.c.template
rm_o_rl.template:	C:h.stdlib
rm_o_rl.template:	C:h.stdio
rm_o_rl.template:	C:h.string
rm_o_rl.template:	C:h.string
rm_o_rl.template:	C:h.swis
rm_o_rl.template:	C:h.kernel
rm_o_rl.template:	rlib.h.os
rm_o_rl.template:	rlib.h.wimp
rm_o_rl.template:	rlib.h.sprite
rm_o_rl.template:	rlib.h.wimpt
rm_o_rl.template:	rlib.h.res
rm_o_rl.template:	C:h.stdio
rm_o_rl.template:	rlib.h.sprite
rm_o_rl.template:	rlib.h.resspr
rm_o_rl.template:	rlib.h.werr
rm_o_rl.template:	rlib.h.template
rm_o_rl.template:	rlib.h.trace
rm_o_rl.template:	rlib.h.msgs
rm_o_rl.template:	rlib.h.font
rm_o_rl.template:	C:h.stddef
rm_o_rl.template:	rlib.h.drawmod
rm_o_rl.template:	rlib.VerIntern.h.messages
rm_o_rl.txt:	rlib.c.txt
rm_o_rl.txt:	C:h.stdlib
rm_o_rl.txt:	C:h.stdarg
rm_o_rl.txt:	rlib.h.txt
rm_o_rl.txt:	rlib.EditIntern.h.txtundo
rm_o_rl.txt:	rlib.EditIntern.h.txt1
rm_o_rl.txt:	rlib.EditIntern.h.txt3
rm_o_rl.txt:	rlib.EditIntern.h.txtar
rm_o_rl.txt:	rlib.h.werr
rm_o_rl.txt:	rlib.h.trace
rm_o_rl.txt1:	rlib.c.txt1
rm_o_rl.txt1:	C:h.limits
rm_o_rl.txt1:	C:h.string
rm_o_rl.txt1:	C:h.stdlib
rm_o_rl.txt1:	C:h.limits
rm_o_rl.txt1:	C:h.stdarg
rm_o_rl.txt1:	rlib.h.trace
rm_o_rl.txt1:	rlib.h.werr
rm_o_rl.txt1:	rlib.h.flex
rm_o_rl.txt1:	rlib.h.msgs
rm_o_rl.txt1:	rlib.h.txt
rm_o_rl.txt1:	rlib.EditIntern.h.txtundo
rm_o_rl.txt1:	rlib.EditIntern.h.txt1
rm_o_rl.txt1:	rlib.EditIntern.h.txt3
rm_o_rl.txt1:	rlib.VerIntern.h.messages
rm_o_rl.txt3:	rlib.c.txt3
rm_o_rl.txt3:	C:h.stdio
rm_o_rl.txt3:	C:h.string
rm_o_rl.txt3:	C:h.stdlib
rm_o_rl.txt3:	rlib.h.trace
rm_o_rl.txt3:	rlib.h.werr
rm_o_rl.txt3:	rlib.h.txt
rm_o_rl.txt3:	rlib.EditIntern.h.txtundo
rm_o_rl.txt3:	rlib.EditIntern.h.txt1
rm_o_rl.txt3:	rlib.EditIntern.h.txt3
rm_o_rl.txtar:	rlib.c.txtar
rm_o_rl.txtar:	C:h.string
rm_o_rl.txtar:	C:h.stdlib
rm_o_rl.txtar:	C:h.stdarg
rm_o_rl.txtar:	C:h.stdio
rm_o_rl.txtar:	rlib.h.os
rm_o_rl.txtar:	C:h.kernel
rm_o_rl.txtar:	C:h.swis
rm_o_rl.txtar:	rlib.h.bbc
rm_o_rl.txtar:	rlib.h.dbox
rm_o_rl.txtar:	rlib.h.werr
rm_o_rl.txtar:	rlib.h.akbd
rm_o_rl.txtar:	rlib.h.wimp
rm_o_rl.txtar:	rlib.h.sprite
rm_o_rl.txtar:	rlib.h.wimpt
rm_o_rl.txtar:	rlib.h.font
rm_o_rl.txtar:	C:h.stddef
rm_o_rl.txtar:	rlib.h.drawmod
rm_o_rl.txtar:	rlib.h.trace
rm_o_rl.txtar:	rlib.h.win
rm_o_rl.txtar:	rlib.h.menu
rm_o_rl.txtar:	rlib.h.event
rm_o_rl.txtar:	rlib.h.xferrecv
rm_o_rl.txtar:	rlib.h.visdelay
rm_o_rl.txtar:	rlib.h.msgs
rm_o_rl.txtar:	rlib.h.txt
rm_o_rl.txtar:	rlib.EditIntern.h.txtundo
rm_o_rl.txtar:	rlib.EditIntern.h.txt1
rm_o_rl.txtar:	rlib.EditIntern.h.txt3
rm_o_rl.txtar:	rlib.EditIntern.h.txtar
rm_o_rl.txtar:	rlib.h.txtscrap
rm_o_rl.txtar:	rlib.h.txtopt
rm_o_rl.txtar:	rlib.VerIntern.h.messages
rm_o_rl.txtedit:	rlib.c.txtedit
rm_o_rl.txtedit:	C:h.stdio
rm_o_rl.txtedit:	C:h.string
rm_o_rl.txtedit:	C:h.stdlib
rm_o_rl.txtedit:	C:h.limits
rm_o_rl.txtedit:	C:h.signal
rm_o_rl.txtedit:	C:h.ctype
rm_o_rl.txtedit:	rlib.h.akbd
rm_o_rl.txtedit:	rlib.h.werr
rm_o_rl.txtedit:	rlib.h.menu
rm_o_rl.txtedit:	rlib.h.os
rm_o_rl.txtedit:	C:h.kernel
rm_o_rl.txtedit:	rlib.h.wimp
rm_o_rl.txtedit:	rlib.h.sprite
rm_o_rl.txtedit:	rlib.h.wimpt
rm_o_rl.txtedit:	rlib.h.txt
rm_o_rl.txtedit:	rlib.h.win
rm_o_rl.txtedit:	rlib.h.txtwin
rm_o_rl.txtedit:	rlib.h.flex
rm_o_rl.txtedit:	rlib.h.txtscrap
rm_o_rl.txtedit:	rlib.h.event
rm_o_rl.txtedit:	rlib.h.txtedit
rm_o_rl.txtedit:	rlib.h.typdat
rm_o_rl.txtedit:	rlib.EditIntern.h.txtfind
rm_o_rl.txtedit:	rlib.EditIntern.h.txtregexp
rm_o_rl.txtedit:	rlib.EditIntern.h.txtmisc
rm_o_rl.txtedit:	rlib.EditIntern.h.txtundo
rm_o_rl.txtedit:	rlib.EditIntern.h.txt1
rm_o_rl.txtedit:	rlib.EditIntern.h.txtar
rm_o_rl.txtedit:	rlib.h.dboxquery
rm_o_rl.txtedit:	rlib.h.dboxfile
rm_o_rl.txtedit:	rlib.h.trace
rm_o_rl.txtedit:	rlib.h.dbox
rm_o_rl.txtedit:	rlib.EditIntern.h.txtoptmenu
rm_o_rl.txtedit:	rlib.h.xfersend
rm_o_rl.txtedit:	rlib.h.xferrecv
rm_o_rl.txtedit:	rlib.h.saveas
rm_o_rl.txtedit:	rlib.h.typdat
rm_o_rl.txtedit:	rlib.h.fileicon
rm_o_rl.txtedit:	rlib.h.visdelay
rm_o_rl.txtedit:	rlib.EditIntern.h.txtfile
rm_o_rl.txtedit:	rlib.EditIntern.h.txtregexp
rm_o_rl.txtedit:	C:h.swis
rm_o_rl.txtedit:	rlib.h.txtopt
rm_o_rl.txtedit:	rlib.h.msgs
rm_o_rl.txtedit:	rlib.h.help
rm_o_rl.txtedit:	rlib.h.template
rm_o_rl.txtedit:	rlib.VerIntern.h.messages
rm_o_rl.txtfile:	rlib.c.txtfile
rm_o_rl.txtfile:	C:h.stdio
rm_o_rl.txtfile:	C:h.string
rm_o_rl.txtfile:	C:h.stdlib
rm_o_rl.txtfile:	C:h.limits
rm_o_rl.txtfile:	rlib.h.os
rm_o_rl.txtfile:	C:h.kernel
rm_o_rl.txtfile:	rlib.h.txt
rm_o_rl.txtfile:	rlib.h.typdat
rm_o_rl.txtfile:	rlib.h.flex
rm_o_rl.txtfile:	C:h.swis
rm_o_rl.txtfile:	rlib.h.wimpt
rm_o_rl.txtfile:	rlib.h.wimp
rm_o_rl.txtfile:	rlib.h.sprite
rm_o_rl.txtfile:	rlib.h.txt
rm_o_rl.txtfile:	rlib.EditIntern.h.txtundo
rm_o_rl.txtfile:	rlib.EditIntern.h.txt1
rm_o_rl.txtfile:	rlib.h.txtedit
rm_o_rl.txtfile:	rlib.h.menu
rm_o_rl.txtfile:	rlib.h.txtscrap
rm_o_rl.txtfile:	rlib.h.xfersend
rm_o_rl.txtfile:	rlib.h.xferrecv
rm_o_rl.txtfile:	rlib.EditIntern.h.txtfile
rm_o_rl.txtfile:	rlib.h.trace
rm_o_rl.txtfile:	rlib.h.werr
rm_o_rl.txtfile:	rlib.h.msgs
rm_o_rl.txtfile:	rlib.h.visdelay
rm_o_rl.txtfile:	rlib.VerIntern.h.messages
rm_o_rl.txtfind:	rlib.c.txtfind
rm_o_rl.txtfind:	C:h.stdio
rm_o_rl.txtfind:	C:h.string
rm_o_rl.txtfind:	C:h.stdlib
rm_o_rl.txtfind:	C:h.ctype
rm_o_rl.txtfind:	rlib.h.werr
rm_o_rl.txtfind:	rlib.h.txt
rm_o_rl.txtfind:	rlib.EditIntern.h.txtregexp
rm_o_rl.txtfind:	rlib.EditIntern.h.txtfind
rm_o_rl.txtfind:	rlib.EditIntern.h.txtregexp
rm_o_rl.txtfind:	rlib.h.trace
rm_o_rl.txtfind:	rlib.h.msgs
rm_o_rl.txtfind:	rlib.h.visdelay
rm_o_rl.txtfind:	rlib.VerIntern.h.messages
rm_o_rl.txtmisc:	rlib.c.txtmisc
rm_o_rl.txtmisc:	C:h.stdio
rm_o_rl.txtmisc:	C:h.string
rm_o_rl.txtmisc:	C:h.stdlib
rm_o_rl.txtmisc:	C:h.limits
rm_o_rl.txtmisc:	rlib.h.werr
rm_o_rl.txtmisc:	rlib.h.txt
rm_o_rl.txtmisc:	rlib.h.flex
rm_o_rl.txtmisc:	rlib.h.txtscrap
rm_o_rl.txtmisc:	rlib.EditIntern.h.txtmisc
rm_o_rl.txtmisc:	rlib.EditIntern.h.txtundo
rm_o_rl.txtmisc:	rlib.h.trace
rm_o_rl.txtmisc:	rlib.h.msgs
rm_o_rl.txtmisc:	rlib.VerIntern.h.messages
rm_o_rl.txtoptmenu:	rlib.c.txtoptmenu
rm_o_rl.txtoptmenu:	C:h.stdio
rm_o_rl.txtoptmenu:	C:h.string
rm_o_rl.txtoptmenu:	C:h.stdlib
rm_o_rl.txtoptmenu:	rlib.h.os
rm_o_rl.txtoptmenu:	C:h.kernel
rm_o_rl.txtoptmenu:	rlib.h.wimp
rm_o_rl.txtoptmenu:	rlib.h.sprite
rm_o_rl.txtoptmenu:	rlib.h.wimpt
rm_o_rl.txtoptmenu:	rlib.h.menu
rm_o_rl.txtoptmenu:	rlib.h.dbox
rm_o_rl.txtoptmenu:	rlib.h.event
rm_o_rl.txtoptmenu:	rlib.h.txt
rm_o_rl.txtoptmenu:	rlib.EditIntern.h.txtar
rm_o_rl.txtoptmenu:	rlib.EditIntern.h.txtundo
rm_o_rl.txtoptmenu:	rlib.EditIntern.h.txt1
rm_o_rl.txtoptmenu:	rlib.EditIntern.h.txtoptmenu
rm_o_rl.txtoptmenu:	rlib.h.visdelay
rm_o_rl.txtoptmenu:	rlib.h.font
rm_o_rl.txtoptmenu:	C:h.stddef
rm_o_rl.txtoptmenu:	rlib.h.drawmod
rm_o_rl.txtoptmenu:	rlib.h.trace
rm_o_rl.txtoptmenu:	rlib.h.werr
rm_o_rl.txtoptmenu:	rlib.h.colourmenu
rm_o_rl.txtoptmenu:	rlib.h.msgs
rm_o_rl.txtoptmenu:	rlib.h.txtwin
rm_o_rl.txtoptmenu:	rlib.VerIntern.h.messages
rm_o_rl.txtscrap:	rlib.c.txtscrap
rm_o_rl.txtscrap:	C:h.stdio
rm_o_rl.txtscrap:	C:h.string
rm_o_rl.txtscrap:	C:h.stdlib
rm_o_rl.txtscrap:	rlib.h.txt
rm_o_rl.txtscrap:	rlib.h.txtscrap
rm_o_rl.txtundo:	rlib.c.txtundo
rm_o_rl.txtundo:	C:h.stdlib
rm_o_rl.txtundo:	C:h.string
rm_o_rl.txtundo:	C:h.stdarg
rm_o_rl.txtundo:	rlib.h.flex
rm_o_rl.txtundo:	rlib.h.trace
rm_o_rl.txtundo:	rlib.h.txt
rm_o_rl.txtundo:	rlib.EditIntern.h.txtundo
rm_o_rl.txtundo:	rlib.EditIntern.h.txt1
rm_o_rl.txtundo:	rlib.h.txtscrap
rm_o_rl.txtundo:	rlib.h.werr
rm_o_rl.txtwin:	rlib.c.txtwin
rm_o_rl.txtwin:	rlib.h.trace
rm_o_rl.txtwin:	rlib.h.os
rm_o_rl.txtwin:	C:h.kernel
rm_o_rl.txtwin:	rlib.h.wimp
rm_o_rl.txtwin:	rlib.h.sprite
rm_o_rl.txtwin:	rlib.h.wimpt
rm_o_rl.txtwin:	rlib.h.win
rm_o_rl.txtwin:	rlib.h.txt
rm_o_rl.txtwin:	rlib.EditIntern.h.txtundo
rm_o_rl.txtwin:	rlib.EditIntern.h.txt1
rm_o_rl.txtwin:	rlib.EditIntern.h.txt3
rm_o_rl.txtwin:	rlib.EditIntern.h.txtar
rm_o_rl.txtwin:	rlib.h.txtwin
rm_o_rl.visdelay:	rlib.c.visdelay
rm_o_rl.visdelay:	rlib.h.os
rm_o_rl.visdelay:	C:h.kernel
rm_o_rl.visdelay:	rlib.h.visdelay
rm_o_rl.werr:	rlib.c.werr
rm_o_rl.werr:	C:h.stdarg
rm_o_rl.werr:	C:h.stdlib
rm_o_rl.werr:	C:h.stdio
rm_o_rl.werr:	C:h.string
rm_o_rl.werr:	C:h.swis
rm_o_rl.werr:	C:h.kernel
rm_o_rl.werr:	rlib.h.os
rm_o_rl.werr:	rlib.h.wimp
rm_o_rl.werr:	rlib.h.sprite
rm_o_rl.werr:	rlib.h.werr
rm_o_rl.werr:	rlib.h.wimpt
rm_o_rl.wimp:	rlib.c.wimp
rm_o_rl.wimp:	C:h.stdlib
rm_o_rl.wimp:	C:h.string
rm_o_rl.wimp:	C:h.stdarg
rm_o_rl.wimp:	rlib.h.os
rm_o_rl.wimp:	C:h.kernel
rm_o_rl.wimp:	rlib.h.trace
rm_o_rl.wimp:	rlib.h.wimp
rm_o_rl.wimp:	rlib.h.sprite
rm_o_rl.wimpt:	rlib.c.wimpt
rm_o_rl.wimpt:	C:h.stdarg
rm_o_rl.wimpt:	C:h.stdlib
rm_o_rl.wimpt:	C:h.stdio
rm_o_rl.wimpt:	C:h.signal
rm_o_rl.wimpt:	C:h.string
rm_o_rl.wimpt:	C:h.swis
rm_o_rl.wimpt:	C:h.kernel
rm_o_rl.wimpt:	rlib.h.akbd
rm_o_rl.wimpt:	rlib.h.os
rm_o_rl.wimpt:	rlib.h.bbc
rm_o_rl.wimpt:	rlib.h.wimp
rm_o_rl.wimpt:	rlib.h.sprite
rm_o_rl.wimpt:	rlib.h.wimpt
rm_o_rl.wimpt:	rlib.h.trace
rm_o_rl.wimpt:	rlib.h.werr
rm_o_rl.wimpt:	rlib.h.alarm
rm_o_rl.wimpt:	rlib.h.event
rm_o_rl.wimpt:	rlib.h.menu
rm_o_rl.wimpt:	rlib.h.msgs
rm_o_rl.wimpt:	rlib.h.win
rm_o_rl.wimpt:	rlib.VerIntern.h.messages
rm_o_rl.win:	rlib.c.win
rm_o_rl.win:	C:h.stdarg
rm_o_rl.win:	C:h.stdlib
rm_o_rl.win:	C:h.string
rm_o_rl.win:	rlib.h.trace
rm_o_rl.win:	rlib.h.os
rm_o_rl.win:	C:h.kernel
rm_o_rl.win:	rlib.h.wimp
rm_o_rl.win:	rlib.h.sprite
rm_o_rl.win:	rlib.h.werr
rm_o_rl.win:	rlib.h.wimpt
rm_o_rl.win:	rlib.h.event
rm_o_rl.win:	rlib.h.menu
rm_o_rl.win:	rlib.h.msgs
rm_o_rl.win:	rlib.VerIntern.h.messages
rm_o_rl.win:	rlib.h.win
rm_o_rl.xferrecv:	rlib.c.xferrecv
rm_o_rl.xferrecv:	C:h.string
rm_o_rl.xferrecv:	C:h.stdio
rm_o_rl.xferrecv:	C:h.swis
rm_o_rl.xferrecv:	C:h.kernel
rm_o_rl.xferrecv:	rlib.h.trace
rm_o_rl.xferrecv:	rlib.h.os
rm_o_rl.xferrecv:	rlib.h.bbc
rm_o_rl.xferrecv:	rlib.h.wimp
rm_o_rl.xferrecv:	rlib.h.sprite
rm_o_rl.xferrecv:	rlib.h.wimpt
rm_o_rl.xferrecv:	rlib.h.win
rm_o_rl.xferrecv:	rlib.h.dbox
rm_o_rl.xferrecv:	rlib.h.typdat
rm_o_rl.xferrecv:	rlib.h.xfersend
rm_o_rl.xferrecv:	rlib.h.fileicon
rm_o_rl.xferrecv:	rlib.h.werr
rm_o_rl.xferrecv:	rlib.h.menu
rm_o_rl.xferrecv:	rlib.h.event
rm_o_rl.xferrecv:	rlib.h.xferrecv
rm_o_rl.xferrecv:	rlib.h.msgs
rm_o_rl.xferrecv:	rlib.VerIntern.h.messages
rm_o_rl.xfersend:	rlib.c.xfersend
rm_o_rl.xfersend:	C:h.string
rm_o_rl.xfersend:	C:h.stdio
rm_o_rl.xfersend:	C:h.stdlib
rm_o_rl.xfersend:	rlib.h.trace
rm_o_rl.xfersend:	C:h.swis
rm_o_rl.xfersend:	C:h.kernel
rm_o_rl.xfersend:	rlib.h.os
rm_o_rl.xfersend:	rlib.h.bbc
rm_o_rl.xfersend:	rlib.h.wimp
rm_o_rl.xfersend:	rlib.h.sprite
rm_o_rl.xfersend:	rlib.h.wimpt
rm_o_rl.xfersend:	rlib.h.win
rm_o_rl.xfersend:	rlib.h.dbox
rm_o_rl.xfersend:	rlib.h.xfersend
rm_o_rl.xfersend:	rlib.h.fileicon
rm_o_rl.xfersend:	rlib.h.werr
rm_o_rl.xfersend:	rlib.h.menu
rm_o_rl.xfersend:	rlib.h.event
rm_o_rl.xfersend:	rlib.h.msgs
rm_o_rl.xfersend:	rlib.h.dragasprit
rm_o_rl.xfersend:	rlib.VerIntern.h.messages
rm_o_rl.help:	rlib.c.help
rm_o_rl.help:	C:h.string
rm_o_rl.help:	rlib.h.os
rm_o_rl.help:	C:h.kernel
rm_o_rl.help:	rlib.h.wimp
rm_o_rl.help:	rlib.h.sprite
rm_o_rl.help:	rlib.h.wimpt
rm_o_rl.help:	rlib.h.werr
rm_o_rl.help:	rlib.h.trace
rm_o_rl.help:	rlib.h.event
rm_o_rl.help:	rlib.h.menu
rm_o_rl.help:	rlib.h.dbox
rm_o_rl.help:	rlib.h.msgs
rm_o_rl.help:	rlib.h.help
rm_o_rl.help:	C:h.swis
rm_o_rl.print:	rlib.c.print
rm_o_rl.print:	rlib.h.os
rm_o_rl.print:	C:h.kernel
rm_o_rl.print:	rlib.h.print
rm_o_rl.txtopt:	rlib.c.txtopt
rm_o_rl.txtopt:	C:h.stdlib
rm_o_rl.txtopt:	C:h.string
rm_o_rl.txtopt:	rlib.h.msgs
rm_o_rl.txtopt:	rlib.h.werr
rm_o_rl.txtopt:	rlib.h.txtopt
rm_o_rl.txtopt:	rlib.VerIntern.h.messages
rm_o_rl.txtregexp:	rlib.c.txtregexp
rm_o_rl.txtregexp:	C:h.stdio
rm_o_rl.txtregexp:	C:h.stdlib
rm_o_rl.txtregexp:	C:h.string
rm_o_rl.txtregexp:	C:h.ctype
rm_o_rl.txtregexp:	rlib.EditIntern.h.txtregexp
rm_o_rl.txtregexp:	rlib.h.txt
rm_o_rl.txtregexp:	rlib.VerIntern.h.messages
rm_o_rl.txtregexp:	rlib.h.msgs
rm_o_rl.txtregexp:	rlib.h.txt
rm_o_rl.txtregexp:	rlib.h.werr
rm_o_rl.rl_spare: rlib.s.rl_spare
