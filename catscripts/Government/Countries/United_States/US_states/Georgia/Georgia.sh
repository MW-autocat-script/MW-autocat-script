#!/bin/bash

KEYWORDS_ATLANTA="Atlanta"
KEYWORDS_ATLANTA_EXCLUDE="Atlanta(| )Braves"
KEYWORDS_GEORGIA="Georgia|, GA\b"
KEYWORDS_GEORGIA_EXCLUDE="(Country|Republic)(| )of(| )Georgia|$KEYWORDS_ATLANTA"

if [ "$1" == "" ];
then

  debug_start "Georgia"

  GEORGIA=$(egrep -i "$KEYWORDS_GEORGIA" newpages.txt | egrep -iv "$KEYWORDS_GEORGIA_EXCLUDE")
  ATLANTA=$(egrep -i "$KEYWORDS_ATLANTA" newpages.txt | egrep -iv "$KEYWORDS_ATLANTA_EXCLUDE")

  if [ "$GEORGIA" != "" ];
  then
    printf "%s" "$GEORGIA" > Georgia.txt
    export CATFILE="Georgia.txt"
    export CATNAME="Georgia"
    $CATEGORIZE
    rm Georgia.txt
    unset GEORGIA
  fi

  if [ "$ATLANTA" != "" ];
  then
    printf "%s" "$ATLANTA" > Atlanta.txt
    export CATFILE="Atlanta.txt"
    export CATNAME="Atlanta"
    $CATEGORIZE
    rm Atlanta.txt
    unset ATLANTA
  fi

  debug_end "Georgia"

fi