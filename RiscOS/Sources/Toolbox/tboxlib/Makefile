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
# Makefile for internal tboxlib
#

COMPONENT ?= tboxlib
TARGET     = tboxlibint
LIBRARY    = tboxlib
LIBRARYZM  = ${LIBRARY}m
LIBRARYDZM = ${LIBRARY}dm
LIBRARIES  = ${LIBRARY} ${LIBRARYZM} ${LIBRARYD} ${LIBRARYDZM}
VPATH      = objects
EXPORTDIR ?= <export$dir>
OBJHDRS    = \
  colourdbox \
  colourmenu \
  DCS        \
  fileinfo   \
  fontdbox   \
  fontmenu   \
  gadgets    \
  generic    \
  iconbar    \
  menu       \
  printdbox  \
  proginfo   \
  Quit       \
  saveas     \
  scale      \
  toolbox    \
  window
HDRS       = \
  ${OBJHDRS} \
  colpicker  \
  const      \
  debug      \
  macros     \
  mem        \
  messages   \
  objmodule  \
  objsupport \
  os         \
  rmensure   \
  slist      \
  string32   \
  style      \
  toolboxmem \
  twimp
ASMHDRS    = \
  Toolbox    \
  Window
CFLAGS    += ${C_NOWARN_ASSIGNMENT_AS_CONDITION} ${C_NOWARN_NON_ANSI_INCLUDES}
CAPPFLAGS  = ${C_STKCHK}
CMODFLAGS  = ${C_NO_STKCHK}
OBJS       = mem messages string32 rmensure objmodule \
             objsupport slist toolboxmem
