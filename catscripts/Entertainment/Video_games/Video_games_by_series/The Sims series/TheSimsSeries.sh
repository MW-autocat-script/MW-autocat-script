#!/bin/bash

KEYWORDS_THESIMS="The(| )Sims"
KEYWORDS_THESIMSTWO="Sims(| )2"
KEYWORDS_THESIMSTHREE="Sims(| )3"
KEYWORDS_MYSIMS="MySims|The(| )Sims(| )Wii"
KEYWORDS_THESIMS_EXCLUDE="$KEYWORDS_THESIMSTWO|$KEYWORDS_THESIMSTHREE|$KEYWORDS_MYSIMS"

if [ "$1" == "" ];
then

  debug_start "The Sims series"

  SIMS2=$(egrep -i "$KEYWORDS_THESIMSTWO" newpages.txt)
  SIMS3=$(egrep -i "$KEYWORDS_THESIMSTHREE" newpages.txt)
  MYSIMS=$(egrep -i "$KEYWORDS_MYSIMS" newpages.txt)
  SERIES=$(egrep -i "$KEYWORDS_THESIMS" newpages.txt | egrep -iv "$KEYWORDS_THESIMS_EXCLUDE")

  if [ "$SIMS2" != "" ];
  then
    printf "%s" "$SIMS2" > TheSims2.txt
    export CATFILE="TheSims2.txt"
    export CATNAME="The Sims 2"
    $CATEGORIZE
    rm TheSims2.txt
    unset SIMS2
  fi

  if [ "$SIMS3" != "" ];
  then
    printf "%s" "$SIMS3" > TheSims3.txt
    export CATFILE="TheSims3.txt"
    export CATNAME="The Sims 3"
    $CATEGORIZE
    rm TheSims3.txt
    unset SIMS3
  fi

  if [ "$MYSIMS" != "" ];
  then
    printf "%s" "$MYSIMS" > MySims.txt
    export CATFILE="MySims.txt"
    export CATNAME="MySims"
    $CATEGORIZE
    rm MySims.txt
    unset MYSIMS
  fi

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > TheSimsSeries.txt
    export CATFILE="TheSimsSeries.txt"
    export CATNAME="The Sims series"
    $CATEGORIZE
    rm TheSimsSeries.txt
    unset SERIES
  fi

  debug_end "The Sims series"

fi