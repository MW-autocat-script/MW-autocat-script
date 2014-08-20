#!/bin/bash

KEYWORDS_BEOWULF="Beowulf|Unferth|Hrothgar|Grendel"

if [ "$1" == "" ];
then
  
  debug_start "Beowulf"

  BEOWULF=$(egrep -i "$KEYWORDS_BEOWULF" "$NEWPAGES")

  if [ "$BEOWULF" != "" ];
  then
    printf "%s" "$BEOWULF" > Beowulf.txt
    export CATFILE="Beowulf.txt"
    export CATNAME="Beowulf"
    $CATEGORIZE
    rm Beowulf.txt
    unset BEOWULF
  fi

  debug_end "Beowulf"

fi