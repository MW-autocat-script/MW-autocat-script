#!/bin/bash

KEYWORDS_CAPEVERDE="Cape(| )Verde"
KEYWORDS_CAPEVERDE_ALL="$KEYWORDS_CAPEVERDE"

if [ "$1" == "" ];
then
  
  debug_start "Cape Verde"

  CAPEVERDE=$(egrep -i "$KEYWORDS_CAPEVERDE" newpages.txt)

  if [ "$CAPEVERDE" != "" ];
  then
    printf "%s" "$CAPEVERDE" > CapeVerde.txt
    export CATFILE="CapeVerde.txt"
    export CATNAME="Cape Verde"
    $CATEGORIZE
    rm CapeVerde.txt
    unset CAPEVERDE
  fi

  debug_end "Cape Verde"

fi
