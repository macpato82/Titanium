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
# Makefile for DragASprit
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 14-Mar-01  SNB          Recreated
#

COMPONENT  = DragASprite
TARGET     = DragASprit
HEADER1    = DragASprit
ROM_SOURCE = Gets.s
RESOURCES  = no

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.DragASprit: s.Gets
o.CortexA7.DragASprit: Hdr:ListOpts
o.CortexA7.DragASprit: Hdr:Macros
o.CortexA7.DragASprit: Hdr:System
o.CortexA7.DragASprit: Hdr:SWIs
o.CortexA7.DragASprit: Hdr:CPU.Arch
o.CortexA7.DragASprit: Hdr:Machine.<Machine>
o.CortexA7.DragASprit: Hdr:Machine.Machine
o.CortexA7.DragASprit: Hdr:CPU.Generic26
o.CortexA7.DragASprit: Hdr:CPU.Generic32
o.CortexA7.DragASprit: Hdr:IO.GenericIO
o.CortexA7.DragASprit: Hdr:RISCOS
o.CortexA7.DragASprit: Hdr:ModHand
o.CortexA7.DragASprit: Hdr:Services
o.CortexA7.DragASprit: Hdr:Proc
o.CortexA7.DragASprit: Hdr:Sprite
o.CortexA7.DragASprit: Hdr:WimpSpace
o.CortexA7.DragASprit: Hdr:Wimp
o.CortexA7.DragASprit: Hdr:VduExt
o.CortexA7.DragASprit: Hdr:FSNumbers
o.CortexA7.DragASprit: Hdr:NewErrors
o.CortexA7.DragASprit: Hdr:DragASprit
o.CortexA7.DragASprit: Hdr:MsgTrans
o.CortexA7.DragASprit: Hdr:ColourTran
o.CortexA7.DragASprit: VersionASM
o.CortexA7.DragASprit: s.DebugOpts
o.CortexA7.DragASprit: s.Support
o.CortexA7.DragASprit: s.StartUp
o.CortexA7.DragASprit: s.Drag
