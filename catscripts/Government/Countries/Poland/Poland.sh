#!/bin/bash

KEYWORDS_POLAND="Poland"
KEYWORDS_WARSAW="Warsaw"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"
KEYWORDS_POLAND_EXCLUDE="$KEYWORDS_WARSAW|$KEYWORDS_AUSCHWITZ"

if [ "$1" == "" ];
then
  
  debug_start "Poland"

  POLAND=$(egrep -i "$KEYWORDS_POLAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_POLAND_EXCLUDE")
  WARSAW=$(egrep -i "$KEYWORDS_WARSAW" "$NEWPAGES")
  AUSCHWITZ=$(egrep -i "$KEYWORDS_AUSCHWITZ" "$NEWPAGES")

  if [ "$POLAND" != "" ];
  then
    printf "%s" "$POLAND" > Poland.txt
    export CATFILE="Poland.txt"
    export CATNAME="Poland"
    $CATEGORIZE
    rm Poland.txt
    unset POLAND
  fi

  if [ "$WARSAW" != "" ];
  then
    printf "%s" "$WARSAW" > Warsaw.txt
    export CATFILE="Warsaw.txt"
    export CATNAME="Warsaw"
    $CATEGORIZE
    rm Warsaw.txt
    unset WARSAW
  fi

  if [ "$AUSCHWITZ" != "" ];
  then
    printf "%s" "$AUSCHWITZ" > Auschwitz.txt
    export CATFILE="Auschwitz.txt"
    export CATNAME="Auschwitz"
    $CATEGORIZE
    rm Auschwitz.txt
    unset AUSCHWITZ
  fi

  debug_end "Poland"

fi