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
# Makefile for Paint
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
COMPONENT  = Paint
APP        = !Paint
INSTAPP    = ${INSTDIR}.${APP}
MODULE     = rm.!Paint
ROM_MODULE = aof.Paint
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
FILES = \
 ${RDIR}.!Boot\
 ${LDIR}.!Help\
 ${LDIR}.!Run\
 ${MSGS} \
 ${LDIR}.Sprites\
 ${LDIR}.Templates\
 abs.!RunImage

FILESD = \
 ${RDIR}.!Boot\
 ${LDIR}.!Help\
 ${LDIR}.!Run\
 ${MSGS} \
 ${LDIR}.Sprites\
 ${LDIR}.Templates\
 abs.!RunImageD

RESFILES =

DFILES = \
 debug.${APP}.!Boot\
 debug.${APP}.!Help\
 debug.${APP}.!Run\
 debug.${APP}.!RunImage\
 debug.${APP}.Messages\
 debug.${APP}.Sprites\
 debug.${APP}.Templates

OBJS      = o.colourpanel o.colours o.Export o.main o.menus o.psprite o.sprwindow o.tools o.toolwindow\
            o.AltRename o.PaintLib o.CnPDrag o.Clipboard o.Drawfile o.PaintChoice o.BrushTransFunc
OBJSZ     = oz.colourpanel oz.colours oz.Export oz.main oz.menus oz.psprite oz.sprwindow oz.tools\
            oz.toolwindow oz.AltRename oz.PaintLib oz.CnPDrag oz.Clipboard oz.Drawfile oz.PaintChoice oz.BrushTransFunc
OBJSD     = od.colourpanel od.colours od.Export od.ftrace od.guard od.main od.menus\
            od.psprite od.sprwindow od.tools od.toolwindow o.m\
            od.AltRename od.PaintLib od.CnPDrag od.Clipboard od.Drawfile od.PaintChoice od.BrushTransFunc

#
# Rule patterns
#
.SUFFIXES: .oz .od .asm
.c.o:;    ${CC} ${CFLAGS} -c ${C_NO_FNAMES} $<
.c.oz:;   ${CC} ${CFLAGS} -c ${C_NO_FNAMES} ${C_MODULE} ${C_NO_STKCHK} -o $@ $<
.c.od:;   ${CC} ${CFLAGS} -c -DTRACE=1 -g -o $@ $<
.asm.o:;  ${AS} ${ASFLAGS} $< $@
.asm.oz:; ${AS} ${ASFLAGS} $< $@
.asm.od:; ${AS} ${ASFLAGS} $< $@
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
	${CP} LocalRes:DiscSprites.Sprites   ${INSTDIR}.${USERIF}.Paint   ${CPFLAGS}
	${CP} LocalRes:DiscSprites.Sprites22 ${INSTDIR}.${USERIF}.Paint22 ${CPFLAGS}
	@${ECHO} ${COMPONENT}: disc theme resources installed
else
install: ${FILES}
	${MKDIR} ${INSTAPP}
	${CP} ${RDIR}.!Boot      ${INSTAPP}.!Boot      ${CPFLAGS}
	${CP} ${LDIR}.!Help      ${INSTAPP}.!Help      ${CPFLAGS}
	${CP} ${LDIR}.!Run       ${INSTAPP}.!Run       ${CPFLAGS}
	${CP} abs.!RunImage      ${INSTAPP}.!RunImage  ${CPFLAGS}
	${CP} ${MSGS}            ${INSTAPP}.Messages   ${CPFLAGS}
	${CP} ${LDIR}.Sprites    ${INSTAPP}.Sprites    ${CPFLAGS}
	${CP} ${LDIR}.Templates  ${INSTAPP}.Templates  ${CPFLAGS}
	@${ECHO} ${COMPONENT}: Application installed (Disc)
endif

installd: ${FILESD}
	${CP} ${RDIR}.!Boot      ${INSTAPP}.!Boot      ${CPFLAGS}
	${CP} ${LDIR}.!Help      ${INSTAPP}.!Help      ${CPFLAGS}
	${CP} ${LDIR}.!Run       ${INSTAPP}.!Run       ${CPFLAGS}
	${CP} abs.!RunImageD     ${INSTAPP}.!RunImage  ${CPFLAGS}
	${CP} ${MSGS}            ${INSTAPP}.Messages   ${CPFLAGS}
	${CP} ${LDIR}.Sprites    ${INSTAPP}.Sprites    ${CPFLAGS}
	${CP} ${LDIR}.Templates  ${INSTAPP}.Templates  ${CPFLAGS}
	@${ECHO} ${COMPONENT}: Debug application installed (Disc)

