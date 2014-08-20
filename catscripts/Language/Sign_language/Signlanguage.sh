#!/bin/bash

KEYWORDS_SIGNLANGUAGE="Sign(| )language"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sign language"

  SIGN=$(egrep -i "$KEYWORDS_SIGNLANGUAGE" "$NEWPAGES")

  if [ "$SIGN" != "" ];
  then
    printf "%s" "$SIGN" > Signlanguage.txt
    export CATFILE="Signlanguage.txt"
    export CATNAME="Sign language"
    $CATEGORIZE
    rm Signlanguage.txt
    unset SIGN
  fi

  debug_end "Sign language"

fi