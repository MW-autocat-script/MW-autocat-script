#!/bin/bash

KEYWORDS_EMULATIONANDVIRTUALIZATION="emulator|Emulation|virtualization|virtual(| )machine"

#Computer emulators

KEYWORDS_ARANYM="Aranym"
KEYWORDS_BASILISKII="Basilisk(| )II"
KEYWORDS_BOCHS="Bochs"
KEYWORDS_DOSBOX="DOSBOX"
KEYWORDS_DOSEMU="DOSEMU\b"
KEYWORDS_MESS="M\.E\.S\.S\.|Multi(| )Emulator(| )Super(| )System"
KEYWORDS_PARALLELS="Parallels(| )(Desktop|Workstation)"
KEYWORDS_PEARPC="Pear(| )PC"
KEYWORDS_SHEEPSHAVER="Sheep(| )Shaver"
KEYWORDS_SIMH="SIMH"
KEYWORDS_QEMU="QEMU"
KEYWORDS_VIRTUALBOX="Virtual(| )Box"
KEYWORDS_VIRTUALPC="Virtual(| )PC"
KEYWORDS_VMAC="\bVMAC\b"
KEYWORDS_VMWARE="VM(| )ware"
KEYWORDS_WINUAE="WinUAE"
KEYWORDS_XEN="\bXen"
KEYWORDS_XEN_EXCLUDE="Half(|-)(| )Life"

#Arcade emulators

KEYWORDS_MAME="\bMAME\b"
KEYWORDS_MAME_EXCLUDE="Mame(| )Biram(| )Diouf"


#Console emulators

KEYWORDS_BOYCOTTADVANCE="Boycott(| )Advance"
KEYWORDS_CHANKAST="Chankast"
KEYWORDS_DESMUME="Desmume"
KEYWORDS_EPSXE="epsxe"
KEYWORDS_FCEU="FCEU"
KEYWORDS_GEST="\bGEST\b"
KEYWORDS_GNUBOY="\bGNU(| )Boy"
KEYWORDS_IDEAS="Ideas(| )emulator"
KEYWORDS_IDEAS_CASESENSITIVE="iDeaS"
KEYWORDS_JNES="JNES"
KEYWORDS_JPCSP="JPCSP"
KEYWORDS_KEGAFUSION="Kega(| )Fusion"
KEYWORDS_KIGB="KiGB"
KEYWORDS_NESTICLE="Nesticle"
KEYWORDS_NOCASHGBA="NO\$GBA|Nocash(| )GBA"
KEYWORDS_PCSX="PCSX"
KEYWORDS_PROJECT64="Project(| )64"
KEYWORDS_SNES9X="SNES(| )9x"
KEYWORDS_VISUALBOYADVANCE="Visual(| )Boy(| )Advance"
KEYWORDS_ZSNES="ZSNES"


#Begin consolidating this mess...

KEYWORDS_EMU_COMPUTER="$KEYWORDS_ARANYM|$KEYWORDS_BASILISKII|$KEYWORDS_BOCHS|$KEYWORDS_DOSBOX|$KEYWORDS_DOSEMU|$KEYWORDS_MESS|$KEYWORDS_PARALLELS|$KEYWORDS_PEARPC|$KEYWORDS_QEMU|$KEYWORDS_SHEEPSHAVER|$KEYWORDS_SIMH|$KEYWORDS_VIRTUALBOX|$KEYWORDS_VIRTUALPC|$KEYWORDS_VMAC|$KEYWORDS_VMWARE|$KEYWORDS_WINUAE|$KEYWORDS_XEN"

KEYWORDS_EMU_CONSOLE="$KEYWORDS_BOYCOTTADVANCE|$KEYWORDS_CHANKAST|$KEYWORDS_DESMUME|$KEYWORDS_EPSXE|$KEYWORDS_FCEU|$KEYWORDS_GEST|$KEYWORDS_GNUBOY|$KEYWORDS_IDEAS|$KEYWORDS_JNES|$KEYWORDS_JPCSP|$KEYWORDS_KEGAFUSION|$KEYWORDS_KIGB|$KEYWORDS_NESTICLE|$KEYWORDS_NOCASHGBA|$KEYWORDS_PCSX|$KEYWORDS_PROJECT64|$KEYWORDS_SNES9X|$KEYWORDS_VISUALBOYADVANCE|$KEYWORDS_ZSNES"

KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER="$KEYWORDS_EMU_COMPUTER|$KEYWORDS_EMU_CONSOLE|$KEYWORDS_MAME"
KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER_EXCLUDE="$KEYWORDS_MAME_EXCLUDE|$KEYWORDS_XEN_EXCLUDE"
KEYWORDS_EMULATION_ALL="$KEYWORDS_EMULATIONANDVIRTUALIZATION|$KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER|$KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER_EXCLUDE"


if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_EMULATIONANDVIRTUALIZATION|$KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER" newpages.txt | egrep -iv "$KEYWORDS_EMULATIONANDVIRTUALIZATION_OTHER_EXCLUDE" >> Emulation.txt
  egrep "$KEYWORDS_IDEAS_CASESENSITIVE" newpages.txt >> Emulation.txt

  EMULATION=`stat --print=%s Emulation.txt`

  if [ $EMULATION -ne 0 ];
  then
    export CATFILE="Emulation.txt"
    export CATNAME="Emulation and virtualization"
    $CATEGORIZE
  fi

  rm Emulation.txt

fi