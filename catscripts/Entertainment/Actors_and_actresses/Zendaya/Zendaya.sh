#!/bin/bash

KEYWORDS_ZENDAYA="Zendaya"

if [ "$1" == "" ];
then
  
  debug_start "Zendaya"

  ZENDAYA="$(egrep -i "$KEYWORDS_ZENDAYA" newpages.txt)"

  if [ "$ZENDAYA" != "" ];
  then
    printf "%s" "$ZENDAYA" > Zendaya.txt
    export CATFILE="Zendaya.txt"
    export CATNAME="Zendaya"
    $CATEGORIZE
    rm Zendaya.txt
    unset ZENDAYA
  fi

  debug_end "Zendaya"

fi