install_rom: ${ROM_MODULE}
	${CP} ${ROM_MODULE} ${INSTDIR}.${COMPONENT} ${CPFLAGS}
	@${ECHO} ${COMPONENT}: Module installed (ROM)

resources: ${MSGS}
	${MKDIR} ${RESDIR}
	${MKDIR} ${RESAPP}
	${CP} ${RDIR}.!Boot     ${RESAPP}.!Boot  ${CPFLAGS}
	${CP} ${LDIR}.!Help     ${RESAPP}.!Help  ${CPFLAGS}
	${CP} ${RDIR}.ROM.!Run  ${RESAPP}.!Run   ${CPFLAGS}
	|
	${CP} ${MSGS}           ${RESDIR}.Messages   ${CPFLAGS}
	${CP} ${LDIR}.Sprites   ${RESDIR}.Sprites   ${CPFLAGS}
	${CP} ${LDIR}.Templates ${RESDIR}.Templates ${CPFLAGS}
	@${ECHO} ${COMPONENT}: resource files copied to Messages module

clean:
	${XWIPE} o.* ${WFLAGS}
	${XWIPE} oz.* ${WFLAGS}
	${XWIPE} od.* ${WFLAGS}
	${XWIPE} s.* ${WFLAGS}
	${XWIPE} linked.* ${WFLAGS}
	${XWIPE} map.* ${WFLAGS}
	${XWIPE} debug.!Paint.* ${WFLAGS}
	${XWIPE} !Paint.* ${WFLAGS}
	${RM} abs.!RunImage
	${RM} abs.!RunImageD
	${RM} ${ROM_MODULE}
	${RM} ${MSGS}
	${RM} ${MODULE}
	@${ECHO} ${COMPONENT}: cleaned

#
# Static dependencies:
#
abs.!RunImage: ${OBJS} ${RLIB} ${CLIB}
	${LD} -o $@ ${OBJS} ${RLIB} ${CLIB}
	${SQZ} ${SQZFLAGS} $@

${MODULE}: oz.ModuleWrap ${OBJSZ} ${RLIB} ${CLIB}
	${LD} -o $@ -module oz.ModuleWrap ${OBJSZ} ${RLIB} ${CLIB}

${ROM_MODULE}: oz.ModuleWrap ${OBJSZ} ${ROMSTUBS}
	${LD} -o $@ -aof oz.ModuleWrap ${OBJSZ} ${ROMSTUBS}

# final link for ROM Image (using given base address)
rom_link:
	${LD} -o linked.${COMPONENT} -rmf -base ${ADDRESS} ${ROM_MODULE} ${ABSSYM} \
              -map > map.${COMPONENT}
	${CP} linked.${COMPONENT} ${LINKDIR}.${COMPONENT} ${CPFLAGS}
	@${ECHO} ${COMPONENT}: rom_link complete

oz.ModuleWrap: s.ModuleWrap ${MSGS} s.AppName ${RESFILES} s.Resfiles
	${AS} ${AFLAGS} s.ModuleWrap $@

s.ModuleWrap: ${WRAPPER}
	${CP} ${WRAPPER} $@ ${CPFLAGS}

${MSGS}: ${LDIR}.Messages VersionNum
	${MSGVERSION} ${LDIR}.Messages > $@

s.ResFiles: asm.ResFiles
	${CP} asm.ResFiles $@ ${CPFLAGS}

s.AppName: asm.AppName
	${CP} asm.AppName $@ ${CPFLAGS}

BBETYPE = paint
bbe-paint: bbe-generic
	BBE_Export_Dir Resources

#---------------------------------------------------------------------------
# debugging version:
#
abs.!RunImageD: ${OBJSD} ${RLIB} ${CLIB}
	${LD} -d -o $@ ${OBJSD} ${RLIB} ${CLIB}

debug.${APP}.!Boot: ${RDIR}.!Boot
	${CP} ${RDIR}.!Boot $@ ${CPFLAGS}

debug.${APP}.!Help: ${LDIR}.!Help
	${CP} ${LDIR}.!Help $@ ${CPFLAGS}

debug.${APP}.!Run: ${LDIR}.!Run
	${CP} ${LDIR}.!Run $@ ${CPFLAGS}

debug.${APP}.Messages: ${LDIR}.Messages
	${CP} ${LDIR}.Messages $@ ${CPFLAGS}

debug.${APP}.Sprites: ${LDIR}.Sprites
	${CP} ${LDIR}.Sprites $@ ${CPFLAGS}

debug.${APP}.Templates: ${LDIR}.Templates
	${CP} ${LDIR}.Templates $@ ${CPFLAGS}

