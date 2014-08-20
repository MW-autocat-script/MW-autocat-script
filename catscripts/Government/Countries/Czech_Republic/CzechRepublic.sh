#!/bin/bash

KEYWORDS_CZECHREPUBLIC="Czech(| )Republic"
KEYWORDS_CZECHREPUBLIC_ALL="$KEYWORDS_CZECHREPUBLIC"

if [ "$1" == "" ];
then
  
  debug_start "Czech Republic"

  CZECHREPUBLIC=$(egrep -i "$KEYWORDS_CZECHREPUBLIC" "$NEWPAGES")

  if [ "$CZECHREPUBLIC" != "" ];
  then
    printf "%s" "$CZECHREPUBLIC" > CzechRepublic.txt
    export CATFILE="CzechRepublic.txt"
    export CATNAME="Czech Republic"
    $CATEGORIZE
    rm CzechRepublic.txt
    unset CZECHREPUBLIC
  fi

  debug_end "Czech Republic"

fi