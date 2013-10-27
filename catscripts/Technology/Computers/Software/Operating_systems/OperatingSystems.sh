#!/bin/bash

CURRENTDIR="./catscripts/Technology/Computers/Software/Operating_systems"

. $CURRENTDIR/FreeBSD/FreeBSD.sh
. $CURRENTDIR/Linux/Linux.sh
. $CURRENTDIR/Mac_OS_X/Mac_OS_X.sh
. $CURRENTDIR/OpenBSD/OpenBSD.sh #KEYWORDS_OPENBSD
. $CURRENTDIR/Unix/Unix.sh
. $CURRENTDIR/Windows/Windows.sh #$KEYWORDS_WINDOWS_ALL

KEYWORDS_OPERATINGSYSTEMS="operating(| )system|(^| )OS\b"
KEYWORDS_MSDOS="MS(|-| )DOS"
KEYWORDS_OPERATINGSYSTEMS_EXCLUDE="$KEYWORDS_WINDOWS_ALL|$KEYWORDS_UNIX|Linux|Mac OS|$KEYWORDS_OPENBSD|Net(| )BSD|Free(| )BSD|\bDOS\b|Google Android|$KEYWORDS_MSDOS"

egrep -i "$KEYWORDS_OPERATINGSYSTEMS" newpages.txt | egrep -iv "$KEYWORDS_OPERATINGSYSTEMS_EXCLUDE" >> OperatingSystems.txt
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

rm OperatingSystems.txt
rm MS-DOS.txt