#---------------------------------------------------------------------------
# Dynamic dependencies:
oz.colourpanel:	c.colourpanel
oz.colourpanel:	C:h.swis
oz.colourpanel:	C:h.kernel
oz.colourpanel:	RISCOSLIB:h.bbc
oz.colourpanel:	RISCOSLIB:h.os
oz.colourpanel:	RISCOSLIB:h.werr
oz.colourpanel:	RISCOSLIB:h.wimpt
oz.colourpanel:	RISCOSLIB:h.wimp
oz.colourpanel:	RISCOSLIB:h.sprite
oz.colourpanel:	h.ftrace
oz.colourpanel:	h.m
oz.colourpanel:	h.ftrace
oz.colourpanel:	h.main
oz.colourpanel:	RISCOSLIB:h.wimp
oz.colourpanel:	RISCOSLIB:h.sprite
oz.colourpanel:	RISCOSLIB:h.win
oz.colourpanel:	RISCOSLIB:h.msgs
oz.colourpanel:	RISCOSLIB:h.colourpick
oz.colourpanel:	RISCOSLIB:h.coords
oz.colourpanel:	h.ftrace
oz.colourpanel:	h.PSprite
oz.colourpanel:	h.SprWindow
oz.colourpanel:	h.ToolWindow
oz.colourpanel:	h.Colours
oz.colourpanel:	h.ColourPanel
oz.colours:	c.colours
oz.colours:	C:h.swis
oz.colours:	C:h.kernel
oz.colours:	C:Global.h.VduExt
oz.colours:	RISCOSLIB:h.bbc
oz.colours:	RISCOSLIB:h.os
oz.colours:	RISCOSLIB:h.wimpt
oz.colours:	RISCOSLIB:h.wimp
oz.colours:	RISCOSLIB:h.sprite
oz.colours:	h.ftrace
oz.colours:	h.m
oz.colours:	h.ftrace
oz.colours:	h.main
oz.colours:	RISCOSLIB:h.wimp
oz.colours:	RISCOSLIB:h.sprite
oz.colours:	RISCOSLIB:h.win
oz.colours:	RISCOSLIB:h.msgs
oz.colours:	RISCOSLIB:h.colourpick
oz.colours:	RISCOSLIB:h.coords
oz.colours:	h.ftrace
oz.colours:	h.Menus
oz.colours:	RISCOSLIB:h.menu
oz.colours:	RISCOSLIB:h.print
oz.colours:	h.PSprite
oz.colours:	h.SprWindow
oz.colours:	h.ToolWindow
oz.colours:	h.Colours
oz.colours:	h.ColourPanel
oz.colours:	h.PaintLib
oz.colours:	RISCOSLIB:h.wimp
oz.Export:	c.Export
oz.Export:	C:h.swis
oz.Export:	C:h.kernel
oz.Export:	C:Global.h.Sprite
oz.Export:	C:Global.h.FileTypes
oz.Export:	C:Interface.h.HighFSI
oz.Export:	RISCOSLIB:h.flex
oz.Export:	RISCOSLIB:h.event
oz.Export:	RISCOSLIB:h.menu
oz.Export:	RISCOSLIB:h.wimp
oz.Export:	RISCOSLIB:h.os
oz.Export:	RISCOSLIB:h.sprite
oz.Export:	RISCOSLIB:h.werr
oz.Export:	RISCOSLIB:h.wimpt
oz.Export:	RISCOSLIB:h.template
oz.Export:	RISCOSLIB:h.xfersend
oz.Export:	RISCOSLIB:h.bbc
oz.Export:	RISCOSLIB:h.help
oz.Export:	RISCOSLIB:h.dbox
oz.Export:	RISCOSLIB:h.visdelay
oz.Export:	h.main
oz.Export:	RISCOSLIB:h.wimp
oz.Export:	RISCOSLIB:h.sprite
oz.Export:	RISCOSLIB:h.win
oz.Export:	RISCOSLIB:h.msgs
oz.Export:	RISCOSLIB:h.colourpick
oz.Export:	RISCOSLIB:h.coords
oz.Export:	h.ftrace
oz.Export:	h.menus
oz.Export:	RISCOSLIB:h.menu
oz.Export:	RISCOSLIB:h.print
oz.Export:	h.psprite
oz.Export:	h.Export
oz.Export:	C:Interface.h.CompressPNG
oz.main:	c.main
oz.main:	C:h.kernel
oz.main:	C:h.swis
oz.main:	C:Global.h.CMOS
oz.main:	C:Global.h.FileTypes
oz.main:	C:Global.h.OsBytes
oz.main:	C:Global.h.VduExt
oz.main:	C:Global.h.Sprite
oz.main:	RISCOSLIB:h.pointer
oz.main:	RISCOSLIB:h.sprite
oz.main:	RISCOSLIB:h.os
oz.main:	RISCOSLIB:h.wimp
oz.main:	RISCOSLIB:h.akbd
oz.main:	RISCOSLIB:h.alarm
oz.main:	RISCOSLIB:h.baricon
oz.main:	RISCOSLIB:h.bbc
oz.main:	RISCOSLIB:h.colourtran
oz.main:	RISCOSLIB:h.font
oz.main:	RISCOSLIB:h.drawmod
oz.main:	RISCOSLIB:h.dboxquery
oz.main:	RISCOSLIB:h.heap
oz.main:	RISCOSLIB:h.help
oz.main:	RISCOSLIB:h.event
oz.main:	RISCOSLIB:h.menu
oz.main:	RISCOSLIB:h.dbox
oz.main:	RISCOSLIB:h.flex
oz.main:	RISCOSLIB:h.msgs
oz.main:	RISCOSLIB:h.msgtrans
oz.main:	RISCOSLIB:h.res
oz.main:	RISCOSLIB:h.resspr
oz.main:	RISCOSLIB:h.template
oz.main:	RISCOSLIB:h.visdelay
oz.main:	RISCOSLIB:h.werr
oz.main:	RISCOSLIB:h.wimp
oz.main:	RISCOSLIB:h.wimpt
oz.main:	RISCOSLIB:h.xferrecv
oz.main:	RISCOSLIB:h.jpeg
oz.main:	RISCOSLIB:h.xfersend
oz.main:	h.ftrace
oz.main:	h.m
oz.main:	h.ftrace
oz.main:	h.main
oz.main:	RISCOSLIB:h.wimp
oz.main:	RISCOSLIB:h.sprite
oz.main:	RISCOSLIB:h.win
oz.main:	RISCOSLIB:h.msgs
oz.main:	RISCOSLIB:h.colourpick
oz.main:	RISCOSLIB:h.coords
oz.main:	h.ftrace
oz.main:	h.Menus
oz.main:	RISCOSLIB:h.menu
oz.main:	RISCOSLIB:h.print
oz.main:	h.MenuD
oz.main:	h.PSprite
oz.main:	h.SprWindow
oz.main:	h.ToolWindow
oz.main:	h.Tools
oz.main:	h.Colours
oz.main:	h.ColourPanel
oz.main:	h.AltRename
oz.main:	h.main
oz.main:	RISCOSLIB:h.wimp
oz.main:	h.PaintLib
oz.main:	RISCOSLIB:h.wimp
oz.main:	h.PaintChoice
oz.main:	h.CnPDrag
oz.main:	h.Clipboard
oz.menus:	c.menus
oz.menus:	C:h.swis
oz.menus:	C:h.kernel
oz.menus:	C:Global.h.FileTypes
oz.menus:	C:Global.h.VduExt
oz.menus:	C:Global.h.Sprite
oz.menus:	RISCOSLIB:h.bbc
oz.menus:	RISCOSLIB:h.os
oz.menus:	RISCOSLIB:h.colourmenu
oz.menus:	RISCOSLIB:h.menu
oz.menus:	RISCOSLIB:h.colourtran
oz.menus:	RISCOSLIB:h.wimp
oz.menus:	RISCOSLIB:h.sprite
oz.menus:	RISCOSLIB:h.font
oz.menus:	RISCOSLIB:h.drawmod
oz.menus:	RISCOSLIB:h.dbox
oz.menus:	RISCOSLIB:h.dboxquery
oz.menus:	RISCOSLIB:h.dboxtcol
oz.menus:	RISCOSLIB:h.flex
oz.menus:	RISCOSLIB:h.help
oz.menus:	RISCOSLIB:h.event
oz.menus:	RISCOSLIB:h.magnify
oz.menus:	RISCOSLIB:h.msgtrans
oz.menus:	RISCOSLIB:h.saveas
oz.menus:	RISCOSLIB:h.xfersend
oz.menus:	RISCOSLIB:h.visdelay
oz.menus:	RISCOSLIB:h.werr
oz.menus:	RISCOSLIB:h.wimpt
oz.menus:	RISCOSLIB:h.xfersend
oz.menus:	h.m
oz.menus:	h.ftrace
oz.menus:	h.ftrace
oz.menus:	h.main
oz.menus:	RISCOSLIB:h.wimp
oz.menus:	RISCOSLIB:h.sprite
oz.menus:	RISCOSLIB:h.win
oz.menus:	RISCOSLIB:h.msgs
oz.menus:	RISCOSLIB:h.colourpick
oz.menus:	RISCOSLIB:h.coords
oz.menus:	h.ftrace
oz.menus:	h.PSprite
oz.menus:	h.PaintChoice
oz.menus:	h.Menus
oz.menus:	RISCOSLIB:h.menu
oz.menus:	RISCOSLIB:h.print
oz.menus:	h.SprWindow
oz.menus:	h.ToolWindow
oz.menus:	h.Tools
oz.menus:	h.Colours
oz.menus:	h.MenuD
oz.menus:	RISCOSLIB:h.trace
oz.menus:	h.PaintLib
oz.menus:	RISCOSLIB:h.wimp
oz.menus:	h.AltRename
oz.menus:	h.main
oz.menus:	RISCOSLIB:h.wimp
oz.menus:	h.Clipboard
oz.menus:	h.Export
oz.menus:	C:Interface.h.CompressPNG
oz.psprite:	c.psprite
oz.psprite:	C:h.swis
oz.psprite:	C:h.kernel
oz.psprite:	C:Global.h.VduExt
oz.psprite:	C:Global.h.Sprite
oz.psprite:	RISCOSLIB:h.bbc
oz.psprite:	RISCOSLIB:h.os
oz.psprite:	RISCOSLIB:h.colourtran
oz.psprite:	RISCOSLIB:h.wimp
oz.psprite:	RISCOSLIB:h.sprite
oz.psprite:	RISCOSLIB:h.font
oz.psprite:	RISCOSLIB:h.drawmod
oz.psprite:	RISCOSLIB:h.dbox
oz.psprite:	RISCOSLIB:h.flex
oz.psprite:	RISCOSLIB:h.help
oz.psprite:	RISCOSLIB:h.event
oz.psprite:	RISCOSLIB:h.menu
oz.psprite:	RISCOSLIB:h.resspr
oz.psprite:	RISCOSLIB:h.visdelay
oz.psprite:	RISCOSLIB:h.werr
oz.psprite:	RISCOSLIB:h.wimp
oz.psprite:	RISCOSLIB:h.wimpt
oz.psprite:	h.ftrace
oz.psprite:	h.m
oz.psprite:	h.ftrace
oz.psprite:	h.main
oz.psprite:	RISCOSLIB:h.wimp
oz.psprite:	RISCOSLIB:h.sprite
oz.psprite:	RISCOSLIB:h.win
oz.psprite:	RISCOSLIB:h.msgs
oz.psprite:	RISCOSLIB:h.colourpick
oz.psprite:	RISCOSLIB:h.coords
oz.psprite:	h.ftrace
oz.psprite:	h.SprWindow
oz.psprite:	h.PSprite
oz.psprite:	h.PaintLib
oz.psprite:	RISCOSLIB:h.wimp
oz.psprite:	h.ToolWindow
oz.psprite:	h.Tools
oz.psprite:	h.ColourPanel
oz.psprite:	h.Colours
oz.psprite:	h.Menus
oz.psprite:	RISCOSLIB:h.menu
oz.psprite:	RISCOSLIB:h.print
oz.psprite:	h.MenuD
oz.sprwindow:	c.sprwindow
oz.sprwindow:	C:h.swis
oz.sprwindow:	C:h.kernel
oz.sprwindow:	C:Global.h.FileTypes
oz.sprwindow:	C:Global.h.OsBytes
oz.sprwindow:	RISCOSLIB:h.akbd
oz.sprwindow:	RISCOSLIB:h.bbc
oz.sprwindow:	RISCOSLIB:h.os
oz.sprwindow:	RISCOSLIB:h.help
oz.sprwindow:	RISCOSLIB:h.wimp
oz.sprwindow:	RISCOSLIB:h.sprite
oz.sprwindow:	RISCOSLIB:h.event
oz.sprwindow:	RISCOSLIB:h.menu
oz.sprwindow:	RISCOSLIB:h.dbox
oz.sprwindow:	RISCOSLIB:h.xferrecv
oz.sprwindow:	RISCOSLIB:h.werr
oz.sprwindow:	RISCOSLIB:h.wimpt
oz.sprwindow:	h.ftrace
oz.sprwindow:	h.m
oz.sprwindow:	h.ftrace
oz.sprwindow:	h.main
oz.sprwindow:	RISCOSLIB:h.wimp
oz.sprwindow:	RISCOSLIB:h.sprite
oz.sprwindow:	RISCOSLIB:h.win
oz.sprwindow:	RISCOSLIB:h.msgs
oz.sprwindow:	RISCOSLIB:h.colourpick
oz.sprwindow:	RISCOSLIB:h.coords
oz.sprwindow:	h.ftrace
oz.sprwindow:	h.Menus
oz.sprwindow:	RISCOSLIB:h.menu
oz.sprwindow:	RISCOSLIB:h.print
oz.sprwindow:	h.MenuD
oz.sprwindow:	h.PSprite
oz.sprwindow:	h.SprWindow
oz.sprwindow:	h.ToolWindow
oz.sprwindow:	h.Tools
oz.sprwindow:	h.Colours
oz.sprwindow:	h.ColourPanel
oz.sprwindow:	h.PaintLib
oz.sprwindow:	RISCOSLIB:h.wimp
oz.tools:	c.tools
oz.tools:	C:h.swis
oz.tools:	C:h.kernel
oz.tools:	C:Global.h.VduExt
oz.tools:	C:Global.h.OsBytes
oz.tools:	C:Global.h.Sprite
oz.tools:	RISCOSLIB:h.bbc
oz.tools:	RISCOSLIB:h.os
oz.tools:	RISCOSLIB:h.colourtran
oz.tools:	RISCOSLIB:h.wimp
oz.tools:	RISCOSLIB:h.sprite
oz.tools:	RISCOSLIB:h.font
oz.tools:	RISCOSLIB:h.drawmod
oz.tools:	RISCOSLIB:h.flex
oz.tools:	RISCOSLIB:h.font
oz.tools:	RISCOSLIB:h.visdelay
oz.tools:	RISCOSLIB:h.werr
oz.tools:	RISCOSLIB:h.wimpt
oz.tools:	h.ftrace
oz.tools:	h.m
oz.tools:	h.ftrace
oz.tools:	h.main
oz.tools:	RISCOSLIB:h.wimp
oz.tools:	RISCOSLIB:h.sprite
oz.tools:	RISCOSLIB:h.win
oz.tools:	RISCOSLIB:h.msgs
oz.tools:	RISCOSLIB:h.colourpick
oz.tools:	RISCOSLIB:h.coords
oz.tools:	h.ftrace
oz.tools:	h.PSprite
oz.tools:	h.SprWindow
oz.tools:	h.ToolWindow
oz.tools:	h.Tools
oz.tools:	h.Colours
oz.tools:	h.Menus
oz.tools:	RISCOSLIB:h.menu
oz.tools:	RISCOSLIB:h.print
oz.tools:	h.guard
oz.tools:	h.PaintLib
oz.tools:	RISCOSLIB:h.wimp
oz.toolwindow:	c.toolwindow
oz.toolwindow:	C:h.swis
oz.toolwindow:	C:h.kernel
oz.toolwindow:	C:Global.h.FileTypes
oz.toolwindow:	C:Global.h.Sprite
oz.toolwindow:	RISCOSLIB:h.bbc
oz.toolwindow:	RISCOSLIB:h.os
oz.toolwindow:	RISCOSLIB:h.colourtran
oz.toolwindow:	RISCOSLIB:h.wimp
oz.toolwindow:	RISCOSLIB:h.sprite
oz.toolwindow:	RISCOSLIB:h.font
oz.toolwindow:	RISCOSLIB:h.drawmod
oz.toolwindow:	RISCOSLIB:h.dbox
oz.toolwindow:	RISCOSLIB:h.dboxquery
oz.toolwindow:	RISCOSLIB:h.font
oz.toolwindow:	RISCOSLIB:h.help
oz.toolwindow:	RISCOSLIB:h.event
oz.toolwindow:	RISCOSLIB:h.menu
oz.toolwindow:	RISCOSLIB:h.werr
oz.toolwindow:	RISCOSLIB:h.wimpt
oz.toolwindow:	RISCOSLIB:h.wimp
oz.toolwindow:	RISCOSLIB:h.template
oz.toolwindow:	RISCOSLIB:h.event
oz.toolwindow:	RISCOSLIB:h.visdelay
oz.toolwindow:	RISCOSLIB:h.xferrecv
oz.toolwindow:	RISCOSLIB:h.jpeg
oz.toolwindow:	RISCOSLIB:h.xfersend
oz.toolwindow:	h.main
oz.toolwindow:	RISCOSLIB:h.wimp
oz.toolwindow:	RISCOSLIB:h.sprite
oz.toolwindow:	RISCOSLIB:h.win
oz.toolwindow:	RISCOSLIB:h.msgs
oz.toolwindow:	RISCOSLIB:h.colourpick
oz.toolwindow:	RISCOSLIB:h.coords
oz.toolwindow:	h.ftrace
oz.toolwindow:	h.Menus
oz.toolwindow:	RISCOSLIB:h.menu
oz.toolwindow:	RISCOSLIB:h.print
oz.toolwindow:	h.PSprite
oz.toolwindow:	h.SprWindow
oz.toolwindow:	h.ToolWindow
oz.toolwindow:	h.Tools
oz.toolwindow:	h.ftrace
oz.toolwindow:	h.guard
oz.toolwindow:	h.CnPDrag
oz.toolwindow:	h.Colours
oz.AltRename:	c.AltRename
oz.AltRename:	C:h.swis
oz.AltRename:	C:h.kernel
oz.AltRename:	RISCOSLIB:h.os
oz.AltRename:	RISCOSLIB:h.bbc
oz.AltRename:	RISCOSLIB:h.wimpt
oz.AltRename:	RISCOSLIB:h.wimp
oz.AltRename:	RISCOSLIB:h.sprite
oz.AltRename:	RISCOSLIB:h.werr
oz.AltRename:	RISCOSLIB:h.sprite
oz.AltRename:	h.AltRename
oz.AltRename:	h.main
oz.AltRename:	RISCOSLIB:h.wimp
oz.AltRename:	RISCOSLIB:h.sprite
oz.AltRename:	RISCOSLIB:h.win
oz.AltRename:	RISCOSLIB:h.msgs
oz.AltRename:	RISCOSLIB:h.colourpick
oz.AltRename:	RISCOSLIB:h.coords
oz.AltRename:	h.ftrace
oz.AltRename:	RISCOSLIB:h.wimp
oz.AltRename:	h.PSprite
oz.AltRename:	h.PaintLib
oz.AltRename:	RISCOSLIB:h.wimp
oz.AltRename:	h.main
oz.AltRename:	h.SprWindow
oz.AltRename:	h.ToolWindow
oz.AltRename:	RISCOSLIB:h.akbd
oz.PaintLib:	c.PaintLib
oz.PaintLib:	h.PaintLib
oz.PaintLib:	RISCOSLIB:h.wimp
oz.PaintLib:	RISCOSLIB:h.os
oz.PaintLib:	C:h.kernel
oz.PaintLib:	RISCOSLIB:h.sprite
oz.CnPDrag:	c.CnPDrag
oz.CnPDrag:	C:Global.h.Variables
oz.CnPDrag:	C:Global.h.FileTypes
oz.CnPDrag:	C:Global.h.OsBytes
oz.CnPDrag:	C:Global.h.CMOS
oz.CnPDrag:	C:Global.h.Sprite
oz.CnPDrag:	RISCOSLIB:h.os
oz.CnPDrag:	C:h.kernel
oz.CnPDrag:	RISCOSLIB:h.akbd
oz.CnPDrag:	RISCOSLIB:h.alarm
oz.CnPDrag:	RISCOSLIB:h.bbc
oz.CnPDrag:	RISCOSLIB:h.flex
oz.CnPDrag:	RISCOSLIB:h.pointer
oz.CnPDrag:	RISCOSLIB:h.sprite
oz.CnPDrag:	RISCOSLIB:h.wimp
oz.CnPDrag:	RISCOSLIB:h.wimp
oz.CnPDrag:	RISCOSLIB:h.wimpt
oz.CnPDrag:	RISCOSLIB:h.msgs
oz.CnPDrag:	RISCOSLIB:h.xferrecv
oz.CnPDrag:	RISCOSLIB:h.help
oz.CnPDrag:	RISCOSLIB:h.event
oz.CnPDrag:	RISCOSLIB:h.menu
oz.CnPDrag:	RISCOSLIB:h.dbox
oz.CnPDrag:	RISCOSLIB:h.font
oz.CnPDrag:	RISCOSLIB:h.drawmod
oz.CnPDrag:	RISCOSLIB:h.dragasprit
oz.CnPDrag:	RISCOSLIB:h.event
oz.CnPDrag:	h.main
oz.CnPDrag:	RISCOSLIB:h.wimp
oz.CnPDrag:	RISCOSLIB:h.sprite
oz.CnPDrag:	RISCOSLIB:h.win
oz.CnPDrag:	RISCOSLIB:h.msgs
oz.CnPDrag:	RISCOSLIB:h.colourpick
oz.CnPDrag:	RISCOSLIB:h.coords
oz.CnPDrag:	h.ftrace
oz.CnPDrag:	h.Menus
oz.CnPDrag:	RISCOSLIB:h.menu
oz.CnPDrag:	RISCOSLIB:h.print
oz.CnPDrag:	h.MenuD
oz.CnPDrag:	h.CnPDrag
oz.CnPDrag:	h.Clipboard
oz.CnPDrag:	h.Drawfile
oz.CnPDrag:	h.ToolWindow
oz.CnPDrag:	h.Tools
oz.CnPDrag:	C:h.swis
oz.Clipboard:	c.Clipboard
oz.Clipboard:	C:Global.h.FileTypes
oz.Clipboard:	C:Global.h.Sprite
oz.Clipboard:	C:Interface.h.HighFSI
oz.Clipboard:	RISCOSLIB:h.event
oz.Clipboard:	RISCOSLIB:h.menu
oz.Clipboard:	RISCOSLIB:h.wimp
oz.Clipboard:	RISCOSLIB:h.os
oz.Clipboard:	C:h.kernel
oz.Clipboard:	RISCOSLIB:h.sprite
oz.Clipboard:	RISCOSLIB:h.flex
oz.Clipboard:	RISCOSLIB:h.msgs
oz.Clipboard:	RISCOSLIB:h.os
oz.Clipboard:	RISCOSLIB:h.werr
oz.Clipboard:	RISCOSLIB:h.wimp
oz.Clipboard:	RISCOSLIB:h.wimpt
oz.Clipboard:	RISCOSLIB:h.xferrecv
oz.Clipboard:	RISCOSLIB:h.help
oz.Clipboard:	RISCOSLIB:h.dbox
oz.Clipboard:	C:h.swis
oz.Clipboard:	h.ftrace
oz.Clipboard:	h.guard
oz.Clipboard:	h.main
oz.Clipboard:	RISCOSLIB:h.wimp
oz.Clipboard:	RISCOSLIB:h.sprite
oz.Clipboard:	RISCOSLIB:h.win
oz.Clipboard:	RISCOSLIB:h.msgs
oz.Clipboard:	RISCOSLIB:h.colourpick
oz.Clipboard:	RISCOSLIB:h.coords
oz.Clipboard:	h.ftrace
oz.Clipboard:	h.Menus
oz.Clipboard:	RISCOSLIB:h.menu
oz.Clipboard:	RISCOSLIB:h.print
oz.Clipboard:	h.MenuD
oz.Clipboard:	h.PSprite
oz.Clipboard:	h.Clipboard
oz.Clipboard:	h.Drawfile
oz.Drawfile:	c.Drawfile
oz.Drawfile:	RISCOSLIB:h.bbc
oz.Drawfile:	RISCOSLIB:h.os
oz.Drawfile:	C:h.kernel
oz.Drawfile:	RISCOSLIB:h.flex
oz.Drawfile:	RISCOSLIB:h.werr
oz.Drawfile:	RISCOSLIB:h.drawftypes
oz.Drawfile:	RISCOSLIB:h.sprite
oz.Drawfile:	RISCOSLIB:h.drawfdiag
oz.Drawfile:	RISCOSLIB:h.drawfdiag
oz.Drawfile:	RISCOSLIB:h.drawfobj
oz.Drawfile:	RISCOSLIB:h.sprite
oz.Drawfile:	h.main
oz.Drawfile:	RISCOSLIB:h.wimp
oz.Drawfile:	RISCOSLIB:h.sprite
oz.Drawfile:	RISCOSLIB:h.win
oz.Drawfile:	RISCOSLIB:h.msgs
oz.Drawfile:	RISCOSLIB:h.colourpick
oz.Drawfile:	RISCOSLIB:h.coords
oz.Drawfile:	h.ftrace
oz.Drawfile:	h.Drawfile
oz.PaintChoice:	c.PaintChoice
oz.PaintChoice:	C:Global.h.FileTypes
oz.PaintChoice:	C:Interface.h.HighFSI
oz.PaintChoice:	RISCOSLIB:h.msgs
oz.PaintChoice:	RISCOSLIB:h.os
oz.PaintChoice:	C:h.kernel
oz.PaintChoice:	RISCOSLIB:h.wimp
oz.PaintChoice:	RISCOSLIB:h.sprite
oz.PaintChoice:	RISCOSLIB:h.wimpt
oz.PaintChoice:	RISCOSLIB:h.help
oz.PaintChoice:	RISCOSLIB:h.event
oz.PaintChoice:	RISCOSLIB:h.menu
oz.PaintChoice:	RISCOSLIB:h.dbox
oz.PaintChoice:	RISCOSLIB:h.werr
oz.PaintChoice:	RISCOSLIB:h.xferrecv
oz.PaintChoice:	RISCOSLIB:h.colourmenu
oz.PaintChoice:	h.main
oz.PaintChoice:	RISCOSLIB:h.wimp
oz.PaintChoice:	RISCOSLIB:h.sprite
oz.PaintChoice:	RISCOSLIB:h.win
oz.PaintChoice:	RISCOSLIB:h.msgs
oz.PaintChoice:	RISCOSLIB:h.colourpick
oz.PaintChoice:	RISCOSLIB:h.coords
oz.PaintChoice:	h.ftrace
oz.PaintChoice:	h.MenuD
oz.PaintChoice:	h.PaintChoice
oz.BrushTransFunc: asm.BrushTransFunc
oz.BrushTransFunc: Hdr:ListOpts
oz.BrushTransFunc: Hdr:Macros
