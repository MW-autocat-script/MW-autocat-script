#!/bin/bash

KEYWORDS_ASTHMA="Asthma"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Asthma"

  ASTHMA=$(egrep -i "$KEYWORDS_ASTHMA" newpages.txt)

  if [ "$ASTHMA" != "" ];
  then
    printf "%s" "$ASTHMA" > Asthma.txt
    export CATFILE="Asthma.txt"
    export CATNAME="Asthma"
    $CATEGORIZE
    rm Asthma.txt
    unset ASTHMA
  fi

  debug_end "Asthma"

fi