#!/bin/bash

egrep -i 'operating system|(^| )OS\b|\[\[OS ' newpages.txt | egrep -iv 'Windows|Unix|Linux|Mac OS|Open(| )BSD|Net(| )BSD|Free(| )BSD|\bDOS\b|Google Android|MS(|-| )DOS' >> OperatingSystems.txt

KEYWORDS_MSDOS="MS(|-| )DOS"

egrep -i "$KEYWORDS_MSDOS" newpages.txt >> MS-DOS.txt

OS=`stat --print=%s OperatingSystems.txt`
MSDOS=`stat --print=%s MS-DOS.txt`

if [ $OS -ne 0 ];
then
  export CATFILE="OperatingSystems.txt"
  export CATNAME="Operating systems"
  $CATEGORIZE
fi

if [ $MSDOS -ne 0 ];
then
  export CATFILE="MS-DOS.txt"
  export CATNAME="MS-DOS"
  $CATEGORIZE
fi

CURRENTDIR="./catscripts/Technology/Computers/Software/Operating_systems"

$CURRENTDIR/FreeBSD/FreeBSD.sh
$CURRENTDIR/Linux/Linux.sh
$CURRENTDIR/Mac_OS_X/Mac_OS_X.sh
$CURRENTDIR/OpenBSD/OpenBSD.sh
$CURRENTDIR/Unix/Unix.sh
$CURRENTDIR/Windows/Windows.sh

rm OperatingSystems.txt
rm MS-DOS.txt