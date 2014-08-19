#!/bin/bash

KEYWORDS_MSDOS="\bMS(|-| )DOS|\bDOS\b"
KEYWORDS_MSDOS_EXCLUDE="Giovani dos Santos"
KEYWORDS_MSDOS_CASESENSITIVE_EXCLUDE="DoS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "MS-DOS"

  MSDOS=$(egrep -i "$KEYWORDS_MSDOS" newpages.txt | egrep -iv "$KEYWORDS_MSDOS_EXCLUDE" | egrep -v "$KEYWORDS_MSDOS_CASESENSITIVE_EXCLUDE")

  if [ "$MSDOS" != "" ];
  then
    printf "%s" "$MSDOS" > MS-DOS.txt
    export CATFILE="MS-DOS.txt"
    export CATNAME="MS-DOS"
    $CATEGORIZE
    rm MS-DOS.txt
    unset MSDOS
  fi

  debug_end "MS-DOS"

fi