#!/bin/bash

KEYWORDS_GEORGIAREPUBLIC="(Republic|Country)(| )of(| )Georgia"
KEYWORDS_GEORGIAREPUBLIC_ALL="$KEYWORDS_GEORGIAREPUBLIC"

if [ "$1" == "" ];
then

  debug_start "Georgia (country)"

  GEORGIAREPUBLIC=$(egrep -i "$KEYWORDS_GEORGIAREPUBLIC" "$NEWPAGES")

  if [ "$GEORGIAREPUBLIC" != "" ];
  then
    printf "%s" "$GEORGIAREPUBLIC" > Georgia.txt
    export CATFILE="Georgia.txt"
    export CATNAME="Georgia (country)"
    $CATEGORIZE
    rm Georgia.txt
    unset GEORGIAREPUBLIC
  fi

  debug_end "Georgia (country)"

fi