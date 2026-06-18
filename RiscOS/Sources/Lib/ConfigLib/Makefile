# Copyright 1998 Acorn Computers Ltd
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
# Makefile for ConfigureLib
#

COMPONENT = ConfigLib
OBJS      = cmos error misc str
HDRS      = cmos error message misc str

include CLibrary

CINCLUDES += -ITbox:,C:

# Dynamic dependencies:
oz.cmos:	c.cmos
oz.cmos:	C:h.kernel
oz.cmos:	C:h.swis
oz.cmos:	h.cmos
oz.cmos:	h.misc
oz.cmos:	C:h.kernel
oz.cmos:	Tbox:h.toolbox
oz.cmos:	Tbox:h.wimp
oz.cmos:	h.cmos
oz.error:	c.error
oz.error:	C:h.kernel
oz.error:	C:h.swis
oz.error:	Tbox:h.wimplib
oz.error:	Tbox:h.wimp
oz.error:	Tbox:h.toolbox
oz.misc:	c.misc
oz.misc:	C:h.swis
oz.misc:	C:h.kernel
oz.misc:	Tbox:h.wimplib
oz.misc:	Tbox:h.wimp
oz.misc:	Tbox:h.toolbox
oz.misc:	Tbox:h.window
oz.misc:	Tbox:h.gadgets
oz.misc:	Tbox:h.gadgets
oz.misc:	h.misc
oz.misc:	C:h.kernel
oz.misc:	Tbox:h.toolbox
oz.misc:	h.cmos
oz.misc:	h.cmos
oz.misc:	h.message
oz.misc:	C:h.swis
oz.misc:	h.str
oz.str:	c.str
oz.str:	h.str
o.cmos:	c.cmos
o.cmos:	C:h.kernel
o.cmos:	C:h.swis
o.cmos:	h.cmos
o.cmos:	h.misc
o.cmos:	C:h.kernel
o.cmos:	Tbox:h.toolbox
o.cmos:	Tbox:h.wimp
o.cmos:	h.cmos
o.error:	c.error
o.error:	C:h.kernel
o.error:	C:h.swis
o.error:	Tbox:h.wimplib
o.error:	Tbox:h.wimp
o.error:	Tbox:h.toolbox
o.misc:	c.misc
o.misc:	C:h.swis
o.misc:	C:h.kernel
o.misc:	Tbox:h.wimplib
o.misc:	Tbox:h.wimp
o.misc:	Tbox:h.toolbox
o.misc:	Tbox:h.window
o.misc:	Tbox:h.gadgets
o.misc:	Tbox:h.gadgets
o.misc:	h.misc
o.misc:	C:h.kernel
o.misc:	Tbox:h.toolbox
o.misc:	h.cmos
o.misc:	h.cmos
o.misc:	h.message
o.misc:	C:h.swis
o.misc:	h.str
o.str:	c.str
o.str:	h.str
