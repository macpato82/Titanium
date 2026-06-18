# Copyright 1999 Element 14 Ltd
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
# Makefile for PDebug
#

COMPONENT = PDebug
OBJS      = send
HDRS      = PDebug

include CLibrary

# Dynamic dependencies:
oz.send:	c.send
oz.send:	C:Desk.h.OSBuffer
oz.send:	C:Desk.h.Debug
oz.send:	C:Desk.h.Core
oz.send:	C:h.kernel
oz.send:	C:Desk.h.Error2
oz.send:	C:Desk.h.Error
oz.send:	C:Desk.h.JumpRaw
oz.send:	C:Desk.h.Str
oz.send:	h.PDebug
oz.send:	VersionNum
o.send:	c.send
o.send:	C:Desk.h.OSBuffer
o.send:	C:Desk.h.Debug
o.send:	C:Desk.h.Core
o.send:	C:h.kernel
o.send:	C:Desk.h.Error2
o.send:	C:Desk.h.Error
o.send:	C:Desk.h.JumpRaw
o.send:	C:Desk.h.Str
o.send:	h.PDebug
o.send:	VersionNum
