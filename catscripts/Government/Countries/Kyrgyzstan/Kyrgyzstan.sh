#!/bin/bash

KEYWORDS_KYRGYZSTAN="Kyrgyzstan"
KEYWORDS_KYRGYZSTAN_ALL="$KEYWORDS_KYRGYZSTAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kyrgyzstan"

  KYRGYZSTAN=$(egrep -i "$KEYWORDS_KYRGYZSTAN" newpages.txt)

  if [ "$KYRGYZSTAN" != "" ];
  then
    printf "%s" "$KYRGYZSTAN" > Kyrgyzstan.txt
    export CATFILE="Kyrgyzstan.txt"
    export CATNAME="Kyrgyzstan"
    $CATEGORIZE
    rm Kyrgyzstan.txt
    unset KYRGYZSTAN
  fi

  debug_end "Kyrgyzstan"

fi