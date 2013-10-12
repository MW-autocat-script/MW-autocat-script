#!/bin/bash

egrep -i 'VMware|virtual machine' newpages.txt >> Emulation.txt #virtual machine
egrep -i 'Virtual(| )PC' newpages.txt >> Emulation.txt #virtual machine
egrep -i 'Virtual(| )Box' newpages.txt >> Emulation.txt #virtual machine
egrep -i 'Parallels(| )Desktop|Parallels(| )Workstation' newpages.txt >> Emulation.txt #virtual machine
egrep -i '\bSIMH' newpages.txt >> Emulation.txt #Multiple system emulator (mostly old mainframes)
egrep -i '\bXen\b' newpages.txt | egrep -iv "Half(|-)(| )Life" >> Emulation.txt #virtual machine / hypervisor
egrep -i 'Aranym' newpages.txt >> Emulation.txt #Atari Falcon emulator
egrep -i 'QEMU' newpages.txt >> Emulation.txt #Multiple system / processor emulator
egrep -i 'M\.E\.S\.S\.|Multi(| )Emulator(| )Super(| )System' newpages.txt >> Emulation.txt #Multiple system emulator
egrep -i '\bMAME\b' newpages.txt | egrep -iv "Mame(| )Biram(| )Diouf" >> Emulation.txt #Arcade system emulator
egrep -i 'Bochs' newpages.txt >> Emulation.txt #x86 / x86_64 PC emulator
egrep -i 'Pear(| )PC' newpages.txt >> Emulation.txt #PowerPC Mac emulator
egrep -i 'WinUAE' newpages.txt >> Emulation.txt #Amiga emulator
egrep -i 'Nesticle' newpages.txt >> Emulation.txt #NES emulator
egrep -i '\bFCEU' newpages.txt >> Emulation.txt #NES emulator
egrep -i 'JNES' newpages.txt >> Emulation.txt #NES emulator
egrep -i 'SNES(| )9x' newpages.txt >> Emulation.txt #Super Nintendo emulator
egrep -i 'ZSNES' newpages.txt >> Emulation.txt #Super Nintendo emulator
egrep -i 'KiGB' newpages.txt >> Emulation.txt #Game Boy emulator
egrep -i '\bGEST\b' newpages.txt >> Emulation.txt #Game Boy / Game Boy cColor emulator
egrep -i '\bGNU(| )Boy' newpages.txt >> Emulation.txt #Game Boy emulator
egrep -i 'Visual(| )Boy(| )Advance' newpages.txt >> Emulation.txt #Game Boy / Game Boy Advance emulator
egrep -i 'NO\$GBA' newpages.txt >> Emulation.txt #Game Boy Advance / Nintendo DS emulator
egrep -i 'Boycott(| )Advance' newpages.txt >> Emulation.txt #Game Boy Advance emulator
egrep -i 'Desmume' newpages.txt >> Emulation.txt #Nintendo DS emulator
egrep 'iDeaS' newpages.txt >> Emulation.txt
egrep -i 'Ideas(| )emulator' newpages.txt >> Emulation.txt
egrep -i 'Kega(| )Fusion' newpages.txt >> Emulation.txt #Sega Genesis emulator
egrep -i 'Dolphin.+emulator|emulator.+Dolphin' newpages.txt >> Emulation.txt #Nintendo Gamecube / Nintendo Wii emulator
egrep -i 'Game(| )Cube.+emulator' newpages.txt >> Emulation.txt
egrep -i 'Chankast' newpages.txt >> Emulation.txt #Sega Dreamcast emulator
egrep -i 'Wii.+emulator' newpages.txt >> Emulation.txt
egrep -i 'Xbox(| )(|360)(| )emulator' newpages.txt >> Emulation.txt
egrep -i 'PCSX' newpages.txt >> Emulation.txt #PlayStation emulator
egrep -i 'Play(| )Station.+emulator' newpages.txt >> Emulation.txt
egrep -i 'Play(| )Station.+2.+emulator|\bPS(| )2.+emulator' newpages.txt >> Emulation.txt
egrep -i 'JPCSP' newpages.txt >> Emulation.txt
egrep -i 'PSP.+emulator' newpages.txt >> Emulation.txt
egrep -i 'epsxe' newpages.txt >> Emulation.txt #PlayStation emulator
egrep -i 'Project.+64' newpages.txt >> Emulation.txt #Nintendo 64 emulator
egrep -i 'DOSBOX' newpages.txt >> Emulation.txt #x86 PC emulator
egrep -i 'DOSEMU\b' newpages.txt >> Emulation.txt #x86 PC emulator
egrep -i '\bvmac\b' newpages.txt >> Emulation.txt #68k Macintosh emulator
egrep -i 'Basilisk(| )II' newpages.txt >> Emulation.txt #68k Macintosh emulator
egrep -i 'Sheep(| )Shaver' newpages.txt >> Emulation.txt #PowerPC Macintosh emulator

EMULATION=`stat --print=%s Emulation.txt`

if [ $EMULATION -ne 0 ];
then
  export CATFILE="Emulation.txt"
  export CATNAME="Emulation and virtualization"
  $CATEGORIZE
fi

rm Emulation.txt