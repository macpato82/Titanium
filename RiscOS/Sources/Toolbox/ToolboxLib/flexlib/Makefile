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
# Makefile for flexlib
#

COMPONENT = flexlib
EXPDIR   ?= ${LIBDIR}${SEP}tboxlibs
HDRS      = flex
OBJS      = flex

include CLibrary

# Dynamic dependencies:
oz.flex:	c.flex
oz.flex:	C:h.kernel
oz.flex:	C:h.swis
oz.flex:	h.opts
oz.flex:	h.flex
oz.flex:	h.swiextra
o.flex:	c.flex
o.flex:	C:h.kernel
o.flex:	C:h.swis
o.flex:	h.opts
o.flex:	h.flex
o.flex:	h.swiextra
