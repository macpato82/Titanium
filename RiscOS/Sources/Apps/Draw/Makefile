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
# Makefile for Draw
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name   Description
# ----       ----   -----------
# 25-Oct-94  AMcC   Updated for Black build
# 28-Oct-94  AMcC   added -zps1 flag to .c.oz rule (module version)
#

#
# Program specific options:
#
COMPONENT  = Draw
APP        = !Draw
INSTAPP    = ${INSTDIR}.${APP}
MODULE     = rm.!Draw
ROM_MODULE = aof.Draw
RDIR       = Resources
LDIR       = ${RDIR}.${LOCALE}
MSGVERSION = ${AWK} -f Build:AwkVers
MSGS       = Resources.GenMessage

#
# Export Paths for Messages module
#
RESDIR = <resource$dir>.Resources.${COMPONENT}
RESAPP = <resource$dir>.Apps.${APP}

include StdTools
include ModuleLibs

SQZFLAGS  = -f
CINCLUDES = -IRISCOSLIB:
ASFLAGS   = ${STDTOOLOPTIONS} -nocache -stamp -quit
CFLAGS    = ${STDTOOLOPTIONS} ${C_WARNINGS} ${CINCLUDES} -wp
WRAPPER   = RISC_OSLib:s.ModuleWrap
LIBSD     = ${RLIB} ${CLIB}

#
# Include files:
#
FILES =\
 ${RDIR}.!Boot\
 ${LDIR}.!Help\
 ${LDIR}.!Run\
 $(RDIR).!Sprites\
 ${MSGS} \
 $(RDIR).Sprites\
 ${LDIR}.Templates\
 abs.!RunImage

FILESD =\
 ${RDIR}.!Boot\
 ${LDIR}.!Help\
 ${LDIR}.!Run\
 $(RDIR).!Sprites\
 ${MSGS} \
 $(RDIR).Sprites\
 ${LDIR}.Templates\
 abs.!RunImageD

RESFILES =\
 ${RDIR}.Sprites

DFILES =\
 Debug.${APP}.!Boot\
 Debug.${APP}.!Help\
 Debug.${APP}.!Run \
 Debug.${APP}.!RunImage\
 Debug.${APP}.!Sprites\
 Debug.${APP}.Messages\
 Debug.${APP}.Sprites\
 Debug.${APP}.Templates

OBJS =\
 o.Draw o.DrawAction o.DrawCheck o.DrawDispl\
 o.DrawEdit o.DrawEnter o.DrawFileIO o.DrawGrid o.DrawHelp\
 o.DrawMenu o.DrawObject o.DrawPrint o.DrawScan o.DrawSelect\
 o.DrawTextC o.DrawTrans o.DrawUndo o.bezierarc o.DrawClipb\
 o.DrawDrag o.DrawChoice

OBJSZ =\
 oz.Draw oz.DrawAction oz.DrawCheck oz.DrawDispl\
 oz.DrawEdit oz.DrawEnter oz.DrawFileIO oz.DrawGrid oz.DrawHelp\
 oz.DrawMenu oz.DrawObject oz.DrawPrint oz.DrawScan oz.DrawSelect\
 oz.DrawTextC oz.DrawTrans oz.DrawUndo oz.bezierarc oz.DrawClipb\
 oz.DrawDrag oz.DrawChoice

OBJSD =\
 od.Draw od.DrawAction od.DrawCheck od.DrawDispl\
 od.DrawEdit od.DrawEnter od.DrawFileIO od.DrawGrid\
 od.DrawHelp od.DrawMenu od.DrawObject od.DrawPrint od.DrawScan\
 od.DrawSelect od.DrawTextC od.DrawTrans od.DrawUndo\
 od.bezierarc od.ftrace od.guard od.DrawClipb\
 od.DrawDrag od.DrawChoice

#
# Rule patterns
#
.SUFFIXES: .oz .od .asm
.c.o:;    ${CC} ${CFLAGS} -c ${C_NO_FNAMES} $<
.c.oz:;   ${CC} ${CFLAGS} -c ${C_NO_FNAMES} ${C_MODULE} ${C_NO_STKCHK} -o $@ $<
.c.od:;   ${CC} ${CFLAGS} -c -DTRACE=1 -g -o $@ $<
.asm.o:;  ${AS} ${ASFLAGS} $< $@
.c.s:;    ${CC} ${CFLAGS} -s ${C_NO_FNAMES} $<

#
# Main rules:
#
all: ${FILES}
	@${ECHO} ${COMPONENT}: Application built (Disc)

rom: ${ROM_MODULE}
	@${ECHO} ${COMPONENT}: Module built (ROM)

ifeq (${INSTTYPE},themedefs)
install:
	${MKDIR} ${INSTDIR}.${USERIF}
	${CP} LocalRes:DiscSprites.Sprites   ${INSTDIR}.${USERIF}.Draw   ${CPFLAGS}
	${CP} LocalRes:DiscSprites.Sprites22 ${INSTDIR}.${USERIF}.Draw22 ${CPFLAGS}
	@${ECHO} ${COMPONENT}: disc theme resources installed
else
install: ${FILES}
	${MKDIR} ${INSTAPP}
	$(CP) $(RDIR).!Boot     ${INSTAPP}.!Boot     ${CPFLAGS}
	$(CP) $(LDIR).!Help     ${INSTAPP}.!Help     ${CPFLAGS}
	$(CP) $(LDIR).!Run      ${INSTAPP}.!Run      ${CPFLAGS}
	$(CP) abs.!RunImage     ${INSTAPP}.!RunImage ${CPFLAGS}
	$(CP) $(RDIR).!Sprites  ${INSTAPP}.!Sprites  ${CPFLAGS}
	${CP} ${MSGS}           ${INSTAPP}.Messages   ${CPFLAGS}
	$(CP) $(RDIR).Sprites   ${INSTAPP}.Sprites   ${CPFLAGS}
	$(CP) $(LDIR).Templates ${INSTAPP}.Templates ${CPFLAGS}
	@${ECHO} ${COMPONENT}: Application installed (Disc)
