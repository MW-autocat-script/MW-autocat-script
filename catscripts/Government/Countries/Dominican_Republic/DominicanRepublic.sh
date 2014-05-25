#!/bin/bash

KEYWORDS_DOMINICANREPUBLIC="Dominican(| )Republic"
KEYWORDS_DOMINICANREPUBLIC_ALL="$KEYWORDS_DOMINICANREPUBLIC"

if [ "$1" == "" ];
then

  debug_start "Dominican Republic"

  DOMINICAN=$(egrep -i "$KEYWORDS_DOMINICANREPUBLIC" newpages.txt)

  if [ "$DOMINICAN" != "" ];
  then
    printf "%s" "$DOMINICAN" > DominicanRepublic.txt
    export CATFILE="DominicanRepublic.txt"
    export CATNAME="Dominican Republic"
    $CATEGORIZE
    rm DominicanRepublic.txt
    unset DOMINICAN
  fi

  debug_start "Dominican Republic"

fi