DBG_OBJS   = ${OBJS} debug
SOURCES_TO_SYMLINK = $(wildcard hdr/*) $(wildcard objects/h/*)

# Static rule to place ASMHDRS into Hdr/Interface rather than Lib/tboxlibint
.SUFFIXES: .expinterface .hdr
.hdr.expinterface:; ${CP} $< ${EXPORTDIR}${SEP}$* ${CPFLAGS}

ifeq (,${MAKE_VERSION})

# RISC OS / amu case

create_expobj_dir:
	${MKDIR} ${EXPDIR}.objects.h

EXPORTS    = ${EXPORTING_HDRS} create_expobj_dir $(addprefix expinterface.,${ASMHDRS})

else

# Posix / gmake case

create_expobj_dir:
	${MKDIR} ${EXPDIR}/objects

EXPORTS    = $(addsuffix .expinterface,${ASMHDRS}) create_expobj_dir ${EXPORTING_HDRS}

endif

include CLibrary

# Dynamic dependencies:
o.mem:	c.mem
o.mem:	C:h.kernel
o.mem:	C:h.swis
o.mem:	C:Global.h.ModHand
o.mem:	h.debug
o.mem:	h.mem
o.mem:	objects.h.toolbox
o.mem:	h.toolboxmem
o.messages:	c.messages
o.messages:	C:h.kernel
o.messages:	C:h.swis
o.messages:	h.const
o.messages:	h.macros
o.messages:	objects.h.toolbox
o.messages:	h.debug
o.messages:	h.mem
o.messages:	h.twimp
o.messages:	C:h.kernel
o.messages:	h.style
o.messages:	h.messages
o.messages:	C:h.kernel
o.string32:	c.string32
o.string32:	h.string32
o.rmensure:	c.rmensure
o.rmensure:	C:h.kernel
o.rmensure:	C:h.swis
o.rmensure:	h.rmensure
o.rmensure:	h.macros
o.objmodule:	c.objmodule
o.objmodule:	C:h.kernel
o.objmodule:	C:h.swis
o.objmodule:	h.const
o.objmodule:	h.macros
o.objmodule:	h.debug
o.objmodule:	h.mem
o.objmodule:	h.messages
o.objmodule:	C:h.kernel
o.objmodule:	objects.h.toolbox
o.objmodule:	h.rmensure
o.objmodule:	h.objmodule
o.objmodule:	objects.h.toolbox
o.objsupport:	c.objsupport
o.objsupport:	C:h.kernel
o.objsupport:	C:h.swis
o.objsupport:	h.debug
o.objsupport:	objects.h.toolbox
o.objsupport:	objects.h.window
o.objsupport:	objects.^.h.twimp
o.objsupport:	C:h.kernel
o.objsupport:	h.mem
o.objsupport:	h.objsupport
o.objsupport:	C:h.stddef
o.objsupport:	objects.h.toolbox
o.objsupport:	objects.h.window
o.objsupport:	h.string32
o.slist:	c.slist
o.slist:	h.slist
o.slist:	h.mem
o.toolboxmem: s.toolboxmem
oz.mem:	c.mem
oz.mem:	C:h.kernel
oz.mem:	C:h.swis
oz.mem:	C:Global.h.ModHand
oz.mem:	h.debug
oz.mem:	h.mem
oz.mem:	objects.h.toolbox
oz.mem:	h.toolboxmem
oz.messages:	c.messages
oz.messages:	C:h.kernel
oz.messages:	C:h.swis
oz.messages:	h.const
oz.messages:	h.macros
oz.messages:	objects.h.toolbox
oz.messages:	h.debug
oz.messages:	h.mem
oz.messages:	h.twimp
oz.messages:	C:h.kernel
oz.messages:	h.style
oz.messages:	h.messages
oz.messages:	C:h.kernel
oz.string32:	c.string32
oz.string32:	h.string32
oz.rmensure:	c.rmensure
oz.rmensure:	C:h.kernel
oz.rmensure:	C:h.swis
oz.rmensure:	h.rmensure
oz.rmensure:	h.macros
oz.objmodule:	c.objmodule
oz.objmodule:	C:h.kernel
oz.objmodule:	C:h.swis
oz.objmodule:	h.const
oz.objmodule:	h.macros
oz.objmodule:	h.debug
oz.objmodule:	h.mem
oz.objmodule:	h.messages
oz.objmodule:	C:h.kernel
oz.objmodule:	objects.h.toolbox
oz.objmodule:	h.rmensure
oz.objmodule:	h.objmodule
oz.objmodule:	objects.h.toolbox
oz.objsupport:	c.objsupport
oz.objsupport:	C:h.kernel
oz.objsupport:	C:h.swis
oz.objsupport:	h.debug
oz.objsupport:	objects.h.toolbox
oz.objsupport:	objects.h.window
oz.objsupport:	objects.^.h.twimp
oz.objsupport:	C:h.kernel
oz.objsupport:	h.mem
oz.objsupport:	h.objsupport
oz.objsupport:	C:h.stddef
oz.objsupport:	objects.h.toolbox
oz.objsupport:	objects.h.window
oz.objsupport:	h.string32
oz.slist:	c.slist
oz.slist:	h.slist
oz.slist:	h.mem
oz.toolboxmem: s.toolboxmem
od.mem:	c.mem
od.mem:	C:h.kernel
od.mem:	C:h.swis
od.mem:	C:Global.h.ModHand
od.mem:	h.debug
od.mem:	h.mem
od.mem:	objects.h.toolbox
od.mem:	h.toolboxmem
od.messages:	c.messages
od.messages:	C:h.kernel
od.messages:	C:h.swis
od.messages:	h.const
od.messages:	h.macros
od.messages:	objects.h.toolbox
od.messages:	h.debug
od.messages:	h.mem
od.messages:	h.twimp
od.messages:	C:h.kernel
od.messages:	h.style
od.messages:	h.messages
od.messages:	C:h.kernel
od.string32:	c.string32
od.string32:	h.string32
od.rmensure:	c.rmensure
od.rmensure:	C:h.kernel
od.rmensure:	C:h.swis
od.rmensure:	h.rmensure
od.rmensure:	h.macros
od.objmodule:	c.objmodule
od.objmodule:	C:h.kernel
od.objmodule:	C:h.swis
od.objmodule:	h.const
od.objmodule:	h.macros
od.objmodule:	h.debug
od.objmodule:	h.mem
od.objmodule:	h.messages
od.objmodule:	C:h.kernel
od.objmodule:	objects.h.toolbox
od.objmodule:	h.rmensure
od.objmodule:	h.objmodule
od.objmodule:	objects.h.toolbox
od.objsupport:	c.objsupport
od.objsupport:	C:h.kernel
od.objsupport:	C:h.swis
od.objsupport:	h.debug
od.objsupport:	objects.h.toolbox
od.objsupport:	objects.h.window
od.objsupport:	objects.^.h.twimp
od.objsupport:	C:h.kernel
od.objsupport:	h.mem
od.objsupport:	h.objsupport
od.objsupport:	C:h.stddef
od.objsupport:	objects.h.toolbox
od.objsupport:	objects.h.window
od.objsupport:	h.string32
od.slist:	c.slist
od.slist:	h.slist
od.slist:	h.mem
od.toolboxmem: s.toolboxmem
od.debug:	c.debug
od.debug:	h.debug
od.debug:	C:DebugLib.h.DebugLib
od.debug:	C:h.kernel
od.debug:	C:remotedb.h.remote
odz.mem:	c.mem
odz.mem:	C:h.kernel
odz.mem:	C:h.swis
odz.mem:	C:Global.h.ModHand
odz.mem:	h.debug
odz.mem:	h.mem
odz.mem:	objects.h.toolbox
odz.mem:	h.toolboxmem
odz.messages:	c.messages
odz.messages:	C:h.kernel
odz.messages:	C:h.swis
odz.messages:	h.const
odz.messages:	h.macros
odz.messages:	objects.h.toolbox
odz.messages:	h.debug
odz.messages:	h.mem
odz.messages:	h.twimp
odz.messages:	C:h.kernel
odz.messages:	h.style
odz.messages:	h.messages
odz.messages:	C:h.kernel
odz.string32:	c.string32
odz.string32:	h.string32
odz.rmensure:	c.rmensure
odz.rmensure:	C:h.kernel
odz.rmensure:	C:h.swis
odz.rmensure:	h.rmensure
odz.rmensure:	h.macros
odz.objmodule:	c.objmodule
odz.objmodule:	C:h.kernel
odz.objmodule:	C:h.swis
odz.objmodule:	h.const
odz.objmodule:	h.macros
odz.objmodule:	h.debug
odz.objmodule:	h.mem
odz.objmodule:	h.messages
odz.objmodule:	C:h.kernel
odz.objmodule:	objects.h.toolbox
odz.objmodule:	h.rmensure
odz.objmodule:	h.objmodule
odz.objmodule:	objects.h.toolbox
odz.objsupport:	c.objsupport
odz.objsupport:	C:h.kernel
odz.objsupport:	C:h.swis
odz.objsupport:	h.debug
odz.objsupport:	objects.h.toolbox
odz.objsupport:	objects.h.window
odz.objsupport:	objects.^.h.twimp
odz.objsupport:	C:h.kernel
odz.objsupport:	h.mem
odz.objsupport:	h.objsupport
odz.objsupport:	C:h.stddef
odz.objsupport:	objects.h.toolbox
odz.objsupport:	objects.h.window
odz.objsupport:	h.string32
odz.slist:	c.slist
odz.slist:	h.slist
odz.slist:	h.mem
odz.toolboxmem: s.toolboxmem
odz.debug:	c.debug
odz.debug:	h.debug
odz.debug:	C:DebugLib.h.DebugLib
odz.debug:	C:h.kernel
odz.debug:	C:remotedb.h.remote
