# Copyright 1997 Acorn Computers Ltd
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
# Makefile for TextGadgets module
#

COMPONENT     = Gadgets
TARGET       ?= TextGadget
OBJS          = glib glib3 main MemMan riscos_uti Scrollbar\
                ScrollList Sizes TextArea TextMan Font riscos_gra\
                TAsel_ven Utils
CMHGDEPENDS   = main
ROMCDEFINES   = -DROM
CINCLUDES     = -Itbox:,C:
LIBS          = ${TBOXINTLIB} ${WIMPLIB}

include CModule

# Dynamic dependencies:
o.glib:	c.glib
o.glib:	C:h.kernel
o.glib:	C:h.swis
o.glib:	C:tboxlibint.h.twimp
o.glib:	C:tboxlibint.objects.h.toolbox
o.glib:	C:h.kernel
o.glib:	C:tboxlibint.h.macros
o.glib:	C:tboxlibint.objects.h.toolbox
o.glib:	C:tboxlibint.objects.h.window
o.glib:	h.Sizes
o.glib:	h.riscos_uti
o.glib:	h.glib
o.glib:	C:h.kernel
o.glib3:	c.glib3
o.glib3:	C:h.kernel
o.glib3:	C:h.swis
o.glib3:	C:tboxlibint.h.macros
o.glib3:	C:tboxlibint.h.twimp
o.glib3:	C:tboxlibint.objects.h.toolbox
o.glib3:	C:h.kernel
o.glib3:	C:tboxlibint.objects.h.toolbox
o.glib3:	C:tboxlibint.objects.h.window
o.glib3:	h.glib
o.glib3:	C:h.kernel
o.main:	c.main
o.main:	C:h.kernel
o.main:	C:h.swis
o.main:	C:Global.h.Services
o.main:	C:tboxlibint.h.macros
o.main:	C:tboxlibint.h.rmensure
o.main:	C:tboxlibint.h.objmodule
o.main:	C:tboxlibint.h.messages
o.main:	C:h.kernel
o.main:	C:tboxlibint.objects.h.toolbox
o.main:	C:tboxlibint.h.twimp
o.main:	C:h.kernel
o.main:	C:tboxlibint.objects.h.gadgets
o.main:	C:tboxlibint.objects.h.window
o.main:	h.TextGadget
o.main:	h.glib
o.main:	C:h.kernel
o.main:	h.MemMan
o.main:	C:h.kernel
o.main:	h.TextMan
o.main:	h.TextAreaP
o.main:	h.modmem
o.main:	h.ScrollLisP
o.main:	h.modmem
o.main:	h.ScrollbarP
o.main:	h.TextGadgetHdr
h.TextGadgetHdr:	cmhg.TextGadgetHdr
h.TextGadgetHdr:	VersionNum
o.MemMan:	c.MemMan
o.MemMan:	C:h.kernel
o.MemMan:	C:h.swis
o.MemMan:	C:tboxlibint.h.messages
o.MemMan:	C:h.kernel
o.MemMan:	C:tboxlibint.objects.h.toolbox
o.MemMan:	C:tboxlibint.objects.h.gadgets
o.MemMan:	C:tboxlibint.objects.h.window
o.MemMan:	C:tboxlibint.objects.^.h.twimp
o.MemMan:	C:h.kernel
o.MemMan:	h.MemMan
o.MemMan:	C:h.kernel
o.riscos_uti:	c.riscos_uti
o.riscos_uti:	C:h.kernel
o.riscos_uti:	C:h.swis
o.riscos_uti:	C:tboxlibint.h.twimp
o.riscos_uti:	C:tboxlibint.objects.h.toolbox
o.riscos_uti:	C:h.kernel
o.riscos_uti:	h.riscos_uti
o.Scrollbar:	c.Scrollbar
o.Scrollbar:	C:h.kernel
o.Scrollbar:	C:h.swis
o.Scrollbar:	C:tboxlibint.h.macros
o.Scrollbar:	C:tboxlibint.h.messages
o.Scrollbar:	C:h.kernel
o.Scrollbar:	C:tboxlibint.objects.h.toolbox
o.Scrollbar:	C:tboxlibint.h.twimp
o.Scrollbar:	C:h.kernel
o.Scrollbar:	C:tboxlibint.objects.h.gadgets
o.Scrollbar:	C:tboxlibint.objects.h.window
o.Scrollbar:	h.glib
o.Scrollbar:	C:h.kernel
o.Scrollbar:	h.TextGadget
o.Scrollbar:	h.ScrollbarP
o.Scrollbar:	h.Utils
o.ScrollList:	c.ScrollList
o.ScrollList:	C:h.kernel
o.ScrollList:	C:h.swis
o.ScrollList:	C:tboxlibint.h.macros
o.ScrollList:	C:tboxlibint.h.messages
o.ScrollList:	C:h.kernel
o.ScrollList:	C:tboxlibint.objects.h.toolbox
o.ScrollList:	C:tboxlibint.h.twimp
o.ScrollList:	C:h.kernel
o.ScrollList:	C:tboxlibint.objects.h.gadgets
o.ScrollList:	C:tboxlibint.objects.h.window
o.ScrollList:	C:Global.h.Sprite
o.ScrollList:	h.glib
o.ScrollList:	C:h.kernel
o.ScrollList:	h.riscos_uti
o.ScrollList:	h.Font
o.ScrollList:	h.TextGadget
o.ScrollList:	h.ScrollLisP
o.ScrollList:	h.modmem
o.ScrollList:	h.Sizes
o.ScrollList:	h.Utils
o.Sizes:	c.Sizes
o.Sizes:	C:h.swis
o.Sizes:	C:h.kernel
o.Sizes:	C:h.kernel
o.Sizes:	C:tboxlibint.h.twimp
o.Sizes:	C:tboxlibint.objects.h.toolbox
o.Sizes:	C:h.kernel
o.Sizes:	h.Sizes
o.TextArea:	c.TextArea
o.TextArea:	C:h.kernel
o.TextArea:	C:h.swis
o.TextArea:	C:tboxlibint.h.macros
o.TextArea:	C:tboxlibint.h.messages
o.TextArea:	C:h.kernel
o.TextArea:	C:tboxlibint.objects.h.toolbox
o.TextArea:	C:tboxlibint.h.twimp
o.TextArea:	C:h.kernel
o.TextArea:	C:tboxlibint.objects.h.gadgets
o.TextArea:	C:tboxlibint.objects.h.window
o.TextArea:	h.glib
o.TextArea:	C:h.kernel
o.TextArea:	h.riscos_uti
o.TextArea:	h.MemMan
o.TextArea:	C:h.kernel
o.TextArea:	h.TextMan
o.TextArea:	h.TextGadget
o.TextArea:	h.TextAreaP
o.TextArea:	h.modmem
o.TextArea:	h.Font
o.TextArea:	h.Sizes
o.TextArea:	h.Utils
o.TextMan:	c.TextMan
o.TextMan:	C:h.kernel
o.TextMan:	C:h.swis
o.TextMan:	C:tboxlibint.h.macros
o.TextMan:	C:tboxlibint.h.messages
o.TextMan:	C:h.kernel
o.TextMan:	C:tboxlibint.objects.h.toolbox
o.TextMan:	C:tboxlibint.objects.h.gadgets
o.TextMan:	C:tboxlibint.objects.h.window
o.TextMan:	C:tboxlibint.objects.^.h.twimp
o.TextMan:	C:h.kernel
o.TextMan:	C:tboxlibint.h.twimp
o.TextMan:	h.MemMan
o.TextMan:	C:h.kernel
o.TextMan:	h.TextMan
o.Font:	c.Font
o.Font:	C:h.kernel
o.Font:	C:h.swis
o.Font:	C:tboxlibint.h.twimp
o.Font:	C:tboxlibint.objects.h.toolbox
o.Font:	C:h.kernel
o.Font:	h.Font
o.riscos_gra:	c.riscos_gra
o.riscos_gra:	C:h.kernel
o.riscos_gra:	C:h.swis
o.riscos_gra:	C:tboxlibint.h.twimp
o.riscos_gra:	C:tboxlibint.objects.h.toolbox
o.riscos_gra:	C:h.kernel
o.riscos_gra:	h.riscos_uti
o.TAsel_ven: s.TAsel_ven
o.TAsel_ven: hdr:ListOpts
o.TAsel_ven: hdr:Macros
o.TAsel_ven: Hdr:System
o.TAsel_ven: Hdr:SWIs
o.TAsel_ven: Hdr:CPU.Arch
o.TAsel_ven: Hdr:Machine.<Machine>
o.TAsel_ven: Hdr:Machine.Machine
o.TAsel_ven: Hdr:CPU.Generic26
o.TAsel_ven: Hdr:CPU.Generic32
o.TAsel_ven: Hdr:IO.GenericIO
o.TAsel_ven: Hdr:RISCOS
o.TAsel_ven: hdr:Wimp
o.TAsel_ven: Hdr:APCS.<APCS>
o.TAsel_ven: Hdr:APCS.Common
o.Utils:	c.Utils
o.Utils:	C:h.kernel
o.Utils:	C:h.swis
o.Utils:	C:tboxlibint.h.twimp
o.Utils:	C:tboxlibint.objects.h.toolbox
o.Utils:	C:h.kernel
o.Utils:	h.Utils
o.TextGadgetHdr:	cmhg.TextGadgetHdr
o.TextGadgetHdr:	VersionNum
