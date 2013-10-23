#!/bin/bash

KEYWORDS_MOTHERBOARD="Motherboard"
KEYWORDS_VIDEO_CARDS="Video card|videocard|graphics card|graphicscard|\bGPU\b|GeForce|Riva TNT|(ATI|AMD) Radeon"
KEYWORDS_SOUND_CARDS="Sound card|Soundcard|audio card|audiocard|audio device|sound.+computer|computer.+sound"
KEYWORDS_PRINTER="\bPrinter"
KEYWORDS_MICROPROCESSOR="Microprocessor|\bPentium|\bi[357]\b|\bAthlon|Celeron|Sempron|\bTurion|\b808[568]\b|80286|80386|80586|CPU|Motorola 680(00|10|20|30|40|50|60)|Motorola 88000|M68k|Intel (4004|8008|8086|8088)|(8085|8086|8088) (assembly|program)|Socket A\b|Socket 5|Socket 7|Socket 370|PGA370|Socket 478|Slot 1\b|Slot 2\b|Socket 423|LGA(| )775|LGA(| )1366|LGA(| )1156|LGA(| )1155|LGA(| )2011|LGA(| )1150|Socket 441|Socket 479|Socket 495|Socket M\b|Socket P\b|Socket G1|Socket G2|Socket G3|Socket 8\b|Socket 603|Socket 604|PowerPC"
KEYWORDS_DATASTORAGE="Data(| )storage|(USB|Flash)(| )drive|memory(| )stick|SD(| )card|SDHC|\bmicro(| )SD|(CD|DVD)(| )drive|(CD|DVD|BD)(| |-|\+)(ROM|R(|W)|burner|writer)|Blu(| |-)ray(| )drive|SCSI|\b(|e)SATA\b|(^| )ATA(|PI)\b|\bPATA\b|IDE(| )drive|Compact(| )Flash"
KEYWORDS_FLOPPY="Floppy(| )(disk|drive)|(o|i)n(| )a(| )floppy"
KEYWORDS_HARD_DRIVE="Hard (disk|drive)|\bSSD|solid(| )state(| )drive"
KEYWORDS_DATASTORAGE_EXCLUDE="$KEYWORDS_HARD_DRIVE|$KEYWORDS_FLOPPY"
KEYWORDS_COMPUTER_HARDWARE="Device driver|Computer hardware|adapter card|\bUSB" #Stuff to put in the parent category
KEYWORDS_COMPUTER_HARDWARE_EXCLUDE="$KEYWORDS_DATASTORAGE|$KEYWORDS_DATASTORAGE_EXCLUDE|$KEYWORDS_MICROPROCESSOR|$KEYWORDS_MOTHERBOARD|$KEYWORDS_PRINTER|$KEYWORDS_SOUND_CARDS|$KEYWORDS_VIDEO_CARDS"

egrep -i "$KEYWORDS_MOTHERBOARD" newpages.txt >> Motherboards.txt
egrep -i "$KEYWORDS_VIDEO_CARDS" newpages.txt >> VideoCards.txt
egrep -i "$KEYWORDS_SOUND_CARDS" newpages.txt >> SoundCards.txt
egrep -i "$KEYWORDS_PRINTER" newpages.txt >> Printers.txt
egrep -i "$KEYWORDS_MICROPROCESSOR" newpages.txt >> Microprocessors.txt
egrep -i "$KEYWORDS_DATASTORAGE" newpages.txt | egrep -iv "$KEYWORDS_DATASTORAGE_EXCLUDE" >> Datastorage.txt
egrep -i "$KEYWORDS_HARD_DRIVE" newpages.txt >> Harddrive.txt
egrep -i "$KEYWORDS_FLOPPY" newpages.txt >> Floppy.txt
egrep -i "$KEYWORDS_COMPUTER_HARDWARE" newpages.txt | egrep -iv "$KEYWORDS_COMPUTER_HARDWARE_EXCLUDE" >> ComputerHardware.txt

MOTHERBOARDS=`stat --print=%s Motherboards.txt`
VIDEOCARDS=`stat --print=%s VideoCards.txt`
SOUNDCARDS=`stat --print=%s SoundCards.txt`
PRINTERS=`stat --print=%s Printers.txt`
MICROPROCESSORS=`stat --print=%s Microprocessors.txt`
DATASTORAGE=`stat --print=%s Datastorage.txt`
HARDDRIVE=`stat --print=%s Harddrive.txt`
FLOPPY=`stat --print=%s Floppy.txt`
HARDWARE=`stat --print=%s ComputerHardware.txt`

if [ $MOTHERBOARDS -ne 0 ];
then
   export CATFILE="Motherboards.txt"
   export CATNAME="Motherboards"
   $CATEGORIZE
fi

if [ $VIDEOCARDS -ne 0 ];
then
   export CATFILE="VideoCards.txt"
   export CATNAME="Video cards"
   $CATEGORIZE
fi

if [ $SOUNDCARDS -ne 0 ];
then
   export CATFILE="SoundCards.txt"
   export CATNAME="Sound cards"
   $CATEGORIZE
fi

if [ $PRINTERS -ne 0 ];
then
   export CATFILE="Printers.txt"
   export CATNAME="Printers"
   $CATEGORIZE
fi

if [ $MICROPROCESSORS -ne 0 ];
then
   export CATFILE="Microprocessors.txt"
   export CATNAME="Microprocessors"
   $CATEGORIZE
fi

if [ $DATASTORAGE -ne 0 ];
then
  export CATFILE="Datastorage.txt"
  export CATNAME="Data storage devices"
  $CATEGORIZE
fi

if [ $HARDDRIVE -ne 0 ];
then
  export CATFILE="Harddrive.txt"
  export CATNAME="Hard drives"
  $CATEGORIZE
fi

if [ $FLOPPY -ne 0 ];
then
  export CATFILE="Floppy.txt"
  export CATNAME="Floppy drives"
  $CATEGORIZE
fi

if [ $HARDWARE -ne 0 ];
then
  export CATFILE="ComputerHardware.txt"
  export CATNAME="Computer hardware"
  $CATEGORIZE
fi

rm Motherboards.txt
rm VideoCards.txt
rm SoundCards.txt
rm Printers.txt
rm Microprocessors.txt
rm Datastorage.txt
rm Harddrive.txt
rm Floppy.txt
rm ComputerHardware.txt
