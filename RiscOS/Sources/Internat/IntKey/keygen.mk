# Copyright 2009 Castle Technology Ltd
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
# Makefile for keygen

OBJS = keygen throwback unicdata

include HostApp

# Dynamic dependencies:
o.keygen:	c.keygen
o.keygen:	C:Global.h.Keyboard
o.keygen:	C:Unicode.h.iso10646
o.keygen:	h.unicdata
o.keygen:	h.structures
o.keygen:	C:Unicode.h.iso10646
o.keygen:	h.throwback
o.throwback:	c.throwback
o.throwback:	h.throwback
o.throwback:	C:h.swis
o.throwback:	C:h.kernel
o.unicdata:	c.unicdata
o.unicdata:	C:Unicode.h.iso10646
o.unicdata:	h.unicdata
