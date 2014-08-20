#!/bin/bash

KEYWORDS_ASSASSINSCREED="Assassin('|)s(| )Creed"
KEYWORDS_CREEDTWO="Assassin('|)s(| )Creed(| )(2|II\b)"
KEYWORDS_CREEDTHREE="Assassin('|)s(| )Creed(| )(3|III\b)"
KEYWORDS_ASSASSINSCREED_EXCLUDE="$KEYWORDS_CREEDTWO|$KEYWORDS_CREEDTHREE"

if [ "$1" == "" ];
then

  debug_start "Assassin's Creed series"

SERIES=$(egrep -i "$KEYWORDS_ASSASSINSCREED" "$NEWPAGES" | egrep -iv "$KEYWORDS_ASSASSINSCREED_EXCLUDE")
TWO=$(egrep -i "$KEYWORDS_CREEDTWO" "$NEWPAGES")
THREE=$(egrep -i "$KEYWORDS_CREEDTHREE" "$NEWPAGES")

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > Series.txt
    export CATFILE="Series.txt"
    export CATNAME="Assassin's Creed series"
    $CATEGORIZE
    rm Series.txt
    unset SERIES
  fi

  if [ "$TWO" != "" ];
  then
    printf "%s" "$TWO" > Two.txt
    export CATFILE="Two.txt"
    export CATNAME="Assassin's Creed II"
    $CATEGORIZE
    rm Two.txt
    unset TWO
  fi

  if [ "$THREE" != "" ];
  then
    printf "%s" "$THREE" > Three.txt
    export CATFILE="Three.txt"
    export CATNAME="Assassin's Creed III"
    $CATEGORIZE
    rm Three.txt
    unset THREE
  fi

  debug_end "Assassin's Creed series"

fi