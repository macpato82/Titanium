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
# Makefile for Discard/Cancel/Save/Quit module
#

COMPONENT     = DCS
OBJS          = create delete events getstate\
                hide main miscop show task
SA_OBJS       = ${OBJS}
RESFSDIR      = ${RESDIR}${SEP}DCS
CMHGFILE      = DCSHdr
CMHGDEPENDS   = main
ROMCDEFINES   = -DROM
CDFLAGS       = -Ddebugging=1
CMHGDFLAGS    = -Ddebugging=1
CINCLUDES     = -Itbox:,C:
HDRS          =
LIBS          = ${TBOXINTLIB}
DBG_LIBS      = ${TBOXINTDBGLIB}
INSTRES_FILES = Res Quit.Messages:^.Quit Quit.Res:^.Quit

include CModule

# Dynamic dependencies:
o.create:	c.create
o.create:	C:h.stdlib
o.create:	C:h.stddef
o.create:	C:h.kernel
o.create:	C:h.swis
o.create:	C:tboxlibint.h.const
o.create:	C:tboxlibint.h.macros
o.create:	C:tboxlibint.h.debug
o.create:	C:tboxlibint.h.mem
o.create:	C:tboxlibint.h.messages
o.create:	C:h.kernel
o.create:	C:tboxlibint.objects.h.toolbox
o.create:	C:tboxlibint.h.objsupport
o.create:	C:h.stddef
o.create:	C:tboxlibint.objects.h.toolbox
o.create:	C:tboxlibint.objects.h.window
o.create:	C:tboxlibint.objects.^.h.twimp
o.create:	C:h.kernel
o.create:	C:tboxlibint.h.slist
o.create:	C:tboxlibint.h.string32
o.create:	C:tboxlibint.objects.h.toolbox
o.create:	C:tboxlibint.objects.h.window
o.create:	C:tboxlibint.objects.h.DCS
o.create:	C:tboxlibint.objects.h.window
o.create:	C:tboxlibint.objects.h.Quit
o.create:	h.object
o.create:	h.task
o.create:	h.create
o.create:	C:h.kernel
o.delete:	c.delete
o.delete:	C:h.kernel
o.delete:	C:h.swis
o.delete:	C:tboxlibint.h.const
o.delete:	C:tboxlibint.h.macros
o.delete:	C:tboxlibint.h.debug
o.delete:	C:tboxlibint.h.mem
o.delete:	C:tboxlibint.h.messages
o.delete:	C:h.kernel
o.delete:	C:tboxlibint.objects.h.toolbox
o.delete:	C:tboxlibint.h.slist
o.delete:	C:tboxlibint.objects.h.toolbox
o.delete:	C:tboxlibint.objects.h.DCS
o.delete:	C:tboxlibint.objects.h.window
o.delete:	C:tboxlibint.objects.^.h.twimp
o.delete:	C:h.kernel
o.delete:	h.object
o.delete:	h.task
o.delete:	h.delete
o.delete:	C:h.kernel
o.events:	c.events
o.events:	C:h.kernel
o.events:	C:h.swis
o.events:	C:tboxlibint.h.const
o.events:	C:tboxlibint.h.macros
o.events:	C:tboxlibint.h.debug
o.events:	C:tboxlibint.h.mem
o.events:	C:tboxlibint.h.messages
o.events:	C:h.kernel
o.events:	C:tboxlibint.objects.h.toolbox
o.events:	C:tboxlibint.h.slist
o.events:	C:tboxlibint.objects.h.toolbox
o.events:	C:tboxlibint.objects.h.DCS
o.events:	C:tboxlibint.objects.h.window
o.events:	C:tboxlibint.objects.^.h.twimp
o.events:	C:h.kernel
o.events:	C:tboxlibint.objects.h.Quit
o.events:	h.object
o.events:	h.events
o.events:	C:h.kernel
o.events:	h.task
o.events:	h.show
o.events:	C:h.kernel
o.getstate:	c.getstate
o.getstate:	C:h.kernel
o.getstate:	C:h.swis
o.getstate:	C:tboxlibint.h.const
o.getstate:	C:tboxlibint.h.macros
o.getstate:	C:tboxlibint.h.debug
o.getstate:	C:tboxlibint.h.mem
o.getstate:	C:tboxlibint.h.messages
o.getstate:	C:h.kernel
o.getstate:	C:tboxlibint.objects.h.toolbox
o.getstate:	C:tboxlibint.objects.h.toolbox
o.getstate:	C:tboxlibint.objects.h.generic
o.getstate:	h.object
o.getstate:	h.task
o.getstate:	h.getstate
o.getstate:	C:h.kernel
o.hide:	c.hide
o.hide:	C:h.kernel
o.hide:	C:h.swis
o.hide:	C:tboxlibint.h.const
o.hide:	C:tboxlibint.h.macros
o.hide:	C:tboxlibint.h.debug
o.hide:	C:tboxlibint.h.mem
o.hide:	C:tboxlibint.h.messages
o.hide:	C:h.kernel
o.hide:	C:tboxlibint.objects.h.toolbox
o.hide:	C:tboxlibint.objects.h.toolbox
o.hide:	C:tboxlibint.objects.h.generic
o.hide:	h.object
o.hide:	h.task
o.hide:	h.hide
o.hide:	C:h.kernel
o.main:	c.main
o.main:	C:h.kernel
o.main:	C:h.swis
o.main:	C:Global.h.Services
o.main:	C:tboxlibint.h.const
o.main:	C:tboxlibint.h.macros
o.main:	C:tboxlibint.h.debug
o.main:	C:tboxlibint.h.mem
o.main:	C:tboxlibint.h.messages
o.main:	C:h.kernel
o.main:	C:tboxlibint.objects.h.toolbox
o.main:	C:tboxlibint.h.objmodule
o.main:	C:tboxlibint.h.rmensure
o.main:	C:tboxlibint.objects.h.toolbox
o.main:	C:tboxlibint.objects.h.DCS
o.main:	C:tboxlibint.objects.h.window
o.main:	C:tboxlibint.objects.^.h.twimp
o.main:	C:h.kernel
o.main:	C:tboxlibint.objects.h.Quit
o.main:	h.object
o.main:	h.create
o.main:	C:h.kernel
o.main:	h.task
o.main:	h.delete
o.main:	C:h.kernel
o.main:	h.show
o.main:	C:h.kernel
o.main:	h.hide
o.main:	C:h.kernel
o.main:	h.getstate
o.main:	C:h.kernel
o.main:	h.miscop
o.main:	C:h.kernel
o.main:	h.events
o.main:	C:h.kernel
o.main:	h.task
o.main:	h.DCSHdr
h.DCSHdr:	cmhg.DCSHdr
h.DCSHdr:	VersionNum
o.miscop:	c.miscop
o.miscop:	C:h.kernel
o.miscop:	C:h.swis
o.miscop:	C:tboxlibint.h.const
o.miscop:	C:tboxlibint.h.macros
o.miscop:	C:tboxlibint.h.debug
o.miscop:	C:tboxlibint.h.mem
o.miscop:	C:tboxlibint.h.messages
o.miscop:	C:h.kernel
o.miscop:	C:tboxlibint.objects.h.toolbox
o.miscop:	C:tboxlibint.objects.h.toolbox
o.miscop:	C:tboxlibint.objects.h.window
o.miscop:	C:tboxlibint.objects.^.h.twimp
o.miscop:	C:h.kernel
o.miscop:	C:tboxlibint.objects.h.DCS
o.miscop:	C:tboxlibint.objects.h.window
o.miscop:	h.object
o.miscop:	h.task
o.miscop:	h.miscop
o.miscop:	C:h.kernel
o.show:	c.show
o.show:	C:h.string
o.show:	C:h.kernel
o.show:	C:h.swis
o.show:	C:tboxlibint.h.const
o.show:	C:tboxlibint.h.macros
o.show:	C:tboxlibint.h.debug
o.show:	C:tboxlibint.h.mem
o.show:	C:tboxlibint.h.messages
o.show:	C:h.kernel
o.show:	C:tboxlibint.objects.h.toolbox
o.show:	C:tboxlibint.objects.h.toolbox
o.show:	C:tboxlibint.objects.h.DCS
o.show:	C:tboxlibint.objects.h.window
o.show:	C:tboxlibint.objects.^.h.twimp
o.show:	C:h.kernel
o.show:	C:tboxlibint.objects.h.Quit
o.show:	h.object
o.show:	h.task
o.show:	h.show
o.show:	C:h.kernel
o.task:	c.task
o.task:	C:h.kernel
o.task:	C:h.swis
o.task:	C:tboxlibint.h.const
o.task:	C:tboxlibint.h.macros
o.task:	C:tboxlibint.h.debug
o.task:	C:tboxlibint.h.mem
o.task:	C:tboxlibint.h.messages
o.task:	C:h.kernel
o.task:	C:tboxlibint.objects.h.toolbox
o.task:	C:tboxlibint.h.slist
o.task:	C:tboxlibint.objects.h.toolbox
o.task:	C:tboxlibint.objects.h.DCS
o.task:	C:tboxlibint.objects.h.window
o.task:	C:tboxlibint.objects.^.h.twimp
o.task:	C:h.kernel
o.task:	C:tboxlibint.objects.h.Quit
o.task:	C:tboxlibint.objects.h.window
o.task:	h.object
o.task:	h.task
o.DCSHdr:	cmhg.DCSHdr
o.DCSHdr:	VersionNum
