#!/bin/bash

KEYWORDS_MSDOS="\bMS(|-| )DOS|\bDOS\b"

if [ "$1" == "" ]; #Normal operation
then
  
  egrep -i "$KEYWORDS_MSDOS" newpages.txt >> MS-DOS.txt

  MSDOS=`stat --print=%s MS-DOS.txt`

  if [ $MSDOS -ne 0 ];
  then
    export CATFILE="MS-DOS.txt"
    export CATNAME="MS-DOS"
    $CATEGORIZE
  fi

  rm MS-DOS.txt

fi