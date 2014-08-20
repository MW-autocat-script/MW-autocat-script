#!/bin/bash

KEYWORDS_DJIBOUTI="Djibouti"
KEYWORDS_DJIBOUTI_ALL="$KEYWORDS_DJIBOUTI"

if [ "$1" == "" ];
then
  
  debug_start "Djibouti"

  DJIBOUTI=$(egrep -i "$KEYWORDS_DJIBOUTI" "$NEWPAGES")

  if [ "$DJIBOUTI" != "" ];
  then
    printf "%s" "$DJIBOUTI" > Djibouti.txt
    export CATFILE="Djibouti.txt"
    export CATNAME="Djibouti"
    $CATEGORIZE
    rm Djibouti.txt
    unset DJIBOUTI
  fi

  debug_end "Djibouti"

fi