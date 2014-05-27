#!/bin/bash

KEYWORDS_SWITZERLAND="Switzerland|Swiss"
KEYWORDS_GENEVA="Geneva"
KEYWORDS_ZURICH="Zurich"
KEYWORDS_SWITZERLAND_EXCLUDE="$KEYWORDS_GENEVA|$KEYWORDS_ZURICH"

if [ "$1" == "" ];
then
  
  debug_start "Switzerland"

  SWITZERLAND=$(egrep -i "$KEYWORDS_SWITZERLAND" newpages.txt | egrep -iv "$KEYWORDS_SWITZERLAND_EXCLUDE")
  GENEVA=$(egrep -i "$KEYWORDS_GENEVA" newpages.txt)
  ZURICH=$(egrep -i "$KEYWORDS_ZURICH" newpages.txt)

  if [ "$SWITZERLAND" != "" ];
  then
    printf "%s" "$SWITZERLAND" > Switzerland.txt
    export CATFILE="Switzerland.txt"
    export CATNAME="Switzerland"
    $CATEGORIZE
    rm Switzerland.txt
    unset SWITZERLAND
  fi

  if [ "$GENEVA" != "" ];
  then
    printf "%s" "$GENEVA" > Geneva.txt
    export CATFILE="Geneva.txt"
    export CATNAME="Geneva"
    $CATEGORIZE
    rm Geneva.txt
    unset GENEVA
  fi

  if [ "$ZURICH" != "" ];
  then
    printf "%s" "$ZURICH" > Zurich.txt
    export CATFILE="Zurich.txt"
    export CATNAME="Zurich"
    $CATEGORIZE
    rm Zurich.txt
    unset ZURICH
  fi

  debug_end "Switzerland"

fi