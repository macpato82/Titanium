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
# Makefile for ROMFonts
#
# ***********************************
# ***    C h a n g e   L i s t    ***
# ***********************************
# Date       Name         Description
# ----       ----         -----------
# 25-May-94  AMcC         Created.
# 05-Oct-99  SNB          Added ability to build STB Baseline !Fonts application.
#                         Can build UK-only, UK & Japanese, or UK, Japanese & Chinese
#                         by passing in OPTIONS=J, OPTIONS=C or OPTIONS=CJ to the makefile.
#                         UK will build without any OPTIONS flag.
#

#
# Generic options:
#
CHMODFLAGS = -R 0755

include StdTools

#
# Program specific options:
#
SOURCE    = s.ROMFonts
UTF8ENC   = Fonts.Encodings.UTF8
TARGET    = rm.${USERIF}.${COMPONENT}

#
# Generic rules:
#
rom: ${TARGET}
	@echo ${COMPONENT}: rom module built

export: 
	@echo ${COMPONENT}: export complete

install_rom: ${TARGET}
	${CP} ${TARGET} ${INSTDIR}.${COMPONENT} ${CPFLAGS}
	@echo ${COMPONENT}: rom module installed

clean:
	${WIPE} o ${WFLAGS}
	${WIPE} rm.${USERIF} ${WFLAGS}
	${WIPE} Fonts.Encodings.UTF8 ${WFLAGS}
	@echo ${COMPONENT}: cleaned

resources:
	@echo ${COMPONENT}: no resources

# Binary Build Environment augmenting rules
BBETYPE   = local
bbe-local: bbe-generic
	${MKDIR} ${BBEDIR}.Config.DiscBuild
	BBE_Export_File Config.${USERIF}
	BBE_Export_File Config.DiscBuild.${USERIF}
	${MKDIR} ${BBEDIR}.Fonts
	@Set Alias$MFD ${MKDIR} ${BBEDIR}.Fonts.%0
	@Set Alias$CFF ${CP} Fonts.%0 ${BBEDIR}.Fonts.%0 ${CPFLAGS}
	Obey Config.${USERIF}
	@echo ${COMPONENT}: resource files copied

install_:
	Obey Config.DiscBuild.$(USERIF) UK

install_J:
	Obey Config.DiscBuild.$(USERIF) Japan
	@echo Japanese installed.

install_C:
	Obey Config.DiscBuild.$(USERIF) China
	@echo Chinese installed.

install_CJ: install_C install_J
	@echo Unicode installed.

install_JC: install_C install_J
	@echo Unicode installed.

install: install_$(OPTIONS) dirs aliases
	$(CP) LocalUserIFRes:!Boot $(INSTDIR).!Boot $(CPFLAGS)
	$(CP) LocalUserIFRes:CopyLocal $(INSTDIR).CopyLocal $(CPFLAGS)
	$(CHMOD) $(INSTDIR) $(CHMODFLAGS)
	@echo $(COMPONENT): installed to $(INSTDIR)

aliases: 
	@Set Alias$MFD $(MKDIR) $(INSTDIR).%0
	@Set Alias$CFF $(CP) Fonts.%0 $(INSTDIR).%0 $(CPFLAGS)

dirs:
	$(MKDIR) $(INSTDIR)

${UTF8ENC}: ${UTF8ENC}Full
	${SED} -e 's/\x23.*$//' $< > $@
	# search  #<anything><NL>
	# replace <empty line>

o.${USERIF}: ${SOURCE} ${UTF8ENC}
	${MKDIR} o
	${AS} ${ASFLAGS} ${SOURCE} -o $@

rm.${USERIF}.ROMFonts: o.${USERIF}
	${MKDIR} rm.${USERIF}
	${LDBIN} $@ o.${USERIF}
	${SETTYPE} ${TARGET} &FFA

