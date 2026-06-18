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
# Makefile for ModMalloc
#

COMPONENT = ModMalloc
OBJS      = modm
HDRS      = ModMalloc

include CLibrary

# Dynamic dependencies:
oz.modm:	c.modm
oz.modm:	C:h.swis
oz.modm:	C:h.kernel
oz.modm:	C:Desk.h.Debug
oz.modm:	C:Desk.h.Core
oz.modm:	C:h.kernel
oz.modm:	C:Desk.h.Error
oz.modm:	C:Desk.h.LinkList
oz.modm:	C:ModMalloc.h.ModMalloc
o.modm:	c.modm
o.modm:	C:h.swis
o.modm:	C:h.kernel
o.modm:	C:Desk.h.Debug
o.modm:	C:Desk.h.Core
o.modm:	C:h.kernel
o.modm:	C:Desk.h.Error
o.modm:	C:Desk.h.LinkList
o.modm:	C:ModMalloc.h.ModMalloc
