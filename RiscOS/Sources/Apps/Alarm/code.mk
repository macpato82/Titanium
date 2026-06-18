# Copyright 2020 RISC OS Open Ltd
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
# Makefile for 'Code' blob

COMPONENT  = Code
override TARGET = Resources${SEP}Code
OBJS       = Browser
CUSTOMLINK = custom

include StdTools

# Override filetype of target (so 'all' phony rule has correct dependency)
SUFFIX_ABSOLUTE = ${SUFFIX_DATA}

include CApp

${TARGET}${SUFFIX_DATA}: ${DIRS} ${APP_OBJS_}
	${LDBIN} $@ ${APP_OBJS_}

# Dynamic dependencies:
o.Browser: s.Browser
o.Browser: Hdr:ListOpts
o.Browser: Hdr:Macros
o.Browser: Hdr:System
o.Browser: Hdr:SWIs
o.Browser: Hdr:CPU.Arch
o.Browser: Hdr:Machine.<Machine>
o.Browser: Hdr:Machine.Machine
o.Browser: Hdr:CPU.Generic26
o.Browser: Hdr:CPU.Generic32
o.Browser: Hdr:IO.GenericIO
o.Browser: Hdr:RISCOS
o.Browser: Hdr:FSNumbers
o.Browser: Hdr:NewErrors
o.Browser: Hdr:Wimp
o.Browser: Hdr:MsgTrans
o.Browser: Hdr:Territory
