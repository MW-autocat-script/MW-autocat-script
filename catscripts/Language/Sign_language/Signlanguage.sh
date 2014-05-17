#!/bin/bash

KEYWORDS_SIGNLANGUAGE="Sign(| )language"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Sign language\n"
  fi

  SIGN=$(egrep -i "$KEYWORDS_SIGNLANGUAGE" newpages.txt)

  if [ "$SIGN" != "" ];
  then
    printf "$SIGN" > Signlanguage.txt
    export CATFILE="Signlanguage.txt"
    export CATNAME="Sign language"
    $CATEGORIZE
    rm Signlanguage.txt
    unset SIGN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Sign language\n"
  fi

fi