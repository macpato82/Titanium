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
# Makefile for Filer
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 14-mar-01  SNB          Recreated
#

COMPONENT     = Filer
INSTRES_FILES = Templates
HELPSRC       = s.HelpSrc
TOKHELPSRC    = ${TOKENSOURCE}

include StdTools
include AAsmModule

# Dynamic dependencies:
o.CortexA7.Filer: s.Filer
o.CortexA7.Filer: s.Gets
o.CortexA7.Filer: Hdr:ListOpts
o.CortexA7.Filer: Hdr:Macros
o.CortexA7.Filer: Hdr:System
o.CortexA7.Filer: Hdr:SWIs
o.CortexA7.Filer: Hdr:CPU.Arch
o.CortexA7.Filer: Hdr:Machine.<Machine>
o.CortexA7.Filer: Hdr:Machine.Machine
o.CortexA7.Filer: Hdr:CPU.Generic26
o.CortexA7.Filer: Hdr:CPU.Generic32
o.CortexA7.Filer: Hdr:IO.GenericIO
o.CortexA7.Filer: Hdr:RISCOS
o.CortexA7.Filer: Hdr:Services
o.CortexA7.Filer: Hdr:CMOS
o.CortexA7.Filer: Hdr:ModHand
o.CortexA7.Filer: Hdr:FSNumbers
o.CortexA7.Filer: Hdr:HighFSI
o.CortexA7.Filer: Hdr:NewErrors
o.CortexA7.Filer: Hdr:Wimp
o.CortexA7.Filer: Hdr:WimpSpace
o.CortexA7.Filer: Hdr:Messages
o.CortexA7.Filer: Hdr:Sprite
o.CortexA7.Filer: Hdr:UpCall
o.CortexA7.Filer: Hdr:Proc
o.CortexA7.Filer: Hdr:VduExt
o.CortexA7.Filer: Hdr:Tokens
o.CortexA7.Filer: Hdr:Hourglass
o.CortexA7.Filer: Hdr:Econet
o.CortexA7.Filer: Hdr:Font
o.CortexA7.Filer: Hdr:FileTypes
o.CortexA7.Filer: Hdr:FilerAct
o.CortexA7.Filer: Hdr:MsgTrans
o.CortexA7.Filer: Hdr:MsgMenus
o.CortexA7.Filer: Hdr:ResourceFS
o.CortexA7.Filer: Hdr:Variables
o.CortexA7.Filer: Hdr:DragASprit
o.CortexA7.Filer: Hdr:Territory
o.CortexA7.Filer: Hdr:Switcher
o.CortexA7.Filer: Hdr:EnvNumbers
o.CortexA7.Filer: VersionASM
o.CortexA7.Filer: s.Options
o.CortexA7.Filer: s.DebugFlags
o.CortexA7.Filer: s.WkspEtc
o.CortexA7.Filer: s.ModHdr
o.CortexA7.Filer: s.TokHelpSrc
o.CortexA7.Filer: s.Commands
o.CortexA7.Filer: s.Errors
o.CortexA7.Filer: s.GoFiler
o.CortexA7.Filer: s.ModStuff
o.CortexA7.Filer: s.MiscEvents
o.CortexA7.Filer: s.Open
o.CortexA7.Filer: s.Close
o.CortexA7.Filer: s.Redraw
o.CortexA7.Filer: s.MenuIn
o.CortexA7.Filer: s.MsgsIn
o.CortexA7.Filer: s.DragEnd
o.CortexA7.Filer: s.Clicks
o.CortexA7.Filer: s.SaveDisply
o.CortexA7.Filer: s.SelUtils
o.CortexA7.Filer: s.FileType
o.CortexA7.Filer: s.DelViews
o.CortexA7.Filer: s.SendMsg
o.CortexA7.Filer: s.OpenDir
o.CortexA7.Filer: s.CPM
o.CortexA7.Filer: s.CacheDir
o.CortexA7.Filer: s.SussApplic
o.CortexA7.Filer: s.SortDir
o.CortexA7.Filer: s.WinUtils
o.CortexA7.Filer: s.SprUtils
o.CortexA7.Filer: s.StrUtils
o.CortexA7.Filer: s.MiscUtils
o.CortexA7.Filer: s.FreeLists
o.CortexA7.Filer: s.SendAck
o.CortexA7.Filer: s.PathMunge
o.CortexA7.Filer: s.RMAlloc
o.CortexA7.Filer: s.CMOSUtils
o.CortexA7.Filer: s.MenuCreate
o.CortexA7.Filer: s.IconUtils
o.CortexA7.Filer: s.MenuUtils
o.CortexA7.Filer: s.DecodeMenu
o.CortexA7.Filer: s.OSCliInBox
o.CortexA7.Filer: s.Recache
o.CortexA7.Filer: s.SelStuff
o.CortexA7.Filer: s.ActionStrt
o.CortexA7.Filer: s.UpCall
o.CortexA7.Filer: s.ResGets
o.CortexA7.Filer: s.Scroll
o.CortexA7.Filer: s.KeyPress
