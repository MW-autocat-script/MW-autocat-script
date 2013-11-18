#!/bin/bash

KEYWORDS_MSDOS="\bMS(|-| )DOS|\bDOS\b"

if [ "$1" == "" ]; #Normal operation
then

  MSDOS=`egrep -i "$KEYWORDS_MSDOS" newpages.txt`

  if [ "$MSDOS" != "" ];
  then
    egrep -i "$KEYWORDS_MSDOS" newpages.txt > MS-DOS.txt
    export CATFILE="MS-DOS.txt"
    export CATNAME="MS-DOS"
    $CATEGORIZE
    rm MS-DOS.txt
    unset MSDOS
  fi

fi