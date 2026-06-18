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
# Makefile for eventlib
#

COMPONENT = eventlib
LIBRARYZM = ${LIBRARY}m
EXPDIR   ?= ${LIBDIR}${SEP}tboxlibs
HDRS      = event
CINCLUDES = -I${LIBDIR}${SEP}tboxlibs
CAPPFLAGS = ${C_FNAMES}
OBJS      = \
  event     \
  tbevent   \
  wimpevent \
  wimpmsg   \
  !!version
SYMLINK_DEPEND = VersionASM
VersionASM:
	ln -s ../VersionASM $@ # Extend the link farm to the copy 1 level up

include CLibrary

# Dynamic dependencies:
oz.event:	c.event
oz.event:	C:h.kernel
oz.event:	C:tboxlibint.h.debug
oz.event:	h.types
oz.event:	<Lib$Dir>.tboxlibs.h.wimp
oz.event:	<Lib$Dir>.tboxlibs.h.toolbox
oz.event:	h.event
oz.event:	h.event
oz.event:	h.wimpevent
oz.event:	h.tbevent
oz.event:	h.wimpmsg
oz.tbevent:	c.tbevent
oz.tbevent:	C:h.kernel
oz.tbevent:	h.event
oz.tbevent:	<Lib$Dir>.tboxlibs.h.wimp
oz.tbevent:	<Lib$Dir>.tboxlibs.h.toolbox
oz.tbevent:	C:tboxlibint.h.debug
oz.tbevent:	h.types
oz.tbevent:	h.tbevent
oz.wimpevent:	c.wimpevent
oz.wimpevent:	C:h.kernel
oz.wimpevent:	C:tboxlibint.h.debug
oz.wimpevent:	h.event
oz.wimpevent:	<Lib$Dir>.tboxlibs.h.wimp
oz.wimpevent:	<Lib$Dir>.tboxlibs.h.toolbox
oz.wimpevent:	h.types
oz.wimpevent:	h.wimpevent
oz.wimpmsg:	c.wimpmsg
oz.wimpmsg:	C:h.kernel
oz.wimpmsg:	C:tboxlibint.h.debug
oz.wimpmsg:	h.event
oz.wimpmsg:	<Lib$Dir>.tboxlibs.h.wimp
oz.wimpmsg:	<Lib$Dir>.tboxlibs.h.toolbox
oz.wimpmsg:	h.types
oz.wimpmsg:	h.wimpmsg
oz.!!version: s.!!version
oz.!!version: ^.VersionASM
o.event:	c.event
o.event:	C:h.kernel
o.event:	C:tboxlibint.h.debug
o.event:	h.types
o.event:	<Lib$Dir>.tboxlibs.h.wimp
o.event:	<Lib$Dir>.tboxlibs.h.toolbox
o.event:	h.event
o.event:	h.event
o.event:	h.wimpevent
o.event:	h.tbevent
o.event:	h.wimpmsg
o.tbevent:	c.tbevent
o.tbevent:	C:h.kernel
o.tbevent:	h.event
o.tbevent:	<Lib$Dir>.tboxlibs.h.wimp
o.tbevent:	<Lib$Dir>.tboxlibs.h.toolbox
o.tbevent:	C:tboxlibint.h.debug
o.tbevent:	h.types
o.tbevent:	h.tbevent
o.wimpevent:	c.wimpevent
o.wimpevent:	C:h.kernel
o.wimpevent:	C:tboxlibint.h.debug
o.wimpevent:	h.event
o.wimpevent:	<Lib$Dir>.tboxlibs.h.wimp
o.wimpevent:	<Lib$Dir>.tboxlibs.h.toolbox
o.wimpevent:	h.types
o.wimpevent:	h.wimpevent
o.wimpmsg:	c.wimpmsg
o.wimpmsg:	C:h.kernel
o.wimpmsg:	C:tboxlibint.h.debug
o.wimpmsg:	h.event
o.wimpmsg:	<Lib$Dir>.tboxlibs.h.wimp
o.wimpmsg:	<Lib$Dir>.tboxlibs.h.toolbox
o.wimpmsg:	h.types
o.wimpmsg:	h.wimpmsg
o.!!version: s.!!version
o.!!version: ^.VersionASM
