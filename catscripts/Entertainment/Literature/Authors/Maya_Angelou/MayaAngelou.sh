#!/bin/bash

KEYWORDS_MAYAANGELOU="Angelou"

if [ "$1" == "" ];
then
  
  debug_start "Maya Angelou"

  ANGELOU=$(egrep -i "$KEYWORDS_MAYAANGELOU" "$NEWPAGES")

  if [ "$ANGELOU" != "" ];
  then
    printf "%s" "$ANGELOU" > MayaAngelou.txt
    export CATFILE="MayaAngelou.txt"
    export CATNAME="Maya Angelou"
    $CATEGORIZE
    rm MayaAngelou.txt
    unset ANGELOU
  fi

  debug_end "Maya Angelou"

fi