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
# Makefile for wimplib
#

COMPONENT = wimplib
LIBRARIES = ${LIBRARY}
EXPDIR   ?= ${LIBDIR}${SEP}tboxlibs
OBJS      =  \
  waddmsg    \
  wbasesp    \
  wblockcpy  \
  wclosedown \
  wclosete   \
  wclosew    \
  wcommw     \
  wcreatei   \
  wcreatem   \
  wcreatesm  \
  wcreatew   \
  wdecodem   \
  wdeletei   \
  wdeletew   \
  wdragbox   \
  wforcere   \
  wforcere2  \
  wgetcarp   \
  wgeticst   \
  wgetmenu   \
  wgetpoi    \
  wgetrec    \
  wgetwinf   \
  wgetwinfni \
  wgetwino   \
  wgetwst    \
  wgetwst2   \
  winit      \
  wloadte    \
  wopente    \
  wopenw     \
  wopenw2    \
  wplotic    \
  wpoll      \
  wpollidle  \
  wprocessk  \
  wreadpal   \
  wredraww   \
  wremmsg    \
  wreporte   \
  wresizeic  \
  wsendm     \
  wsetcarp   \
  wsetcol    \
  wsetcolm   \
  wsetext    \
  wsetfon    \
  wseticst   \
  wsetmode   \
  wsetpal    \
  wsetpos    \
  wslotsize  \
  wspriteop  \
  wstartt    \
  wsysinfo   \
  wtextcol   \
  wtextop    \
  wtransbl   \
  wupdatew   \
  wwhichi    \
  !!version
SYMLINK_DEPEND = VersionASM
VersionASM:
	ln -s ../VersionASM $@ # Extend the link farm to the copy 1 level up

include CLibrary

# Dynamic dependencies:
o.waddmsg: s.waddmsg
o.waddmsg: hdr.apcs
o.wbasesp: s.wbasesp
o.wbasesp: hdr.apcs
o.wblockcpy: s.wblockcpy
o.wblockcpy: hdr.apcs
o.wclosedown: s.wclosedown
o.wclosedown: hdr.apcs
o.wclosete: s.wclosete
o.wclosete: hdr.apcs
o.wclosew: s.wclosew
o.wclosew: hdr.apcs
o.wcommw: s.wcommw
o.wcommw: hdr.apcs
o.wcreatei: s.wcreatei
o.wcreatei: hdr.apcs
o.wcreatem: s.wcreatem
o.wcreatem: hdr.apcs
o.wcreatesm: s.wcreatesm
o.wcreatesm: hdr.apcs
o.wcreatew: s.wcreatew
o.wcreatew: hdr.apcs
o.wdecodem: s.wdecodem
o.wdecodem: hdr.apcs
o.wdeletei: s.wdeletei
o.wdeletei: hdr.apcs
o.wdeletew: s.wdeletew
o.wdeletew: hdr.apcs
o.wdragbox: s.wdragbox
o.wdragbox: hdr.apcs
o.wforcere: s.wforcere
o.wforcere: hdr.apcs
o.wforcere2: s.wforcere2
o.wforcere2: hdr.apcs
o.wgetcarp: s.wgetcarp
o.wgetcarp: hdr.apcs
o.wgeticst: s.wgeticst
o.wgeticst: hdr.apcs
o.wgetmenu: s.wgetmenu
o.wgetmenu: hdr.apcs
o.wgetpoi: s.wgetpoi
o.wgetpoi: hdr.apcs
o.wgetrec: s.wgetrec
o.wgetrec: hdr.apcs
o.wgetwinf: s.wgetwinf
o.wgetwinf: hdr.apcs
o.wgetwinfni: s.wgetwinfni
o.wgetwinfni: hdr.apcs
o.wgetwino: s.wgetwino
o.wgetwino: hdr.apcs
o.wgetwst: s.wgetwst
o.wgetwst: hdr.apcs
o.wgetwst2: s.wgetwst2
o.wgetwst2: hdr.apcs
o.winit: s.winit
o.winit: hdr.apcs
o.wloadte: s.wloadte
o.wloadte: hdr.apcs
o.wopente: s.wopente
o.wopente: hdr.apcs
o.wopenw: s.wopenw
o.wopenw: hdr.apcs
o.wopenw2: s.wopenw2
o.wopenw2: hdr.apcs
o.wplotic: s.wplotic
o.wplotic: hdr.apcs
o.wpoll: s.wpoll
o.wpoll: hdr.apcs
o.wpollidle: s.wpollidle
o.wpollidle: hdr.apcs
o.wprocessk: s.wprocessk
o.wprocessk: hdr.apcs
o.wreadpal: s.wreadpal
o.wreadpal: hdr.apcs
o.wredraww: s.wredraww
o.wredraww: hdr.apcs
o.wremmsg: s.wremmsg
o.wremmsg: hdr.apcs
o.wreporte: s.wreporte
o.wreporte: hdr.apcs
o.wresizeic: s.wresizeic
o.wresizeic: hdr.apcs
o.wsendm: s.wsendm
o.wsendm: hdr.apcs
o.wsetcarp: s.wsetcarp
o.wsetcarp: hdr.apcs
o.wsetcol: s.wsetcol
o.wsetcol: hdr.apcs
o.wsetcolm: s.wsetcolm
o.wsetcolm: hdr.apcs
o.wsetext: s.wsetext
o.wsetext: hdr.apcs
o.wsetfon: s.wsetfon
o.wsetfon: hdr.apcs
o.wseticst: s.wseticst
o.wseticst: hdr.apcs
o.wsetmode: s.wsetmode
o.wsetmode: hdr.apcs
o.wsetpal: s.wsetpal
o.wsetpal: hdr.apcs
o.wsetpos: s.wsetpos
o.wsetpos: hdr.apcs
o.wslotsize: s.wslotsize
o.wslotsize: hdr.apcs
o.wspriteop: s.wspriteop
o.wspriteop: hdr.apcs
o.wstartt: s.wstartt
o.wstartt: hdr.apcs
o.wsysinfo: s.wsysinfo
o.wsysinfo: hdr.apcs
o.wtextcol: s.wtextcol
o.wtextcol: hdr.apcs
o.wtextop: s.wtextop
o.wtextop: hdr.apcs
o.wtransbl: s.wtransbl
o.wtransbl: hdr.apcs
o.wupdatew: s.wupdatew
o.wupdatew: hdr.apcs
o.wwhichi: s.wwhichi
o.wwhichi: hdr.apcs
o.!!version: s.!!version
o.!!version: ^.VersionASM
