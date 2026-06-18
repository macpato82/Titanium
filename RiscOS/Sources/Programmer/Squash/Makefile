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
# Makefile for Squash module
#

ifeq (${COMPONENT},SquashLib)

TARGET      = Squash
LIBRARIES   = ${LIBRARY}
HDRS        = cssr zssr defs
OBJS        = cssr zssr

include CLibrary

else

COMPONENT   = Squash
HDRS        =
ASMHDRS     = Squash
CMHGDEPENDS = compress
OBJS        = compress comp_ass cssr debug \
              zcat_ass12 zssr

include CModule

endif

# Dynamic dependencies:
o.compress:	c.compress
o.compress:	C:h.swis
o.compress:	C:h.kernel
o.compress:	C:Global.h.NewErrors
o.compress:	h.debug
o.compress:	h.cssr
o.compress:	h.defs
o.compress:	h.zssr
o.compress:	h.defs
o.compress:	h.SquashHdr
h.SquashHdr:	cmhg.SquashHdr
h.SquashHdr:	VersionNum
o.comp_ass: s.comp_ass
o.comp_ass: hdr:ListOpts
o.comp_ass: hdr:Macros
o.comp_ass: hdr:System
o.comp_ass: Hdr:SWIs
o.comp_ass: Hdr:CPU.Arch
o.comp_ass: Hdr:Machine.<Machine>
o.comp_ass: Hdr:Machine.Machine
o.comp_ass: Hdr:CPU.Generic26
o.comp_ass: Hdr:CPU.Generic32
o.comp_ass: Hdr:IO.GenericIO
o.comp_ass: Hdr:RISCOS
o.comp_ass: hdr.debug
o.cssr:	c.cssr
o.cssr:	C:h.kernel
o.cssr:	h.debug
o.cssr:	h.cssr
o.cssr:	h.defs
o.debug: s.debug
o.debug: Hdr:ListOpts
o.debug: Hdr:Macros
o.debug: Hdr:System
o.debug: Hdr:SWIs
o.debug: Hdr:CPU.Arch
o.debug: Hdr:Machine.<Machine>
o.debug: Hdr:Machine.Machine
o.debug: Hdr:CPU.Generic26
o.debug: Hdr:CPU.Generic32
o.debug: Hdr:IO.GenericIO
o.debug: Hdr:RISCOS
o.debug: Hdr:ModHand
o.debug: Hdr:HostFS
o.zcat_ass12: s.zcat_ass12
o.zcat_ass12: s.zcat_ass
o.zcat_ass12: hdr:ListOpts
o.zcat_ass12: hdr:Macros
o.zcat_ass12: hdr:System
o.zcat_ass12: Hdr:SWIs
o.zcat_ass12: Hdr:CPU.Arch
o.zcat_ass12: Hdr:Machine.<Machine>
o.zcat_ass12: Hdr:Machine.Machine
o.zcat_ass12: Hdr:CPU.Generic26
o.zcat_ass12: Hdr:CPU.Generic32
o.zcat_ass12: Hdr:IO.GenericIO
o.zcat_ass12: Hdr:RISCOS
o.zcat_ass12: hdr:CPU.Arch
o.zssr:	c.zssr
o.zssr:	C:h.kernel
o.zssr:	h.debug
o.zssr:	h.zssr
o.zssr:	h.defs
o.SquashHdr:	cmhg.SquashHdr
o.SquashHdr:	VersionNum
