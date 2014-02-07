#!/bin/bash

KEYWORDS_SMALLPOX="Small(| )pox"

if [ "$1" == "" ];
then

  debug_start "Smallpox"

  SMALLPOX="$(egrep -i "$KEYWORDS_SMALLPOX" newpages.txt)"

  if [ "$SMALLPOX" != "" ];
  then
    printf "%s" "$SMALLPOX" > Smallpox.txt
    export CATFILE="Smallpox.txt"
    export CATNAME="Smallpox"
    $CATEGORIZE
    rm Smallpox.txt
    unset SMALLPOX
  fi

  debug_end "Smallpox"

fi
