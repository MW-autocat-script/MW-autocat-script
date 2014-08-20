#!/bin/bash

KEYWORDS_BRUNEI="Brunei"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Brunei"

  BRUNEI=$(egrep -i "$KEYWORDS_BRUNEI" "$NEWPAGES")

  if [ "$BRUNEI" != "" ];
  then
    printf "%s" "$BRUNEI" > Brunei.txt
    export CATFILE="Brunei.txt"
    export CATNAME="Brunei"
    $CATEGORIZE
    rm Brunei.txt
    unset BRUNEI
  fi

  debug_end "Brunei"

fi