#!/bin/bash

. ./catscripts/Technology/Cameras/Cameras.sh norun #KEYWORDS_CAMERAS_ALL

KEYWORDS_MOTHERBOARD="Motherboard"
KEYWORDS_VIDEO_CARDS="(Video|Graphic(|s))(| )card|\bGPU\b|GeForce|Riva(| )TNT|(ATI|AMD)(| )Radeon"
KEYWORDS_SOUND_CARDS="(Sound|audio)(| )(card|device)|sound.+computer|computer.+sound"
KEYWORDS_PRINTER="\bPrinter"
KEYWORDS_MICROPROCESSOR="Microprocessor|\bPentium|\bi[357]\b|\bAthlon|Celeron|Sempron|\bTurion|\b808[568]\b|80286|80386|80586|CPU|Motorola 680(00|10|20|30|40|50|60)|Motorola 88000|M68k|Intel(| )(4004|8008|8086|8088)|(8085|8086|8088)(| )(assembly|program)|Socket A\b|Socket 5|Socket 7|Socket 370|PGA370|Socket 478|Slot 1\b|Slot 2\b|Socket 423|LGA(| )775|LGA(| )1366|LGA(| )1156|LGA(| )1155|LGA(| )2011|LGA(| )1150|Socket 441|Socket 479|Socket 495|Socket M\b|Socket P\b|Socket G1|Socket G2|Socket G3|Socket 8\b|Socket 603|Socket 604|PowerPC"
KEYWORDS_DATASTORAGE="Data(| )storage|(USB|Flash)(| )drive|memory(| )stick|SD(| )card|SDHC|\bmicro(| )SD|(CD|DVD)(| )drive|(CD|DVD|BD)(| |-|\+)(ROM|R(|W)|burner|writer)|Blu(| |-)ray(| )drive|SCSI|\b(|e)SATA\b|(^| )(|P)ATA(|PI) |IDE(| )drive|Compact(| )Flash"
KEYWORDS_FLOPPY="Floppy(| )(disk|drive)|(o|i)n(| )a(| )floppy"
KEYWORDS_HARD_DRIVE="Hard (disk|drive)|\bSSD|solid(| )state(| )drive"
KEYWORDS_DATASTORAGE_EXCLUDE="$KEYWORDS_HARD_DRIVE|$KEYWORDS_FLOPPY"
KEYWORDS_LAPTOPS="lap(| )top|net(| )book|note(| )book(| )(computer|PC)|Toshiba(| )Satellite"
KEYWORDS_CHROMEBOOKS="Chrome(| )book"
KEYWORDS_MACBOOKS="Mac(| )book"
KEYWORDS_LAPTOPS_EXCLUDE="$KEYWORDS_MACBOOKS|$KEYWORDS_CHROMEBOOKS"
KEYWORDS_COMPUTER_HARDWARE="Device(| )driver|Computer(| )hardware|adapter(| )card|\bUSB|\bPCI\b|expansion(| )bus" #Stuff to put in the parent category
KEYWORDS_COMPUTER_HARDWARE_EXCLUDE="$KEYWORDS_DATASTORAGE|$KEYWORDS_DATASTORAGE_EXCLUDE|$KEYWORDS_MICROPROCESSOR|$KEYWORDS_MOTHERBOARD|$KEYWORDS_PRINTER|$KEYWORDS_SOUND_CARDS|$KEYWORDS_VIDEO_CARDS|$KEYWORDS_LAPTOPS|$KEYWORDS_MACBOOKS|$KEYWORDS_CAMERAS_ALL"

if [ "$1" == "" ];
then

  debug_start "Computer hardware"

  MOTHERBOARDS=$(egrep -i "$KEYWORDS_MOTHERBOARD" "$NEWPAGES")
  VIDEOCARDS=$(egrep -i "$KEYWORDS_VIDEO_CARDS" "$NEWPAGES")
  SOUNDCARDS=$(egrep -i "$KEYWORDS_SOUND_CARDS" "$NEWPAGES")
  PRINTERS=$(egrep -i "$KEYWORDS_PRINTER" "$NEWPAGES")
  MICROPROCESSORS=$(egrep -i "$KEYWORDS_MICROPROCESSOR" "$NEWPAGES")
  DATASTORAGE=$(egrep -i "$KEYWORDS_DATASTORAGE" "$NEWPAGES" | egrep -iv "$KEYWORDS_DATASTORAGE_EXCLUDE")
  HARDDRIVE=$(egrep -i "$KEYWORDS_HARD_DRIVE" "$NEWPAGES")
  FLOPPY=$(egrep -i "$KEYWORDS_FLOPPY" "$NEWPAGES")
  LAPTOPS=$(egrep -i "$KEYWORDS_LAPTOPS" "$NEWPAGES" | egrep -iv "$KEYWORDS_LAPTOPS_EXCLUDE")
  MACBOOKS=$(egrep -i "$KEYWORDS_MACBOOKS" "$NEWPAGES")
  CHROMEBOOKS=$(egrep -i "$KEYWORDS_CHROMEBOOKS" "$NEWPAGES")
  HARDWARE=$(egrep -i "$KEYWORDS_COMPUTER_HARDWARE" "$NEWPAGES" | egrep -iv "$KEYWORDS_COMPUTER_HARDWARE_EXCLUDE")

  categorize "MOTHERBOARDS" "Motherboards"
  categorize "VIDEOCARDS" "Video cards"
  categorize "SOUNDCARDS" "Sound cards"
  categorize "PRINTERS" "Printers"
  categorize "MICROPROCESSORS" "Microprocessors"
  categorize "DATASTORAGE" "Data storage devices"
  categorize "HARDDRIVE" "Hard drives"
  categorize "FLOPPY" "Floppy drives"
  categorize "LAPTOPS" "Laptops"
  categorize "MACBOOKS" "MacBooks"
  categorize "CHROMEBOOKS" "Chromebooks"
  categorize "HARDWARE" "Computer hardware"

  debug_end "Computer hardware"

fi
