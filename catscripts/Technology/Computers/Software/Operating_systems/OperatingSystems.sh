#!/bin/bash

CURRENTDIR="./catscripts/Technology/Computers/Software/Operating_systems"


if [ "$1" == "" ]; #Normal operation
then

  . $CURRENTDIR/FreeBSD/FreeBSD.sh #KEYWORDS_FREEBSD
  . $CURRENTDIR/Linux/Linux.sh #KEYWORDS_LINUX_ALL
  . $CURRENTDIR/MS-DOS/MS-DOS.sh #KEYWORDS_MSDOS
  . $CURRENTDIR/Mac_OS_X/Mac_OS_X.sh
  . $CURRENTDIR/OpenBSD/OpenBSD.sh #KEYWORDS_OPENBSD
  . $CURRENTDIR/Unix/Unix.sh #KEYWORDS_UNIX & KEYWORDS_UNIX_SPECIAL
  . $CURRENTDIR/Windows/Windows.sh #$KEYWORDS_WINDOWS_ALL

  KEYWORDS_OPERATINGSYSTEMS="operating(| )system|(^| )OS\b"
  KEYWORDS_OPERATINGSYSTEMS_OTHER="Net(| )BSD"
  KEYWORDS_OPERATINGSYSTEMS_EXCLUDE="$KEYWORDS_WINDOWS_ALL|$KEYWORDS_UNIX|$KEYWORDS_UNIX_SPECIAL|$KEYWORDS_LINUX_ALL|Mac OS|$KEYWORDS_OPENBSD|$KEYWORDS_FREEBSD|$KEYWORDS_MSDOS"

  egrep -i "$KEYWORDS_OPERATINGSYSTEMS|$KEYWORDS_OPERATINGSYSTEMS_OTHER" newpages.txt | egrep -iv "$KEYWORDS_OPERATINGSYSTEMS_EXCLUDE" >> OperatingSystems.txt
  egrep -i "$KEYWORDS_MSDOS" newpages.txt >> MS-DOS.txt

  OS=`stat --print=%s OperatingSystems.txt`

  if [ $OS -ne 0 ];
  then
    export CATFILE="OperatingSystems.txt"
    export CATNAME="Operating systems"
    $CATEGORIZE
  fi

  rm OperatingSystems.txt

fi

if [ "$1" == "norrun" ];
then
  . $CURRENTDIR/FreeBSD/FreeBSD.sh norrun
  . $CURRENTDIR/Linux/Linux.sh norrun
  . $CURRENTDIR/MS-DOS/MS-DOS.sh norrun
  . $CURRENTDIR/Mac_OS_X/Mac_OS_X.sh norrun
  . $CURRENTDIR/OpenBSD/OpenBSD.sh norrun
  . $CURRENTDIR/Unix/Unix.sh norrun
  . $CURRENTDIR/Windows/Windows.sh norrun

  KEYWORDS_OPERATINGSYSTEMS="operating(| )system|(^| )OS\b"
  KEYWORDS_OPERATINGSYSTEMS_OTHER="Net(| )BSD"
  KEYWORDS_OPERATINGSYSTEMS_EXCLUDE="$KEYWORDS_WINDOWS_ALL|$KEYWORDS_UNIX|$KEYWORDS_UNIX_SPECIAL|$KEYWORDS_LINUX_ALL|Mac OS|$KEYWORDS_OPENBSD|$KEYWORDS_FREEBSD|$KEYWORDS_MSDOS"

fi