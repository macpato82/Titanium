# Copyright 1999 Pace Micro Technology plc
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
# Makefile for ColourPicker
#

COMPONENT     ?= ColourPicker
TARGET        ?= Picker
HDRS          =
ASMHDRS       = ColourPick
INSTRES_FILES = Sprites Templates CMYK.Messages:CMYK CMYK.Templates:CMYK HSV.Messages:HSV HSV.Templates:HSV RGB.Messages:RGB RGB.Templates:RGB
VPATH         = Support011
CINCLUDES     = -ISupport011,icons ${OSINC}
RES_AREA      = resourcefs_files
RES_OBJ       = msgs
CMHGFILE      = header
OBJS          = cmyk dialogue helpreply hsv main model rgb tables callback icon lookup realloc relocate resource riscos steppable task window veneer
LIBS          = ${OSLIB} ${ASMUTILS}
ROMCDEFINES   = -DROM
SOURCES_TO_SYMLINK = $(wildcard icons/h/*) $(wildcard Support011/c/*) $(wildcard Support011/h/*) 

ifeq (,${MAKE_VERSION})

# RISC OS / amu case

WINEDIT = /Apps:!WinEdit

icons/dialogue_i.h: LocalRes:Templates
	${MKDIR} icons.h
	${WINEDIT} "-h??=define dialogue_%w_%n ((wimp_i) %i)" LocalRes:Templates >$@
	${PERL} Resources.perlscript $@

icons/cmyk_i.h: LocalRes:CMYK.Templates
	${MKDIR} icons.h
	${WINEDIT} "-h??=define cmyk_%w_%n ((wimp_i) %i)" LocalRes:CMYK.Templates >$@
	${PERL} Resources.perlscript $@

icons/rgb_i.h: LocalRes:RGB.Templates
	${MKDIR} icons.h
	${WINEDIT} "-h??=define rgb_%w_%n ((wimp_i) %i)" LocalRes:RGB.Templates >$@
	${PERL} Resources.perlscript $@

icons/hsv_i.h: LocalRes:HSV.Templates
	${MKDIR} icons.h
	${WINEDIT} "-h??=define hsv_%w_%n ((wimp_i) %i)" LocalRes:HSV.Templates >$@
	${PERL} Resources.perlscript $@

endif

include CModule

# Static dependencies:
cmyk.o:     icons/dialogue_i.h icons/cmyk_i.h
dialogue.o: icons/dialogue_i.h
hsv.o:      icons/dialogue_i.h icons/hsv_i.h
main.o:     icons/dialogue_i.h icons/cmyk_i.h icons/hsv_i.h icons/rgb_i.h
model.o:    icons/dialogue_i.h
rgb.o:      icons/dialogue_i.h icons/rgb_i.h

# Dynamic dependencies:
o.cmyk:	c.cmyk
o.cmyk:	C:h.kernel
o.cmyk:	OS:h.colourpicker
o.cmyk:	OS:oslib.h.types
o.cmyk:	OS:oslib.h.os
o.cmyk:	OS:oslib.h.oscore32
o.cmyk:	OS:oslib.h.osf32
o.cmyk:	OS:oslib.h.wimp
o.cmyk:	OS:oslib.h.osspriteop
o.cmyk:	OS:oslib.h.font
o.cmyk:	OS:oslib.h.wimp32
o.cmyk:	OS:h.colourtrans
o.cmyk:	OS:oslib.h.coltrans32
o.cmyk:	OS:h.help
o.cmyk:	OS:h.messagetrans
o.cmyk:	OS:h.macros
o.cmyk:	OS:h.os
o.cmyk:	OS:h.resourcefs
o.cmyk:	OS:oslib.h.fileswitch
o.cmyk:	OS:oslib.h.fileswch32
o.cmyk:	OS:h.territory
o.cmyk:	OS:h.wimp
o.cmyk:	Support011.h.icon
o.cmyk:	C:AsmUtils.h.muldiv
o.cmyk:	Support011.h.lookup
o.cmyk:	Support011.h.m
o.cmyk:	Support011.h.realloc
o.cmyk:	Support011.h.trace
o.cmyk:	Support011.h.resource
o.cmyk:	Support011.h.riscos
o.cmyk:	Support011.h.steppable
o.cmyk:	Support011.h.callback
o.cmyk:	Support011.h.task
o.cmyk:	Support011.h.trace
o.cmyk:	h.cmyk
o.cmyk:	C:h.kernel
o.cmyk:	icons.h.cmyk_i
o.cmyk:	h.dialogue
o.cmyk:	h.model
o.cmyk:	icons.h.dialogue_i
o.cmyk:	h.files
o.cmyk:	h.helpreply
o.cmyk:	h.main
o.cmyk:	C:h.kernel
o.cmyk:	h.model
o.dialogue:	c.dialogue
o.dialogue:	C:h.kernel
o.dialogue:	OS:h.colourtrans
o.dialogue:	OS:oslib.h.types
o.dialogue:	OS:oslib.h.os
o.dialogue:	OS:oslib.h.oscore32
o.dialogue:	OS:oslib.h.osf32
o.dialogue:	OS:oslib.h.osspriteop
o.dialogue:	OS:oslib.h.font
o.dialogue:	OS:oslib.h.coltrans32
o.dialogue:	OS:h.filter
o.dialogue:	OS:oslib.h.wimp
o.dialogue:	OS:oslib.h.wimp32
o.dialogue:	OS:h.help
o.dialogue:	OS:h.macros
o.dialogue:	OS:h.os
o.dialogue:	OS:h.osspriteop
o.dialogue:	OS:h.taskmanager
o.dialogue:	OS:h.wimp
o.dialogue:	OS:h.wimpreadsysinfo
o.dialogue:	Support011.h.lookup
o.dialogue:	Support011.h.m
o.dialogue:	Support011.h.realloc
o.dialogue:	Support011.h.trace
o.dialogue:	Support011.h.relocate
o.dialogue:	Support011.h.riscos
o.dialogue:	OS:h.territory
o.dialogue:	Support011.h.task
o.dialogue:	Support011.h.callback
o.dialogue:	Support011.h.trace
o.dialogue:	Support011.h.window
o.dialogue:	OS:h.os
o.dialogue:	OS:h.wimp
o.dialogue:	OS:h.colourpicker
o.dialogue:	h.dialogue
o.dialogue:	h.model
o.dialogue:	icons.h.dialogue_i
o.dialogue:	Support011.h.icon
o.dialogue:	C:AsmUtils.h.muldiv
o.dialogue:	h.main
o.dialogue:	C:h.kernel
o.dialogue:	Support011.h.resource
o.dialogue:	h.model
o.dialogue:	h.tables
o.dialogue:	h.veneer
o.helpreply:	c.helpreply
o.helpreply:	OS:h.help
o.helpreply:	OS:oslib.h.types
o.helpreply:	OS:oslib.h.os
o.helpreply:	OS:oslib.h.oscore32
o.helpreply:	OS:oslib.h.osf32
o.helpreply:	OS:oslib.h.wimp
o.helpreply:	OS:oslib.h.osspriteop
o.helpreply:	OS:oslib.h.font
o.helpreply:	OS:oslib.h.wimp32
o.helpreply:	OS:h.macros
o.helpreply:	OS:h.os
o.helpreply:	OS:h.wimp
o.helpreply:	Support011.h.icon
o.helpreply:	C:AsmUtils.h.muldiv
o.helpreply:	Support011.h.lookup
o.helpreply:	Support011.h.riscos
o.helpreply:	OS:h.territory
o.helpreply:	Support011.h.task
o.helpreply:	Support011.h.callback
o.helpreply:	Support011.h.trace
o.helpreply:	h.helpreply
o.hsv:	c.hsv
o.hsv:	C:h.kernel
o.hsv:	OS:h.colourpicker
o.hsv:	OS:oslib.h.types
o.hsv:	OS:oslib.h.os
o.hsv:	OS:oslib.h.oscore32
o.hsv:	OS:oslib.h.osf32
o.hsv:	OS:oslib.h.wimp
o.hsv:	OS:oslib.h.osspriteop
o.hsv:	OS:oslib.h.font
o.hsv:	OS:oslib.h.wimp32
o.hsv:	OS:h.colourtrans
o.hsv:	OS:oslib.h.coltrans32
o.hsv:	OS:h.help
o.hsv:	OS:h.macros
o.hsv:	OS:h.messagetrans
o.hsv:	OS:h.os
o.hsv:	OS:h.osfind
o.hsv:	OS:oslib.h.fileswitch
o.hsv:	OS:oslib.h.fileswch32
o.hsv:	OS:oslib.h.osfind32
o.hsv:	OS:h.osgbpb
o.hsv:	OS:oslib.h.osgbpb32
o.hsv:	OS:h.osspriteop
o.hsv:	OS:h.resourcefs
o.hsv:	OS:h.territory
o.hsv:	Support011.h.icon
o.hsv:	C:AsmUtils.h.muldiv
o.hsv:	Support011.h.lookup
o.hsv:	Support011.h.m
o.hsv:	Support011.h.realloc
o.hsv:	Support011.h.trace
o.hsv:	Support011.h.resource
o.hsv:	Support011.h.riscos
o.hsv:	Support011.h.steppable
o.hsv:	Support011.h.callback
o.hsv:	Support011.h.task
o.hsv:	h.tables
o.hsv:	Support011.h.trace
o.hsv:	h.dialogue
o.hsv:	h.model
o.hsv:	icons.h.dialogue_i
o.hsv:	h.files
o.hsv:	h.helpreply
o.hsv:	h.hsv
o.hsv:	C:h.kernel
o.hsv:	icons.h.hsv_i
o.hsv:	h.main
o.hsv:	C:h.kernel
o.hsv:	h.model
o.hsv:	h.tables
o.main:	c.main
o.main:	C:h.kernel
o.main:	OS:h.macros
o.main:	OS:h.messagetrans
o.main:	OS:oslib.h.types
o.main:	OS:oslib.h.os
o.main:	OS:oslib.h.oscore32
o.main:	OS:oslib.h.osf32
o.main:	OS:h.os
o.main:	OS:h.resourcefs
o.main:	OS:oslib.h.fileswitch
o.main:	OS:oslib.h.fileswch32
o.main:	OS:h.taskmanager
o.main:	OS:oslib.h.wimp
o.main:	OS:oslib.h.osspriteop
o.main:	OS:oslib.h.font
o.main:	OS:oslib.h.wimp32
o.main:	OS:h.territory
o.main:	Support011.h.lookup
o.main:	Support011.h.m
o.main:	Support011.h.realloc
o.main:	Support011.h.trace
o.main:	Support011.h.resource
o.main:	Support011.h.relocate
o.main:	Support011.h.riscos
o.main:	Support011.h.trace
o.main:	h.cmyk
o.main:	C:h.kernel
o.main:	Support011.h.steppable
o.main:	Support011.h.callback
o.main:	Support011.h.task
o.main:	icons.h.cmyk_i
o.main:	OS:h.colourpicker
o.main:	h.dialogue
o.main:	h.model
o.main:	icons.h.dialogue_i
o.main:	h.files
o.main:	h.hsv
o.main:	C:h.kernel
o.main:	icons.h.hsv_i
o.main:	h.main
o.main:	C:h.kernel
o.main:	h.model
o.main:	h.rgb
o.main:	C:h.kernel
o.main:	icons.h.rgb_i
o.model:	c.model
o.model:	OS:h.macros
o.model:	OS:h.os
o.model:	OS:oslib.h.types
o.model:	OS:oslib.h.oscore32
o.model:	OS:oslib.h.osf32
o.model:	Support011.h.m
o.model:	Support011.h.realloc
o.model:	Support011.h.trace
o.model:	Support011.h.riscos
o.model:	OS:h.territory
o.model:	Support011.h.relocate
o.model:	Support011.h.trace
o.model:	OS:h.colourpicker
o.model:	OS:oslib.h.wimp
o.model:	OS:oslib.h.osspriteop
o.model:	OS:oslib.h.font
o.model:	OS:oslib.h.wimp32
o.model:	h.dialogue
o.model:	Support011.h.task
o.model:	Support011.h.callback
o.model:	h.model
o.model:	icons.h.dialogue_i
o.model:	h.main
o.model:	C:h.kernel
o.model:	Support011.h.lookup
o.model:	Support011.h.resource
o.model:	h.model
o.rgb:	c.rgb
o.rgb:	C:h.kernel
o.rgb:	OS:h.colourpicker
o.rgb:	OS:oslib.h.types
o.rgb:	OS:oslib.h.os
o.rgb:	OS:oslib.h.oscore32
o.rgb:	OS:oslib.h.osf32
o.rgb:	OS:oslib.h.wimp
o.rgb:	OS:oslib.h.osspriteop
o.rgb:	OS:oslib.h.font
o.rgb:	OS:oslib.h.wimp32
o.rgb:	OS:h.colourtrans
o.rgb:	OS:oslib.h.coltrans32
o.rgb:	OS:h.help
o.rgb:	OS:h.messagetrans
o.rgb:	OS:h.macros
o.rgb:	OS:h.os
o.rgb:	OS:h.osfind
o.rgb:	OS:oslib.h.fileswitch
o.rgb:	OS:oslib.h.fileswch32
o.rgb:	OS:oslib.h.osfind32
o.rgb:	OS:h.osgbpb
o.rgb:	OS:oslib.h.osgbpb32
o.rgb:	OS:h.osspriteop
o.rgb:	OS:h.resourcefs
o.rgb:	OS:h.territory
o.rgb:	Support011.h.icon
o.rgb:	C:AsmUtils.h.muldiv
o.rgb:	Support011.h.lookup
o.rgb:	Support011.h.m
o.rgb:	Support011.h.realloc
o.rgb:	Support011.h.trace
o.rgb:	Support011.h.resource
o.rgb:	Support011.h.riscos
o.rgb:	Support011.h.steppable
o.rgb:	Support011.h.callback
o.rgb:	Support011.h.task
o.rgb:	Support011.h.trace
o.rgb:	h.dialogue
o.rgb:	h.model
o.rgb:	icons.h.dialogue_i
o.rgb:	h.files
o.rgb:	h.helpreply
o.rgb:	h.main
o.rgb:	C:h.kernel
o.rgb:	h.model
o.rgb:	h.rgb
o.rgb:	C:h.kernel
o.rgb:	icons.h.rgb_i
o.rgb:	h.tables
o.tables:	c.tables
o.tables:	OS:h.colourtrans
o.tables:	OS:oslib.h.types
o.tables:	OS:oslib.h.os
o.tables:	OS:oslib.h.oscore32
o.tables:	OS:oslib.h.osf32
o.tables:	OS:oslib.h.osspriteop
o.tables:	OS:oslib.h.font
o.tables:	OS:oslib.h.coltrans32
o.tables:	OS:h.os
o.tables:	OS:h.osspriteop
o.tables:	Support011.h.m
o.tables:	Support011.h.realloc
o.tables:	Support011.h.trace
o.tables:	Support011.h.riscos
o.tables:	OS:h.territory
o.tables:	h.tables
o.callback:	Support011.c.callback
o.callback:	OS:h.types
o.callback:	Support011.h.callback
o.callback:	OS:h.os
o.callback:	OS:oslib.h.oscore32
o.callback:	OS:oslib.h.osf32
o.callback:	Support011.h.trace
o.callback:	Support011.h.m
o.callback:	Support011.h.realloc
o.callback:	Support011.h.riscos
o.callback:	OS:h.territory
o.callback:	Support011.h.trace
o.icon:	Support011.c.icon
o.icon:	OS:h.macros
o.icon:	OS:h.os
o.icon:	OS:oslib.h.types
o.icon:	OS:oslib.h.oscore32
o.icon:	OS:oslib.h.osf32
o.icon:	OS:h.wimp
o.icon:	OS:oslib.h.osspriteop
o.icon:	OS:oslib.h.font
o.icon:	OS:oslib.h.wimp32
o.icon:	Support011.h.icon
o.icon:	C:AsmUtils.h.muldiv
o.icon:	Support011.h.riscos
o.icon:	OS:h.territory
o.icon:	Support011.h.trace
o.lookup:	Support011.c.lookup
o.lookup:	OS:h.os
o.lookup:	OS:oslib.h.types
o.lookup:	OS:oslib.h.oscore32
o.lookup:	OS:oslib.h.osf32
o.lookup:	OS:h.territory
o.lookup:	Support011.h.lookup
o.lookup:	Support011.h.m
o.lookup:	Support011.h.realloc
o.lookup:	Support011.h.trace
o.lookup:	Support011.h.riscos
o.lookup:	Support011.h.trace
o.realloc:	Support011.c.realloc
o.realloc:	Support011.h.realloc
o.relocate:	Support011.c.relocate
o.relocate:	Support011.h.relocate
o.relocate:	Support011.h.trace
o.relocate:	OS:h.os
o.relocate:	OS:oslib.h.types
o.relocate:	OS:oslib.h.oscore32
o.relocate:	OS:oslib.h.osf32
o.resource:	Support011.c.resource
o.resource:	OS:h.font
o.resource:	OS:oslib.h.types
o.resource:	OS:oslib.h.os
o.resource:	OS:oslib.h.oscore32
o.resource:	OS:oslib.h.osf32
o.resource:	OS:h.messagetrans
o.resource:	OS:h.os
o.resource:	OS:h.osfile
o.resource:	OS:oslib.h.fileswitch
o.resource:	OS:oslib.h.fileswch32
o.resource:	OS:h.wimp
o.resource:	OS:oslib.h.osspriteop
o.resource:	OS:oslib.h.wimp32
o.resource:	Support011.h.lookup
o.resource:	Support011.h.m
o.resource:	Support011.h.realloc
o.resource:	Support011.h.trace
o.resource:	Support011.h.resource
o.resource:	Support011.h.riscos
o.resource:	OS:h.territory
o.resource:	Support011.h.trace
o.riscos:	Support011.c.riscos
o.riscos:	OS:h.messagetrans
o.riscos:	OS:oslib.h.types
o.riscos:	OS:oslib.h.os
o.riscos:	OS:oslib.h.oscore32
o.riscos:	OS:oslib.h.osf32
o.riscos:	OS:h.macros
o.riscos:	OS:h.os
o.riscos:	OS:h.territory
o.riscos:	OS:h.wimp
o.riscos:	OS:oslib.h.osspriteop
o.riscos:	OS:oslib.h.font
o.riscos:	OS:oslib.h.wimp32
o.riscos:	Support011.h.m
o.riscos:	Support011.h.realloc
o.riscos:	Support011.h.trace
o.riscos:	Support011.h.riscos
o.riscos:	Support011.h.trace
o.steppable:	Support011.c.steppable
o.steppable:	OS:h.macros
o.steppable:	OS:h.os
o.steppable:	OS:oslib.h.types
o.steppable:	OS:oslib.h.oscore32
o.steppable:	OS:oslib.h.osf32
o.steppable:	OS:h.wimp
o.steppable:	OS:oslib.h.osspriteop
o.steppable:	OS:oslib.h.font
o.steppable:	OS:oslib.h.wimp32
o.steppable:	OS:h.wimpreadsysinfo
o.steppable:	Support011.h.icon
o.steppable:	C:AsmUtils.h.muldiv
o.steppable:	Support011.h.m
o.steppable:	Support011.h.realloc
o.steppable:	Support011.h.trace
o.steppable:	Support011.h.riscos
o.steppable:	OS:h.territory
o.steppable:	Support011.h.steppable
o.steppable:	Support011.h.callback
o.steppable:	Support011.h.task
o.steppable:	Support011.h.task
o.steppable:	Support011.h.trace
o.task:	Support011.c.task
o.task:	OS:h.help
o.task:	OS:oslib.h.types
o.task:	OS:oslib.h.os
o.task:	OS:oslib.h.oscore32
o.task:	OS:oslib.h.osf32
o.task:	OS:oslib.h.wimp
o.task:	OS:oslib.h.osspriteop
o.task:	OS:oslib.h.font
o.task:	OS:oslib.h.wimp32
o.task:	OS:h.macros
o.task:	OS:h.messagetrans
o.task:	OS:h.os
o.task:	OS:h.osbyte
o.task:	OS:h.taskmanager
o.task:	OS:h.wimp
o.task:	Support011.h.callback
o.task:	Support011.h.trace
o.task:	Support011.h.m
o.task:	Support011.h.realloc
o.task:	Support011.h.riscos
o.task:	OS:h.territory
o.task:	Support011.h.task
o.task:	Support011.h.trace
o.window:	Support011.c.window
o.window:	OS:h.os
o.window:	OS:oslib.h.types
o.window:	OS:oslib.h.oscore32
o.window:	OS:oslib.h.osf32
o.window:	OS:h.wimp
o.window:	OS:oslib.h.osspriteop
o.window:	OS:oslib.h.font
o.window:	OS:oslib.h.wimp32
o.window:	Support011.h.riscos
o.window:	OS:h.territory
o.window:	Support011.h.trace
o.window:	Support011.h.window
o.window:	OS:h.os
o.window:	OS:h.wimp
o.veneer: s.veneer
o.veneer: OS:Hdr.Types
o.header:	cmhg.header
o.header:	VersionNum