endif

install_rom: ${ROM_MODULE}
	${CP} ${ROM_MODULE} ${INSTDIR}.${COMPONENT} ${CPFLAGS}
	@${ECHO} ${COMPONENT}: Module installed (ROM)

installd: ${FILESD}
	$(CP) $(RDIR).!Boot     ${INSTAPP}.!Boot     ${CPFLAGS}ln
	$(CP) $(LDIR).!Help     ${INSTAPP}.!Help     ${CPFLAGS}ln
	$(CP) $(LDIR).!Run      ${INSTAPP}.!Run      ${CPFLAGS}ln
	$(CP) abs.!RunImageD    ${INSTAPP}.!RunImage ${CPFLAGS}ln
	$(CP) $(RDIR).!Sprites  ${INSTAPP}.!Sprites  ${CPFLAGS}ln
	$(CP) $(LDIR).Messages  ${INSTAPP}.Messages  ${CPFLAGS}ln
	$(CP) $(RDIR).Sprites   ${INSTAPP}.Sprites   ${CPFLAGS}ln
	$(CP) $(LDIR).Templates ${INSTAPP}.Templates ${CPFLAGS}ln
	@${ECHO} ${COMPONENT}: Application installed (Disc)

resources: ${MSGS}
	${MKDIR} ${RESDIR}
	${MKDIR} ${RESAPP}
	${CP} ${RDIR}.ROM.!Boot ${RESAPP}.!Boot ${CPFLAGS}
	${CP} ${LDIR}.!Help     ${RESAPP}.!Help ${CPFLAGS}
	${CP} ${RDIR}.ROM.!Run  ${RESAPP}.!Run  ${CPFLAGS}
	|
	${CP} ${MSGS}           ${RESDIR}.Messages   ${CPFLAGS}
	${CP} ${LDIR}.Templates ${RESDIR}.Templates ${CPFLAGS}
	@${ECHO} ${COMPONENT}: resource files copied to Messages module

clean:
	${XWIPE} o.* ${WFLAGS}
	${XWIPE} s.* ${WFLAGS}
	${XWIPE} oz.* ${WFLAGS}
	${XWIPE} od.* ${WFLAGS}
	${XWIPE} linked.* ${WFLAGS}
	${XWIPE} map.* ${WFLAGS}
	${RM} abs.!RunImage
	${RM} abs.!RunImageD
	${RM} ${ROM_MODULE}
	${RM} ${MSGS}
	${RM} ${MODULE}
	@${ECHO} ${COMPONENT}: cleaned

#
# Development rules:
# 
app: ${FILES}
	@${ECHO} Made application ${APP}

appd: ${DFILES}
	@${ECHO} Made Debug.${APP}

mod: ${MODULE}
	@${ECHO} ${COMPONENT}: Module built (RAM)

linkmap: ${OBJS} ${LIBSD}
	${LD} -map -o null:x ${OBJS} ${LIBSD} > map.linked

map:
	${LD} -map -rmf -base 0 -o null: ${OBJS} ${LIBSD} > map.base0

clean_all:
	Destroy ${OBJS} ${OBJSD} ${ROM_MODULE} ${MODULE} abs.!RunImage \
	s.AppName s.ModuleWrap s.ResFiles Debug.RM.!Draw

#
# Static dependencies:
#
abs.!RunImage: ${OBJS} ${RLIB} ${CLIB}
	${LD} -o $@ ${OBJS} ${RLIB} ${CLIB}
	${SQZ} ${SQZFLAGS} $@

abs.!RunImageD: ${OBJSD} ${RLIB} ${CLIB}
	${LD} -debug -o $@ ${OBJSD} ${RLIB} ${CLIB}

${MODULE}: oz.ModuleWrap ${OBJSZ} ${RLIB} ${CLIB}
	${LD} -o $@ -module oz.ModuleWrap ${OBJSZ} ${RLIB} ${CLIB}

${ROM_MODULE}: oz.ModuleWrap ${OBJSZ} ${ROMSTUBS}
	${LD} -o $@ -aof oz.ModuleWrap ${OBJSZ} ${ROMSTUBS}

# final link for ROM Image (using given base address)
rom_link:
	${LD} -o linked.${COMPONENT} -rmf -base ${ADDRESS} ${ROM_MODULE} ${ABSSYM}
	${CP} linked.${COMPONENT} ${LINKDIR}.${COMPONENT} ${CPFLAGS}
	@${ECHO} ${COMPONENT}: rom_link complete

oz.ModuleWrap: s.ModuleWrap ${MSGS} s.AppName ${RESFILES} s.resfiles
	${AS} ${ASFLAGS} s.ModuleWrap $@

s.ModuleWrap: ${WRAPPER}
	${CP} ${WRAPPER} $@ ${CPFLAGS}

${MSGS}: ${LDIR}.Messages VersionNum
	${MSGVERSION} ${LDIR}.Messages > $@

s.ResFiles: asm.ResFiles
	${CP} asm.ResFiles $@ ${CPFLAGS}

s.AppName: asm.AppName
	${CP} asm.AppName $@ ${CPFLAGS}

BBETYPE = draw
bbe-draw: bbe-generic
	BBE_Export_Dir Resources

#---------------------------------------------------------------------------
# debugging version:
#
Debug.${APP}.!RunImage: ${OBJSD} ${LIBSD}
	${LD} -o $@ ${OBJSD} ${LIBSD}
	SetType $@ Absolute
	Squeeze $@

Debug.${APP}.!Boot: $(RDIR).!Boot
	${CP} $(RDIR).!Boot $@ ${CPFLAGS}

Debug.${APP}.!Help: $(LDIR).!Help
	${CP} $(LDIR).!Help $@ ${CPFLAGS}

