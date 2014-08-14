#!/bin/bash

KEYWORDS_YOYOS="Yo(|-)yo(|s)\b"
KEYWORDS_YOYOS_ALL="$KEYWORDS_YOYOS"

if [ "$1" == "" ];
then
  
  debug_start "Yo-yos"

  YOYOS=$(egrep -i "$KEYWORDS_YOYOS" newpages.txt)

  if [ "$YOYOS" != "" ];
  then
    printf "%s" "$YOYOS" > Yo-yos.txt
    export CATFILE="Yo-yos.txt"
    export CATNAME="Yo-yos"
    $CATEGROIZE
    rm Yo-yos.txt
    unset YOYOS
  fi

  debug_end "Yo-yos"

fi