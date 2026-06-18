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
# Makefile for Display Manager
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 23-Mar-01  SNB          Recreated.
#

COMPONENT  = DisplayManager
TARGET     = Display
ROM_SOURCE = GetAll.s
INSTRES_FILES = Templates
INSTRES_VERSION = Messages

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Display: s.GetAll
o.CortexA7.Display: Hdr:ListOpts
o.CortexA7.Display: Hdr:Macros
o.CortexA7.Display: Hdr:System
o.CortexA7.Display: Hdr:SWIs
o.CortexA7.Display: Hdr:CPU.Arch
o.CortexA7.Display: Hdr:Machine.<Machine>
o.CortexA7.Display: Hdr:Machine.Machine
o.CortexA7.Display: Hdr:CPU.Generic26
o.CortexA7.Display: Hdr:CPU.Generic32
o.CortexA7.Display: Hdr:IO.GenericIO
o.CortexA7.Display: Hdr:RISCOS
o.CortexA7.Display: Hdr:ModHand
o.CortexA7.Display: Hdr:Services
o.CortexA7.Display: Hdr:Wimp
o.CortexA7.Display: Hdr:WimpSpace
o.CortexA7.Display: Hdr:MsgTrans
o.CortexA7.Display: Hdr:MsgMenus
o.CortexA7.Display: Hdr:ResourceFS
o.CortexA7.Display: Hdr:NdrDebug
o.CortexA7.Display: Hdr:HostFS
o.CortexA7.Display: Hdr:DDVMacros
o.CortexA7.Display: Hdr:Proc
o.CortexA7.Display: Hdr:Messages
o.CortexA7.Display: Hdr:Sprite
o.CortexA7.Display: Hdr:VduExt
o.CortexA7.Display: Hdr:FileTypes
o.CortexA7.Display: Hdr:Variables
o.CortexA7.Display: Hdr:FSNumbers
o.CortexA7.Display: Hdr:NewErrors
o.CortexA7.Display: Hdr:ScrModes
o.CortexA7.Display: Hdr:ColourTran
o.CortexA7.Display: Hdr:GraphicsV
o.CortexA7.Display: VersionASM
o.CortexA7.Display: s.Front
o.CortexA7.Display: s.Errors
o.CortexA7.Display: s.Module
o.CortexA7.Display: s.Icon
o.CortexA7.Display: s.Window
o.CortexA7.Display: s.Menu
o.CortexA7.Display: s.Message
o.CortexA7.Display: s.Mouse
o.CortexA7.Display: s.Mode
o.CortexA7.Display: s.MsgTrans