# Dynamic dependencies:
o.Sovereign: s.ROMFonts
o.Sovereign: Hdr:ListOpts
o.Sovereign: Hdr:Macros
o.Sovereign: Hdr:System
o.Sovereign: Hdr:SWIs
o.Sovereign: Hdr:CPU.Arch
o.Sovereign: Hdr:Machine.<Machine>
o.Sovereign: Hdr:Machine.Machine
o.Sovereign: Hdr:CPU.Generic26
o.Sovereign: Hdr:CPU.Generic32
o.Sovereign: Hdr:IO.GenericIO
o.Sovereign: Hdr:RISCOS
o.Sovereign: Hdr:ModHand
o.Sovereign: Hdr:Services
o.Sovereign: Hdr:Proc
o.Sovereign: Hdr:FSNumbers
o.Sovereign: Hdr:NewErrors
o.Sovereign: Hdr:Variables
o.Sovereign: Hdr:ResourceFS
o.Sovereign: Hdr:ImageSize.<ImageSize>
o.Sovereign: VersionASM
o.Sovereign: Hdr:NDRDebug
o.Sovereign: s.<UserIF>_Fonts
o.Sovereign: Fonts.Encodings._Base0
o.Sovereign: Fonts.Encodings._Base0
o.Sovereign: Fonts.Encodings._Base0
o.Sovereign: Fonts.Encodings._Base0
o.Sovereign: Fonts.Encodings._Default
o.Sovereign: Fonts.Encodings._Default
o.Sovereign: Fonts.Encodings._Default
o.Sovereign: Fonts.Encodings._Default
o.Sovereign: Fonts.Encodings.Cyrillic
o.Sovereign: Fonts.Encodings.Cyrillic
o.Sovereign: Fonts.Encodings.Cyrillic
o.Sovereign: Fonts.Encodings.Cyrillic
o.Sovereign: Fonts.Encodings.Greek
o.Sovereign: Fonts.Encodings.Greek
o.Sovereign: Fonts.Encodings.Greek
o.Sovereign: Fonts.Encodings.Greek
o.Sovereign: Fonts.Encodings.Hebrew
o.Sovereign: Fonts.Encodings.Hebrew
o.Sovereign: Fonts.Encodings.Hebrew
o.Sovereign: Fonts.Encodings.Hebrew
o.Sovereign: Fonts.Encodings.Latin1
o.Sovereign: Fonts.Encodings.Latin1
o.Sovereign: Fonts.Encodings.Latin1
o.Sovereign: Fonts.Encodings.Latin1
o.Sovereign: Fonts.Encodings.Latin2
o.Sovereign: Fonts.Encodings.Latin2
o.Sovereign: Fonts.Encodings.Latin2
o.Sovereign: Fonts.Encodings.Latin2
o.Sovereign: Fonts.Encodings.Latin3
o.Sovereign: Fonts.Encodings.Latin3
o.Sovereign: Fonts.Encodings.Latin3
o.Sovereign: Fonts.Encodings.Latin3
o.Sovereign: Fonts.Encodings.Latin4
o.Sovereign: Fonts.Encodings.Latin4
o.Sovereign: Fonts.Encodings.Latin4
o.Sovereign: Fonts.Encodings.Latin4
o.Sovereign: Fonts.Encodings.Latin5
o.Sovereign: Fonts.Encodings.Latin5
o.Sovereign: Fonts.Encodings.Latin5
o.Sovereign: Fonts.Encodings.Latin5
o.Sovereign: Fonts.Encodings.Latin6
o.Sovereign: Fonts.Encodings.Latin6
o.Sovereign: Fonts.Encodings.Latin6
o.Sovereign: Fonts.Encodings.Latin6
o.Sovereign: Fonts.Encodings.Latin7
o.Sovereign: Fonts.Encodings.Latin7
o.Sovereign: Fonts.Encodings.Latin7
o.Sovereign: Fonts.Encodings.Latin7
o.Sovereign: Fonts.Encodings.Latin8
o.Sovereign: Fonts.Encodings.Latin8
o.Sovereign: Fonts.Encodings.Latin8
o.Sovereign: Fonts.Encodings.Latin8
o.Sovereign: Fonts.Encodings.Latin9
o.Sovereign: Fonts.Encodings.Latin9
o.Sovereign: Fonts.Encodings.Latin9
o.Sovereign: Fonts.Encodings.Latin9
o.Sovereign: Fonts.Encodings.Latin10
o.Sovereign: Fonts.Encodings.Latin10
o.Sovereign: Fonts.Encodings.Latin10
o.Sovereign: Fonts.Encodings.Latin10
o.Sovereign: Fonts.Encodings.UTF8
o.Sovereign: Fonts.Encodings.UTF8
o.Sovereign: Fonts.Encodings.UTF8
o.Sovereign: Fonts.Encodings.UTF8
o.Sovereign: Fonts.Encodings.Welsh
o.Sovereign: Fonts.Encodings.Welsh
o.Sovereign: Fonts.Encodings.Welsh
o.Sovereign: Fonts.Encodings.Welsh
o.Sovereign: Fonts.Corpus.Bold.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Medium.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Corpus.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Corpus.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Bold.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Bold.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Medium.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.Oblique.IntMetric0
o.Sovereign: Fonts.Homerton.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Homerton.Medium.Oblique.Outlines0
o.Sovereign: Fonts.Trinity.Bold.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Bold.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Bold.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Medium.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.Italic.IntMetric0
o.Sovereign: Fonts.Trinity.Medium.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Italic.Outlines0
o.Sovereign: Fonts.Trinity.Medium.Italic.Outlines0
o.Sovereign: Fonts.Messages1
o.Sovereign: Fonts.Messages1
o.Sovereign: Fonts.Messages1
o.Sovereign: Fonts.Messages1