Debug.${APP}.!Run: $(LDIR).!Run
	${CP} $(LDIR).!Run $@ ${CPFLAGS}

Debug.${APP}.!Sprites: $(RDIR).!Sprites
	${CP} $(RDIR).!Sprites $@ ${CPFLAGS}

Debug.${APP}.Messages: $(LDIR).Messages
	${CP} $(LDIR).Messages $@ ${CPFLAGS}

Debug.${APP}.Sprites: $(RDIR).Sprites
	${CP} $(RDIR).Sprites $@ ${CPFLAGS}

Debug.${APP}.Templates: $(LDIR).Templates
	${CP} $(LDIR).Templates $@ ${CPFLAGS}
#---------------------------------------------------------------------------
# Dynamic dependencies:
oz.ModuleWrap: s.ModuleWrap
oz.ModuleWrap: s.AppName
oz.ModuleWrap: VersionASM
oz.ModuleWrap: Hdr:ListOpts
oz.ModuleWrap: Hdr:Macros
oz.ModuleWrap: Hdr:System
oz.ModuleWrap: Hdr:SWIs
oz.ModuleWrap: Hdr:CPU.Arch
oz.ModuleWrap: Hdr:Machine.<Machine>
oz.ModuleWrap: Hdr:Machine.Machine
oz.ModuleWrap: Hdr:CPU.Generic26
oz.ModuleWrap: Hdr:CPU.Generic32
oz.ModuleWrap: Hdr:IO.GenericIO
oz.ModuleWrap: Hdr:RISCOS
oz.ModuleWrap: Hdr:ModHand
oz.ModuleWrap: Hdr:EnvNumbers
oz.ModuleWrap: Hdr:Proc
oz.ModuleWrap: Hdr:FSNumbers
oz.ModuleWrap: Hdr:NewErrors
oz.ModuleWrap: Hdr:Services
oz.ModuleWrap: Hdr:ResourceFS
oz.ModuleWrap: Hdr:MsgTrans
oz.ModuleWrap: Hdr:Variables
oz.ModuleWrap: Hdr:UpCall
oz.ModuleWrap: s.ResFiles
oz.ModuleWrap: Resources.Sprites
oz.ModuleWrap: Resources.Sprites
oz.ModuleWrap: Resources.Sprites
oz.ModuleWrap: Resources.Sprites
oz.Draw:	c.Draw
oz.Draw:	C:h.kernel
oz.Draw:	C:h.swis
oz.Draw:	C:Global.h.Variables
oz.Draw:	C:Global.h.FileTypes
oz.Draw:	RISCOSLIB:h.os
oz.Draw:	RISCOSLIB:h.akbd
oz.Draw:	RISCOSLIB:h.bbc
oz.Draw:	RISCOSLIB:h.flex
oz.Draw:	RISCOSLIB:h.heap
oz.Draw:	RISCOSLIB:h.menu
oz.Draw:	RISCOSLIB:h.pointer
oz.Draw:	RISCOSLIB:h.sprite
oz.Draw:	RISCOSLIB:h.wimp
oz.Draw:	RISCOSLIB:h.res
oz.Draw:	RISCOSLIB:h.resspr
oz.Draw:	RISCOSLIB:h.wimp
oz.Draw:	RISCOSLIB:h.wimpt
oz.Draw:	RISCOSLIB:h.win
oz.Draw:	RISCOSLIB:h.werr
oz.Draw:	RISCOSLIB:h.baricon
oz.Draw:	RISCOSLIB:h.template
oz.Draw:	RISCOSLIB:h.visdelay
oz.Draw:	RISCOSLIB:h.msgs
oz.Draw:	RISCOSLIB:h.msgtrans
oz.Draw:	RISCOSLIB:h.dboxquery
oz.Draw:	RISCOSLIB:h.xferrecv
oz.Draw:	RISCOSLIB:h.saveas
oz.Draw:	RISCOSLIB:h.xfersend
oz.Draw:	h.bezierarc
oz.Draw:	RISCOSLIB:h.help
oz.Draw:	RISCOSLIB:h.event
oz.Draw:	RISCOSLIB:h.dbox
oz.Draw:	RISCOSLIB:h.drawmod
oz.Draw:	RISCOSLIB:h.jpeg
oz.Draw:	RISCOSLIB:h.dbox
oz.Draw:	RISCOSLIB:h.font
oz.Draw:	h.ftrace
oz.Draw:	h.guard
oz.Draw:	h.Draw
oz.Draw:	C:Global.h.DrawObj
oz.Draw:	h.DrawAction
oz.Draw:	h.DrawChoice
oz.Draw:	h.DrawDispl
oz.Draw:	h.DrawEdit
oz.Draw:	h.DrawEnter
oz.Draw:	h.DrawFileIO
oz.Draw:	h.DrawGrid
oz.Draw:	h.DrawHelp
oz.Draw:	h.DrawMenu
oz.Draw:	h.DrawMenuD
oz.Draw:	h.DrawObject
oz.Draw:	h.DrawPrint
oz.Draw:	h.DrawSelect
oz.Draw:	h.DrawTrans
oz.Draw:	h.DrawUndo
oz.Draw:	h.DrawClipb
oz.Draw:	h.DrawDrag
oz.DrawAction:	c.DrawAction
oz.DrawAction:	RISCOSLIB:h.os
oz.DrawAction:	C:h.kernel
oz.DrawAction:	RISCOSLIB:h.bbc
oz.DrawAction:	RISCOSLIB:h.wimp
oz.DrawAction:	RISCOSLIB:h.sprite
oz.DrawAction:	RISCOSLIB:h.wimpt
oz.DrawAction:	RISCOSLIB:h.drawmod
oz.DrawAction:	RISCOSLIB:h.jpeg
oz.DrawAction:	RISCOSLIB:h.dbox
oz.DrawAction:	RISCOSLIB:h.font
oz.DrawAction:	RISCOSLIB:h.menu
oz.DrawAction:	h.ftrace
oz.DrawAction:	h.guard
oz.DrawAction:	h.Draw
oz.DrawAction:	C:Global.h.DrawObj
oz.DrawAction:	h.DrawAction
oz.DrawAction:	h.DrawDispl
oz.DrawAction:	h.DrawGrid
oz.DrawAction:	h.DrawPrint
oz.DrawAction:	h.DrawMenu
oz.DrawCheck:	c.DrawCheck
oz.DrawCheck:	RISCOSLIB:h.os
oz.DrawCheck:	C:h.kernel
oz.DrawCheck:	RISCOSLIB:h.wimp
oz.DrawCheck:	RISCOSLIB:h.sprite
oz.DrawCheck:	RISCOSLIB:h.sprite
oz.DrawCheck:	RISCOSLIB:h.werr
oz.DrawCheck:	RISCOSLIB:h.xferrecv
oz.DrawCheck:	RISCOSLIB:h.msgs
oz.DrawCheck:	RISCOSLIB:h.drawmod
oz.DrawCheck:	RISCOSLIB:h.jpeg
oz.DrawCheck:	RISCOSLIB:h.dbox
oz.DrawCheck:	RISCOSLIB:h.font
oz.DrawCheck:	h.ftrace
oz.DrawCheck:	h.guard
oz.DrawCheck:	h.Draw
oz.DrawCheck:	C:Global.h.DrawObj
oz.DrawCheck:	h.DrawCheck
oz.DrawCheck:	h.DrawObject
oz.DrawCheck:	h.DrawTextC
oz.DrawCheck:	h.DrawTrans
oz.DrawCheck:	h.DrawFileIO
oz.DrawCheck:	h.DrawDispl
oz.DrawDispl:	c.DrawDispl
oz.DrawDispl:	C:h.swis
oz.DrawDispl:	C:h.kernel
oz.DrawDispl:	RISCOSLIB:h.os
oz.DrawDispl:	RISCOSLIB:h.bbc
oz.DrawDispl:	RISCOSLIB:h.colourtran
oz.DrawDispl:	RISCOSLIB:h.wimp
oz.DrawDispl:	RISCOSLIB:h.sprite
oz.DrawDispl:	RISCOSLIB:h.font
oz.DrawDispl:	RISCOSLIB:h.drawmod
oz.DrawDispl:	RISCOSLIB:h.drawmod
oz.DrawDispl:	RISCOSLIB:h.font
oz.DrawDispl:	RISCOSLIB:h.msgs
oz.DrawDispl:	RISCOSLIB:h.werr
oz.DrawDispl:	RISCOSLIB:h.wimp
oz.DrawDispl:	RISCOSLIB:h.wimpt
oz.DrawDispl:	RISCOSLIB:h.jpeg
oz.DrawDispl:	RISCOSLIB:h.dbox
oz.DrawDispl:	RISCOSLIB:h.font
oz.DrawDispl:	h.ftrace
oz.DrawDispl:	h.guard
oz.DrawDispl:	h.Draw
oz.DrawDispl:	C:Global.h.DrawObj
oz.DrawDispl:	h.DrawAction
oz.DrawDispl:	h.DrawDispl
oz.DrawDispl:	h.DrawEdit
oz.DrawDispl:	h.DrawEnter
oz.DrawDispl:	h.DrawGrid
oz.DrawDispl:	h.DrawObject
oz.DrawDispl:	h.DrawPrint
oz.DrawDispl:	h.DrawSelect
oz.DrawDispl:	h.DrawTextC
oz.DrawEdit:	c.DrawEdit
oz.DrawEdit:	RISCOSLIB:h.os
oz.DrawEdit:	C:h.kernel
oz.DrawEdit:	RISCOSLIB:h.wimp
oz.DrawEdit:	RISCOSLIB:h.sprite
oz.DrawEdit:	RISCOSLIB:h.werr
oz.DrawEdit:	RISCOSLIB:h.dbox
oz.DrawEdit:	RISCOSLIB:h.msgs
oz.DrawEdit:	RISCOSLIB:h.help
oz.DrawEdit:	RISCOSLIB:h.event
oz.DrawEdit:	RISCOSLIB:h.menu
oz.DrawEdit:	RISCOSLIB:h.drawmod
oz.DrawEdit:	RISCOSLIB:h.jpeg
oz.DrawEdit:	RISCOSLIB:h.font
oz.DrawEdit:	h.ftrace
oz.DrawEdit:	h.guard
oz.DrawEdit:	h.Draw
oz.DrawEdit:	C:Global.h.DrawObj
oz.DrawEdit:	h.DrawAction
oz.DrawEdit:	h.DrawDispl
oz.DrawEdit:	h.DrawEdit
oz.DrawEdit:	h.DrawEnter
oz.DrawEdit:	h.DrawGrid
oz.DrawEdit:	h.DrawMenu
oz.DrawEdit:	h.DrawMenuD
oz.DrawEdit:	h.DrawObject
oz.DrawEdit:	h.DrawSelect
oz.DrawEdit:	h.DrawUndo
oz.DrawEnter:	c.DrawEnter
oz.DrawEnter:	C:h.swis
oz.DrawEnter:	C:h.kernel
oz.DrawEnter:	RISCOSLIB:h.os
oz.DrawEnter:	RISCOSLIB:h.bbc
oz.DrawEnter:	RISCOSLIB:h.wimp
oz.DrawEnter:	RISCOSLIB:h.sprite
oz.DrawEnter:	RISCOSLIB:h.wimpt
oz.DrawEnter:	RISCOSLIB:h.win
oz.DrawEnter:	RISCOSLIB:h.event
oz.DrawEnter:	RISCOSLIB:h.menu
oz.DrawEnter:	RISCOSLIB:h.drawmod
oz.DrawEnter:	RISCOSLIB:h.jpeg
oz.DrawEnter:	RISCOSLIB:h.dbox
oz.DrawEnter:	RISCOSLIB:h.font
oz.DrawEnter:	RISCOSLIB:h.resspr
oz.DrawEnter:	RISCOSLIB:h.pointer
oz.DrawEnter:	h.ftrace
oz.DrawEnter:	h.guard
oz.DrawEnter:	h.Draw
oz.DrawEnter:	C:Global.h.DrawObj
oz.DrawEnter:	h.DrawDispl
oz.DrawEnter:	h.DrawEdit
oz.DrawEnter:	h.DrawEnter
oz.DrawEnter:	h.DrawObject
oz.DrawEnter:	h.DrawDrag
oz.DrawFileIO:	c.DrawFileIO
oz.DrawFileIO:	C:h.swis
oz.DrawFileIO:	C:h.kernel
oz.DrawFileIO:	C:Global.h.FileTypes
oz.DrawFileIO:	C:Interface.h.HighFSI
oz.DrawFileIO:	RISCOSLIB:h.os
oz.DrawFileIO:	RISCOSLIB:h.bbc
oz.DrawFileIO:	RISCOSLIB:h.flex
oz.DrawFileIO:	RISCOSLIB:h.wimp
oz.DrawFileIO:	RISCOSLIB:h.sprite
oz.DrawFileIO:	RISCOSLIB:h.wimpt
oz.DrawFileIO:	RISCOSLIB:h.werr
oz.DrawFileIO:	RISCOSLIB:h.msgs
oz.DrawFileIO:	RISCOSLIB:h.visdelay
oz.DrawFileIO:	RISCOSLIB:h.xferrecv
oz.DrawFileIO:	RISCOSLIB:h.xfersend
oz.DrawFileIO:	RISCOSLIB:h.menu
oz.DrawFileIO:	RISCOSLIB:h.drawmod
oz.DrawFileIO:	RISCOSLIB:h.jpeg
oz.DrawFileIO:	RISCOSLIB:h.dbox
oz.DrawFileIO:	RISCOSLIB:h.font
oz.DrawFileIO:	h.ftrace
oz.DrawFileIO:	h.guard
oz.DrawFileIO:	h.Draw
oz.DrawFileIO:	C:Global.h.DrawObj
oz.DrawFileIO:	h.DrawAction
oz.DrawFileIO:	h.DrawCheck
oz.DrawFileIO:	h.DrawDispl
oz.DrawFileIO:	h.DrawEnter
oz.DrawFileIO:	h.DrawFileIO
oz.DrawFileIO:	h.DrawMenu
oz.DrawFileIO:	h.DrawObject
oz.DrawFileIO:	h.DrawPrint
oz.DrawFileIO:	h.DrawSelect
oz.DrawFileIO:	h.DrawTextC
oz.DrawFileIO:	h.DrawUndo
oz.DrawFileIO:	h.DrawClipb
oz.DrawFileIO:	h.DrawGrid
oz.DrawGrid:	c.DrawGrid
oz.DrawGrid:	RISCOSLIB:h.os
oz.DrawGrid:	C:h.kernel
oz.DrawGrid:	RISCOSLIB:h.bbc
oz.DrawGrid:	RISCOSLIB:h.drawmod
oz.DrawGrid:	RISCOSLIB:h.jpeg
oz.DrawGrid:	RISCOSLIB:h.sprite
oz.DrawGrid:	RISCOSLIB:h.dbox
oz.DrawGrid:	RISCOSLIB:h.font
oz.DrawGrid:	RISCOSLIB:h.wimp
oz.DrawGrid:	h.ftrace
oz.DrawGrid:	h.guard
oz.DrawGrid:	h.Draw
oz.DrawGrid:	C:Global.h.DrawObj
oz.DrawGrid:	h.DrawDispl
oz.DrawGrid:	h.DrawGrid
oz.DrawHelp:	c.DrawHelp
oz.DrawHelp:	RISCOSLIB:h.os
oz.DrawHelp:	C:h.kernel
oz.DrawHelp:	RISCOSLIB:h.wimp
oz.DrawHelp:	RISCOSLIB:h.sprite
oz.DrawHelp:	RISCOSLIB:h.wimpt
oz.DrawHelp:	RISCOSLIB:h.msgs
oz.DrawHelp:	RISCOSLIB:h.drawmod
oz.DrawHelp:	RISCOSLIB:h.jpeg
oz.DrawHelp:	RISCOSLIB:h.dbox
oz.DrawHelp:	RISCOSLIB:h.font
oz.DrawHelp:	h.ftrace
oz.DrawHelp:	h.guard
oz.DrawHelp:	h.Draw
oz.DrawHelp:	C:Global.h.DrawObj
oz.DrawHelp:	h.DrawHelp
oz.DrawMenu:	c.DrawMenu
oz.DrawMenu:	C:h.swis
oz.DrawMenu:	C:h.kernel
oz.DrawMenu:	C:Global.h.FileTypes
oz.DrawMenu:	RISCOSLIB:h.akbd
oz.DrawMenu:	RISCOSLIB:h.colourmenu
oz.DrawMenu:	RISCOSLIB:h.menu
oz.DrawMenu:	RISCOSLIB:h.dbox
oz.DrawMenu:	RISCOSLIB:h.dboxtcol
oz.DrawMenu:	RISCOSLIB:h.event
oz.DrawMenu:	RISCOSLIB:h.wimp
oz.DrawMenu:	RISCOSLIB:h.os
oz.DrawMenu:	RISCOSLIB:h.sprite
oz.DrawMenu:	RISCOSLIB:h.flex
oz.DrawMenu:	RISCOSLIB:h.magnify
oz.DrawMenu:	RISCOSLIB:h.msgs
oz.DrawMenu:	RISCOSLIB:h.os
oz.DrawMenu:	RISCOSLIB:h.saveas
oz.DrawMenu:	RISCOSLIB:h.xfersend
oz.DrawMenu:	RISCOSLIB:h.werr
oz.DrawMenu:	RISCOSLIB:h.wimp
oz.DrawMenu:	RISCOSLIB:h.wimpt
oz.DrawMenu:	RISCOSLIB:h.xferrecv
oz.DrawMenu:	RISCOSLIB:h.help
oz.DrawMenu:	RISCOSLIB:h.drawmod
oz.DrawMenu:	RISCOSLIB:h.jpeg
oz.DrawMenu:	RISCOSLIB:h.font
oz.DrawMenu:	h.ftrace
oz.DrawMenu:	h.guard
oz.DrawMenu:	h.Draw
oz.DrawMenu:	C:Global.h.DrawObj
oz.DrawMenu:	h.DrawAction
oz.DrawMenu:	h.DrawDispl
oz.DrawMenu:	h.DrawEdit
oz.DrawMenu:	h.DrawEnter
oz.DrawMenu:	h.DrawFileIO
oz.DrawMenu:	h.DrawGrid
oz.DrawMenu:	h.DrawMenu
oz.DrawMenu:	h.DrawMenuD
oz.DrawMenu:	h.DrawObject
oz.DrawMenu:	h.DrawPrint
oz.DrawMenu:	h.DrawScan
oz.DrawMenu:	h.DrawSelect
oz.DrawMenu:	h.DrawTextC
oz.DrawMenu:	h.DrawTrans
oz.DrawMenu:	h.DrawUndo
oz.DrawMenu:	h.DrawClipb
oz.DrawMenu:	h.DrawDrag
oz.DrawObject:	c.DrawObject
oz.DrawObject:	C:h.swis
oz.DrawObject:	C:h.kernel
oz.DrawObject:	C:Global.h.Countries
oz.DrawObject:	RISCOSLIB:h.bbc
oz.DrawObject:	RISCOSLIB:h.os
oz.DrawObject:	h.bezierarc
oz.DrawObject:	RISCOSLIB:h.flex
oz.DrawObject:	RISCOSLIB:h.font
oz.DrawObject:	RISCOSLIB:h.drawmod
oz.DrawObject:	RISCOSLIB:h.wimp
oz.DrawObject:	RISCOSLIB:h.sprite
oz.DrawObject:	RISCOSLIB:h.msgs
oz.DrawObject:	RISCOSLIB:h.os
oz.DrawObject:	RISCOSLIB:h.sprite
oz.DrawObject:	RISCOSLIB:h.werr
oz.DrawObject:	RISCOSLIB:h.wimp
oz.DrawObject:	RISCOSLIB:h.wimpt
oz.DrawObject:	RISCOSLIB:h.drawmod
oz.DrawObject:	RISCOSLIB:h.jpeg
oz.DrawObject:	RISCOSLIB:h.dbox
oz.DrawObject:	h.ftrace
oz.DrawObject:	h.guard
oz.DrawObject:	h.Draw
oz.DrawObject:	C:Global.h.DrawObj
oz.DrawObject:	h.DrawAction
oz.DrawObject:	h.DrawDispl
oz.DrawObject:	h.DrawEnter
oz.DrawObject:	h.DrawObject
oz.DrawObject:	h.DrawSelect
oz.DrawObject:	h.DrawTextC
oz.DrawObject:	h.DrawTrans
oz.DrawObject:	h.DrawUndo
oz.DrawObject:	h.DrawDrag
oz.DrawPrint:	c.DrawPrint
oz.DrawPrint:	C:h.swis
oz.DrawPrint:	C:h.kernel
oz.DrawPrint:	C:h.swis
oz.DrawPrint:	C:Global.h.FileTypes
oz.DrawPrint:	RISCOSLIB:h.os
oz.DrawPrint:	RISCOSLIB:h.visdelay
oz.DrawPrint:	RISCOSLIB:h.msgs
oz.DrawPrint:	RISCOSLIB:h.werr
oz.DrawPrint:	RISCOSLIB:h.print
oz.DrawPrint:	RISCOSLIB:h.xferrecv
oz.DrawPrint:	RISCOSLIB:h.xfersend
oz.DrawPrint:	RISCOSLIB:h.wimp
oz.DrawPrint:	RISCOSLIB:h.sprite
oz.DrawPrint:	RISCOSLIB:h.drawmod
oz.DrawPrint:	RISCOSLIB:h.jpeg
oz.DrawPrint:	RISCOSLIB:h.dbox
oz.DrawPrint:	RISCOSLIB:h.font
oz.DrawPrint:	h.ftrace
oz.DrawPrint:	h.guard
oz.DrawPrint:	h.Draw
oz.DrawPrint:	C:Global.h.DrawObj
oz.DrawPrint:	h.DrawAction
oz.DrawPrint:	h.DrawDispl
oz.DrawPrint:	h.DrawFileIO
oz.DrawPrint:	h.DrawObject
oz.DrawPrint:	h.DrawPrint
oz.DrawPrint:	h.DrawClipb
oz.DrawScan:	c.DrawScan
oz.DrawScan:	RISCOSLIB:h.os
oz.DrawScan:	C:h.kernel
oz.DrawScan:	RISCOSLIB:h.drawmod
oz.DrawScan:	RISCOSLIB:h.jpeg
oz.DrawScan:	RISCOSLIB:h.sprite
oz.DrawScan:	RISCOSLIB:h.dbox
oz.DrawScan:	RISCOSLIB:h.font
oz.DrawScan:	RISCOSLIB:h.wimp
oz.DrawScan:	h.ftrace
oz.DrawScan:	h.guard
oz.DrawScan:	h.Draw
oz.DrawScan:	C:Global.h.DrawObj
oz.DrawScan:	h.DrawDispl
oz.DrawScan:	h.DrawObject
oz.DrawScan:	h.DrawScan
oz.DrawScan:	h.DrawSelect
oz.DrawScan:	h.DrawUndo
oz.DrawSelect:	c.DrawSelect
oz.DrawSelect:	RISCOSLIB:h.bbc
oz.DrawSelect:	RISCOSLIB:h.os
oz.DrawSelect:	C:h.kernel
oz.DrawSelect:	RISCOSLIB:h.flex
oz.DrawSelect:	RISCOSLIB:h.font
oz.DrawSelect:	RISCOSLIB:h.drawmod
oz.DrawSelect:	RISCOSLIB:h.wimp
oz.DrawSelect:	RISCOSLIB:h.sprite
oz.DrawSelect:	RISCOSLIB:h.msgs
oz.DrawSelect:	RISCOSLIB:h.os
oz.DrawSelect:	RISCOSLIB:h.sprite
oz.DrawSelect:	RISCOSLIB:h.visdelay
oz.DrawSelect:	RISCOSLIB:h.werr
oz.DrawSelect:	RISCOSLIB:h.wimp
oz.DrawSelect:	RISCOSLIB:h.wimpt
oz.DrawSelect:	RISCOSLIB:h.jpeg
oz.DrawSelect:	RISCOSLIB:h.dbox
oz.DrawSelect:	h.ftrace
oz.DrawSelect:	h.guard
oz.DrawSelect:	h.Draw
oz.DrawSelect:	C:Global.h.DrawObj
oz.DrawSelect:	h.DrawAction
oz.DrawSelect:	h.DrawDispl
oz.DrawSelect:	h.DrawEnter
oz.DrawSelect:	h.DrawGrid
oz.DrawSelect:	h.DrawObject
oz.DrawSelect:	h.DrawScan
oz.DrawSelect:	h.DrawSelect
oz.DrawSelect:	h.DrawTextC
oz.DrawSelect:	h.DrawTrans
oz.DrawSelect:	h.DrawUndo
oz.DrawTextC:	c.DrawTextC
oz.DrawTextC:	C:h.swis
oz.DrawTextC:	C:h.kernel
oz.DrawTextC:	RISCOSLIB:h.os
oz.DrawTextC:	RISCOSLIB:h.bbc
oz.DrawTextC:	RISCOSLIB:h.flex
oz.DrawTextC:	RISCOSLIB:h.font
oz.DrawTextC:	RISCOSLIB:h.drawmod
oz.DrawTextC:	RISCOSLIB:h.wimp
oz.DrawTextC:	RISCOSLIB:h.sprite
oz.DrawTextC:	RISCOSLIB:h.wimp
oz.DrawTextC:	RISCOSLIB:h.wimpt
oz.DrawTextC:	RISCOSLIB:h.werr
oz.DrawTextC:	RISCOSLIB:h.colourtran
oz.DrawTextC:	RISCOSLIB:h.msgs
oz.DrawTextC:	RISCOSLIB:h.xferrecv
oz.DrawTextC:	RISCOSLIB:h.drawmod
oz.DrawTextC:	RISCOSLIB:h.jpeg
oz.DrawTextC:	RISCOSLIB:h.dbox
oz.DrawTextC:	RISCOSLIB:h.menu
oz.DrawTextC:	h.ftrace
oz.DrawTextC:	h.guard
oz.DrawTextC:	h.Draw
oz.DrawTextC:	C:Global.h.DrawObj
oz.DrawTextC:	h.DrawAction
oz.DrawTextC:	h.DrawDispl
oz.DrawTextC:	h.DrawObject
oz.DrawTextC:	h.DrawFileIO
oz.DrawTextC:	h.DrawMenu
oz.DrawTextC:	h.DrawSelect
oz.DrawTextC:	h.DrawTextC
oz.DrawTrans:	c.DrawTrans
oz.DrawTrans:	RISCOSLIB:h.os
oz.DrawTrans:	C:h.kernel
oz.DrawTrans:	RISCOSLIB:h.msgs
oz.DrawTrans:	RISCOSLIB:h.sprite
oz.DrawTrans:	RISCOSLIB:h.werr
oz.DrawTrans:	RISCOSLIB:h.visdelay
oz.DrawTrans:	RISCOSLIB:h.drawmod
oz.DrawTrans:	RISCOSLIB:h.jpeg
oz.DrawTrans:	RISCOSLIB:h.dbox
oz.DrawTrans:	RISCOSLIB:h.font
oz.DrawTrans:	RISCOSLIB:h.wimp
oz.DrawTrans:	h.ftrace
oz.DrawTrans:	h.guard
oz.DrawTrans:	h.Draw
oz.DrawTrans:	C:Global.h.DrawObj
oz.DrawTrans:	h.DrawDispl
oz.DrawTrans:	h.DrawGrid
oz.DrawTrans:	h.DrawObject
oz.DrawTrans:	h.DrawScan
oz.DrawTrans:	h.DrawTextC
oz.DrawTrans:	h.DrawTrans
oz.DrawTrans:	h.DrawUndo
oz.DrawUndo:	c.DrawUndo
oz.DrawUndo:	RISCOSLIB:h.os
oz.DrawUndo:	C:h.kernel
oz.DrawUndo:	RISCOSLIB:h.flex
oz.DrawUndo:	RISCOSLIB:h.werr
oz.DrawUndo:	RISCOSLIB:h.drawmod
oz.DrawUndo:	RISCOSLIB:h.jpeg
oz.DrawUndo:	RISCOSLIB:h.sprite
oz.DrawUndo:	RISCOSLIB:h.dbox
oz.DrawUndo:	RISCOSLIB:h.font
oz.DrawUndo:	RISCOSLIB:h.wimp
oz.DrawUndo:	h.ftrace
oz.DrawUndo:	h.guard
oz.DrawUndo:	h.Draw
oz.DrawUndo:	C:Global.h.DrawObj
oz.DrawUndo:	h.DrawDispl
oz.DrawUndo:	h.DrawObject
oz.DrawUndo:	h.DrawSelect
oz.DrawUndo:	h.DrawTrans
oz.DrawUndo:	h.DrawUndo
oz.bezierarc:	c.bezierarc
oz.bezierarc:	RISCOSLIB:h.os
oz.bezierarc:	C:h.kernel
oz.bezierarc:	h.bezierarc
oz.DrawClipb:	c.DrawClipb
oz.DrawClipb:	C:Global.h.FileTypes
oz.DrawClipb:	C:Global.h.Sprite
oz.DrawClipb:	C:Interface.h.HighFSI
oz.DrawClipb:	RISCOSLIB:h.event
oz.DrawClipb:	RISCOSLIB:h.menu
oz.DrawClipb:	RISCOSLIB:h.wimp
oz.DrawClipb:	RISCOSLIB:h.os
oz.DrawClipb:	C:h.kernel
oz.DrawClipb:	RISCOSLIB:h.sprite
oz.DrawClipb:	RISCOSLIB:h.flex
oz.DrawClipb:	RISCOSLIB:h.msgs
oz.DrawClipb:	RISCOSLIB:h.os
oz.DrawClipb:	RISCOSLIB:h.werr
oz.DrawClipb:	RISCOSLIB:h.wimp
oz.DrawClipb:	RISCOSLIB:h.wimpt
oz.DrawClipb:	RISCOSLIB:h.xferrecv
oz.DrawClipb:	RISCOSLIB:h.help
oz.DrawClipb:	RISCOSLIB:h.dbox
oz.DrawClipb:	RISCOSLIB:h.drawmod
oz.DrawClipb:	RISCOSLIB:h.jpeg
oz.DrawClipb:	C:h.swis
oz.DrawClipb:	h.ftrace
oz.DrawClipb:	h.guard
oz.DrawClipb:	h.Draw
oz.DrawClipb:	C:Global.h.DrawObj
oz.DrawClipb:	h.DrawDispl
oz.DrawClipb:	h.DrawEdit
oz.DrawClipb:	h.DrawEnter
oz.DrawClipb:	h.DrawFileIO
oz.DrawClipb:	h.DrawGrid
oz.DrawClipb:	h.DrawMenu
oz.DrawClipb:	h.DrawMenuD
oz.DrawClipb:	h.DrawObject
oz.DrawClipb:	h.DrawSelect
oz.DrawClipb:	h.DrawTextC
oz.DrawClipb:	h.DrawPrint
oz.DrawClipb:	h.DrawClipb
oz.DrawDrag:	c.DrawDrag
oz.DrawDrag:	C:Global.h.Variables
oz.DrawDrag:	C:Global.h.FileTypes
oz.DrawDrag:	C:Global.h.Sprite
oz.DrawDrag:	RISCOSLIB:h.os
oz.DrawDrag:	C:h.kernel
oz.DrawDrag:	RISCOSLIB:h.akbd
oz.DrawDrag:	RISCOSLIB:h.alarm
oz.DrawDrag:	RISCOSLIB:h.bbc
oz.DrawDrag:	RISCOSLIB:h.flex
oz.DrawDrag:	RISCOSLIB:h.pointer
oz.DrawDrag:	RISCOSLIB:h.sprite
oz.DrawDrag:	RISCOSLIB:h.wimp
oz.DrawDrag:	RISCOSLIB:h.wimp
oz.DrawDrag:	RISCOSLIB:h.wimpt
oz.DrawDrag:	RISCOSLIB:h.msgs
oz.DrawDrag:	RISCOSLIB:h.xferrecv
oz.DrawDrag:	RISCOSLIB:h.help
oz.DrawDrag:	RISCOSLIB:h.event
oz.DrawDrag:	RISCOSLIB:h.menu
oz.DrawDrag:	RISCOSLIB:h.dbox
oz.DrawDrag:	RISCOSLIB:h.jpeg
oz.DrawDrag:	RISCOSLIB:h.font
oz.DrawDrag:	RISCOSLIB:h.drawmod
oz.DrawDrag:	h.ftrace
oz.DrawDrag:	h.guard
oz.DrawDrag:	h.Draw
oz.DrawDrag:	C:Global.h.DrawObj
oz.DrawDrag:	h.DrawDispl
oz.DrawDrag:	h.DrawEnter
oz.DrawDrag:	h.DrawFileIO
oz.DrawDrag:	h.DrawGrid
oz.DrawDrag:	h.DrawObject
oz.DrawDrag:	h.DrawSelect
oz.DrawDrag:	h.DrawTrans
oz.DrawDrag:	h.DrawPrint
oz.DrawDrag:	h.DrawClipb
oz.DrawDrag:	h.DrawDrag
oz.DrawChoice:	c.DrawChoice
oz.DrawChoice:	C:Global.h.FileTypes
oz.DrawChoice:	C:Interface.h.HighFSI
oz.DrawChoice:	RISCOSLIB:h.msgs
oz.DrawChoice:	RISCOSLIB:h.os
oz.DrawChoice:	C:h.kernel
oz.DrawChoice:	RISCOSLIB:h.wimp
oz.DrawChoice:	RISCOSLIB:h.sprite
oz.DrawChoice:	RISCOSLIB:h.wimpt
oz.DrawChoice:	RISCOSLIB:h.help
oz.DrawChoice:	RISCOSLIB:h.event
oz.DrawChoice:	RISCOSLIB:h.menu
oz.DrawChoice:	RISCOSLIB:h.dbox
oz.DrawChoice:	RISCOSLIB:h.werr
oz.DrawChoice:	RISCOSLIB:h.drawmod
oz.DrawChoice:	RISCOSLIB:h.jpeg
oz.DrawChoice:	RISCOSLIB:h.xferrecv
oz.DrawChoice:	h.ftrace
oz.DrawChoice:	h.guard
oz.DrawChoice:	h.Draw
oz.DrawChoice:	C:Global.h.DrawObj
oz.DrawChoice:	h.DrawMenu
oz.DrawChoice:	h.DrawMenuD
oz.DrawChoice:	h.DrawChoice
oz.DrawChoice:	h.DrawFileIO
