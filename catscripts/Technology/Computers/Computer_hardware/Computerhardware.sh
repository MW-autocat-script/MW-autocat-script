#!/bin/bash

egrep -i 'Motherboard' newpages.txt >> Motherboards.txt
egrep -i 'Video card|videocard|graphics card|graphicscard|\bGPU\b|GeForce|Riva TNT|(ATI|AMD) Radeon' newpages.txt >> VideoCards.txt
egrep -i 'Sound card|Soundcard|audio card|audiocard|audio device|sound.+computer|computer.+sound' newpages.txt >> SoundCards.txt
egrep -i '\bPrinter' newpages.txt >> Printers.txt
egrep -i 'Microprocessor|\bPentium|\bi[357]\b|\bAthlon|Celeron|Sempron|\bTurion|\b808[568]\b|80286|80386|80586|CPU|Motorola 680(00|10|20|30|40|50|60)|Motorola 88000|M68k|Intel (4004|8008|8086|8088)|(8085|8086|8088) (assembly|program)|Socket A\b|Socket 5|Socket 7|Socket 370|PGA370|Socket 478|Slot 1\b|Slot 2\b|Socket 423|LGA(| )775|LGA(| )1366|LGA(| )1156|LGA(| )1155|LGA(| )2011|LGA(| )1150|Socket 441|Socket 479|Socket 495|Socket M\b|Socket P\b|Socket G1|Socket G2|Socket G3|Socket 8\b|Socket 603|Socket 604|PowerPC' newpages.txt >> Microprocessors.txt
egrep -i 'Hard (disk|drive)' newpages.txt >> Harddrive.txt
egrep -i 'Device driver|Computer hardware' newpages.txt | egrep -iv '(Video|Graphics) card|Motherboard|(sound|audio) card|\bPrinter|hard (disk|drive)' >> ComputerHardware.txt

Motherboards=`stat --print=%s Motherboards.txt`
VideoCards=`stat --print=%s VideoCards.txt`
SoundCards=`stat --print=%s SoundCards.txt`
Printers=`stat --print=%s Printers.txt`
Microprocessors=`stat --print=%s Microprocessors.txt`
HARDDRIVE=`stat --print=%s Harddrive.txt`
HARDWARE=`stat --print=%s ComputerHardware.txt`

if [ $Motherboards -ne 0 ];
then
   export CATFILE="Motherboards.txt"
   export CATNAME="Motherboards"
   ./catscripts/Categorize.sh
fi

if [ $VideoCards -ne 0 ];
then
   export CATFILE="VideoCards.txt"
   export CATNAME="Video cards"
   ./catscripts/Categorize.sh
fi

if [ $SoundCards -ne 0 ];
then
   export CATFILE="SoundCards.txt"
   export CATNAME="Sound cards"
   ./catscripts/Categorize.sh
fi

if [ $Printers -ne 0 ];
then
   export CATFILE="Printers.txt"
   export CATNAME="Printers"
   ./catscripts/Categorize.sh
fi

if [ $Microprocessors -ne 0 ];
then
   export CATFILE="Microprocessors.txt"
   export CATNAME="Microprocessors"
   ./catscripts/Categorize.sh
fi

if [ $HARDDRIVE -ne 0 ];
then
  export CATFILE="Harddrive.txt"
  export CATNAME="Hard drives"
  ./catscripts/Categorize.sh
fi

if [ $HARDWARE -ne 0 ];
then
  export CATFILE="ComputerHardware.txt"
  export CATNAME="Computer hardware"
  ./catscripts/Categorize/sh
fi

rm Motherboards.txt
rm VideoCards.txt
rm SoundCards.txt
rm Printers.txt
rm Microprocessors.txt
rm Harddrive.txt
rm ComputerHardware.txt
