#!/bin/bash

KEYWORDS_OLYMPICS="Ol(y|i)mpic"

KEYWORDS_SOCHI2014="$KEYWORDS_OLYMPICS.+sochi|sochi.+$KEYWORDS_OLYMPICS|2014(| )(Winter|)(| )(Games|$KEYWORDS_OLYMPICS)|$KEYWORDS_OLYMPICS.+2014"
KEYWORDS_LONDON2012="$KEYWORDS_OLYMPICS.+london|london.+$KEYWORDS_OLYMPICS|2012(| )(Summer|)(| )(Games|$KEYWORDS_OLYMPICS)|$KEYWORDS_OLYMPICS.+2012"
KEYWORDS_ANCIENTGREEKOLYMPICS="ancient.+$KEYWORDS_OLYMPICS|$KEYWORDS_OLYMPICS.+ancient"

KEYWORDS_OLYMPICS_EXCLUDE="$KEYWORDS_ANCIENTGREEKOLYMPICS|$KEYWORDS_LONDON2012|$KEYWORDS_SOCHI2014"

if [ "$1" == "" ];
then

  debug_start "Olympics"
  
  SOCHI2014="$(egrep -i "$KEYWORDS_SOCHI2014" newpages.txt)"

  if [ "$SOCHI2014" != "" ];
  then
    printf "%s" "$SOCHI2014" > Sochi2014.txt
    export CATFILE="Sochi2014.txt"
    export CATNAME="2014 Winter Olympics"
    unset SOCHI2014
    $CATEGORIZE
    rm Sochi2014.txt
  fi

  LONDON2012="$(egrep -i "$KEYWORDS_LONDON2012" newpages.txt)"

  if [ "$LONDON2012" != "" ];
  then
    printf "%s" "$LONDON2012" > London2012.txt
    export CATFILE="London2012.txt"
    export CATNAME="2012 Summer Olympics"
    unset LONDON2012
    $CATEGORIZE
    rm London2012.txt
  fi

  ANCIENTGREEKOLYMPICS="$(egrep -i "$KEYWORDS_ANCIENTGREEKOLYMPICS" newpages.txt)"

  if [ "$ANCIENTGREEKOLYMPICS" != "" ];
  then
    printf "%s" "$ANCIENTGREEKOLYMPICS" > AncientGreekOlympics.txt
    export CATFILE="AncientGreekOlympics.txt"
    export CATNAME="Ancient Greek Olympics"
    unset ANCIENTGREEKOLYMPICS
    $CATEGORIZE
    rm AncientGreekOlympics.txt
  fi

  OLYMPICS="$(egrep -i "$KEYWORDS_OLYMPICS" newpages.txt | egrep -iv "$KEYWORDS_OLYMPICS_EXCLUDE")"

  if [ "$OLYMPICS" != "" ];
  then
    printf "%s" "$OLYMPICS" > Olympics.txt
    export CATFILE="Olympics.txt"
    export CATNAME="Olympics"
    unset OLYMPICS
    $CATEGORIZE
    rm Olympics.txt
  fi

  debug_end "Olympics"

fi