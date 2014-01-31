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
KEYWORDS_COMPUTER_HARDWARE="Device(| )driver|Computer(| )hardware|adapter(| )card|\bUSB|\bPCI\b|expansion(| )bus" #Stuff to put in the parent category
KEYWORDS_COMPUTER_HARDWARE_EXCLUDE="$KEYWORDS_DATASTORAGE|$KEYWORDS_DATASTORAGE_EXCLUDE|$KEYWORDS_MICROPROCESSOR|$KEYWORDS_MOTHERBOARD|$KEYWORDS_PRINTER|$KEYWORDS_SOUND_CARDS|$KEYWORDS_VIDEO_CARDS"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Computer hardware\n"
  fi

  MOTHERBOARDS="$(egrep -i "$KEYWORDS_MOTHERBOARD" newpages.txt)"
  VIDEOCARDS="$(egrep -i "$KEYWORDS_VIDEO_CARDS" newpages.txt)"
  SOUNDCARDS="$(egrep -i "$KEYWORDS_SOUND_CARDS" newpages.txt)"
  PRINTERS="$(egrep -i "$KEYWORDS_PRINTER" newpages.txt)"
  MICROPROCESSORS="$(egrep -i "$KEYWORDS_MICROPROCESSOR" newpages.txt)"
  DATASTORAGE="$(egrep -i "$KEYWORDS_DATASTORAGE" newpages.txt | egrep -iv "$KEYWORDS_DATASTORAGE_EXCLUDE")"
  HARDDRIVE="$(egrep -i "$KEYWORDS_HARD_DRIVE" newpages.txt)"
  FLOPPY="$(egrep -i "$KEYWORDS_FLOPPY" newpages.txt)"
  HARDWARE="$(egrep -i "$KEYWORDS_COMPUTER_HARDWARE" newpages.txt | egrep -iv "$KEYWORDS_COMPUTER_HARDWARE_EXCLUDE")"

  if [ "$MOTHERBOARDS" != "" ];
  then
    printf "%s" "$MOTHERBOARDS" > Motherboards.txt
    export CATFILE="Motherboards.txt"
    export CATNAME="Motherboards"
    $CATEGORIZE
    rm Motherboards.txt
    unset MOTHERBOARDS
  fi

  if [ "$VIDEOCARDS" != "" ];
  then
    printf "%s" "$VIDEOCARDS" > VideoCards.txt
    export CATFILE="VideoCards.txt"
    export CATNAME="Video cards"
    $CATEGORIZE
    rm VideoCards.txt
    unset VIDEOCARDS
  fi

  if [ "$SOUNDCARDS" != "" ];
  then
    printf "%s" "$SOUNDCARDS" > SoundCards.txt
    export CATFILE="SoundCards.txt"
    export CATNAME="Sound cards"
    $CATEGORIZE
    rm SoundCards.txt
    unset SOUNDCARDS
  fi

  if [ "$PRINTERS" != "" ];
  then
    printf "%s" "$PRINTERS" > Printers.txt
    export CATFILE="Printers.txt"
    export CATNAME="Printers"
    $CATEGORIZE
    rm Printers.txt
    unset PRINTERS
  fi

  if [ "$MICROPROCESSORS" != "" ];
  then
    printf "%s" "$MICROPROCESSORS" > Microprocessors.txt
    export CATFILE="Microprocessors.txt"
    export CATNAME="Microprocessors"
    $CATEGORIZE
    rm Microprocessors.txt
    unset MICROPROCESSORS
  fi

  if [ "$DATASTORAGE" != "" ];
  then
    printf "%s" "$DATASTORAGE" > Datastorage.txt
    export CATFILE="Datastorage.txt"
    export CATNAME="Data storage devices"
    $CATEGORIZE
    rm Datastorage.txt
    unset DATASTORAGE
  fi

  if [ "$HARDDRIVE" != "" ];
  then
    printf "%s" "$HARDDRIVE" > Harddrive.txt
    export CATFILE="Harddrive.txt"
    export CATNAME="Hard drives"
    $CATEGORIZE
    rm Harddrive.txt
    unset HARDDRIVE
  fi

  if [ "$FLOPPY" != "" ];
  then
    printf "%s" "$FLOPPY" > Floppy.txt
    export CATFILE="Floppy.txt"
    export CATNAME="Floppy drives"
    $CATEGORIZE
    rm Floppy.txt
    unset FLOPPY
  fi

  if [ "$HARDWARE" != "" ];
  then
    printf "%s" "$HARDWARE" > ComputerHardware.txt
    export CATFILE="ComputerHardware.txt"
    export CATNAME="Computer hardware"
    $CATEGORIZE
    rm ComputerHardware.txt
    unset HARDWARE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Computer hardware\n"
  fi

fi
