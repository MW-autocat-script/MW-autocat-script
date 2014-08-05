#!/bin/bash

KEYWORDS_TENNESSEE="Tennessee|,(| )T(|\.)N(|\.)$|Chattanooga" #Chattanooga is a city, but doesn't have enough questions yet to merit a category of its own
KEYWORDS_NASHVILLE="Nashville"
KEYWORDS_MEMPHIS="Memphis(|,)(| )(Tennessee|TN)"
KEYWORDS_MEMPHIS_EXCLUDE="Memphis(|,)(| )Egypt"
KEYWORDS_TENNESSEE_EXCLUDE="$KEYWORDS_NASHVILLE|$KEYWORDS_MEMPHIS"
KEYWORDS_TENNESSEE_ALL="$KEYWORDS_TENNESSEE|$KEYWORDS_MEMPHIS|$KEYWORDS_NASHVILLE"

if [ "$1" == "" ];
then

  debug_start "Tennessee"

  TENNESSEE=$(egrep -i "$KEYWORDS_TENNESSEE" newpages.txt| egrep -iv "$KEYWORDS_TENNESSEE_ALL")
  NASHVILLE=$(egrep -i "$KEYWORDS_NASHVILLE" newpages.txt)
  MEMPHIS=$(egrep -i "$KEYWORDS_MEMPHIS" newpages.txt| egrep -iv "$KEYWORDS_MEMPHIS_EXCLUDE")

  if [ "$TENNESSEE" != "" ];
  then
    printf "%s" "$TENNESSEE" > Tennessee.txt
    export CATFILE="Tennessee.txt"
    export CATNAME="Tennessee"
    $CATEGORIZE
    rm Tennessee.txt
    unset TENNESSEE
  fi

  if [ "$NASHVILLE" != "" ];
  then
    printf "%s" "$NASHVILLE" > Nashville.txt
    export CATFILE="Nashville.txt"
    export CATNAME="Nashville"
    $CATEGORIZE
    rm Nashville.txt
    unset NASHVILLE
  fi

  if [ "$MEMPHIS" != "" ];
  then
    printf "%s" "$MEMPHIS" > Memphis.txt
    export CATFILE="Memphis.txt"
    export CATNAME="Memphis, Tennessee"
    $CATEGORIZE
    rm Memphis.txt
    unset MEMPHIS
  fi

  debug_end "Tennessee"

fi