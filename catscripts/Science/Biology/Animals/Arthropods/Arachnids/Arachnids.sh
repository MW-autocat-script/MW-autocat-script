#!/bin/bash

KEYWORDS_ARACHNIDS="Arachnid"
KEYWORDS_TICKS="deer(| )tick"
KEYWORDS_SPIDERS="spider|tarantula|daddy(| |-)long(| |-)leg"
KEYWORDS_SPIDERS_EXCLUDE="Spider(| |-)Man|Rune(| )Scape|Stronghold(| )of(| )Security|Varrock|spider(| )solitaire"
KEYWORDS_SCORPIONS="Scorpion"
KEYWORDS_SCORPIONS_EXCLUDE="scorpion(| )king"
KEYWORDS_ARACHNIDS_EXCLUDE="$KEYWORDS_TICKS|$KEYWORDS_SPIDERS|$KEYWORDS_SPIDERS_EXCLUDE|$KEYWORDS_SCORPIONS|$KEYWORDS_SCORPIONS_EXCLUDE"

if [ "$1" == "" ];
then
  
  debug_start "Arachnids"

  ARACHNIDS=$(egrep -i "$KEYWORDS_ARACHNIDS" newpages.txt | egrep -iv "$KEYWORDS_ARACHNIDS_EXCLUDE")
  TICKS=$(egrep -i "$KEYWORDS_TICKS" newpages.txt)
  SPIDERS=$(egrep -i "$KEYWORDS_SPIDERS" newpages.txt | egrep -iv "$KEYWORDS_SPIDERS_EXCLUDE")
  SCORPIONS=$(egrep -i "$KEYWORDS_SCORPIONS" newpages.txt | egrep -iv "$KEYWORDS_SCORPIONS_EXCLUDE")

  if [ "$ARACHNIDS" != "" ];
  then
    printf "%s" "$ARACHNIDS" > Arachnids.txt
    export CATFILE="Arachnids.txt"
    export CATNAME="Arachnids"
    $CATEGORIZE
    rm Arachnids.txt
    unset ARACHNIDS
  fi

  if [ "$TICKS" != "" ];
  then
    printf "%s" "$TICKS" > Ticks.txt
    export CATFILE="Ticks.txt"
    export CATNAME="Ticks"
    $CATEGORIZE
    rm Ticks.txt
    unset TICKS
  fi

  if [ "$SPIDERS" != "" ];
  then
    printf "%s" "$SPIDERS" > Spiders.txt
    export CATFILE="Spiders.txt"
    export CATNAME="Spiders"
    $CATEGORIZE
    rm Spiders.txt
    unset SPIDERS
  fi

  if [ "$SCORPIONS" != "" ];
  then
    printf "%s" "$SCORPIONS" > Scorpions.txt
    export CATFILE="Scorpions.txt"
    export CATNAME="Scorpions"
    $CATEGORIZE
    rm Scorpions.txt
    unset SCORPIONS
  fi

  debug_end "Arachnids"

fi