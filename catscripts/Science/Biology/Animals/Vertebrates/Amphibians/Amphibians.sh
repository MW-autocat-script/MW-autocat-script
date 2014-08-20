#!/bin/bash

KEYWORDS_AMPHIBIANS="Amphibian|Caecilian"
KEYWORDS_FROGSANDTOADS="\bFrog(|s)\b|\btoad(|s)\b|tadpole"
KEYWORDS_SALAMANDERS="Salamander|newt(|s)\b|axolotl"
KEYWORDS_AMPHIBIANS_EXCLUDE="$KEYWORDS_FROGSANDTOADS|$KEYWORDS_SALAMANDERS"
KEYWORDS_AMPHIBIANS_ALL="$KEYWORDS_AMPHIBIANS|$KEYWORDS_FROGSANDTOADS|$KEYWORDS_SALAMANDERS"

if [ "$1" == "" ];
then
  
  debug_start "Amphibians"

  AMPHIBIANS="$(egrep -i "$KEYWORDS_AMPHIBIANS" "$NEWPAGES" | egrep -iv "$KEYWORDS_AMPHIBIANS_EXCLUDE")"
  FROGSANDTOADS="$(egrep -i "$KEYWORDS_FROGSANDTOADS" "$NEWPAGES")"
  SALAMANDERS="$(egrep -i "$KEYWORDS_SALAMANDERS" "$NEWPAGES")"

  if [ "$AMPHIBIANS" != "" ];
  then
    printf "%s" "$AMPHIBIANS" > Amphibians.txt
    export CATFILE="Amphibians.txt"
    export CATNAME="Amphibians"
    $CATEGORIZE
    rm Amphibians.txt
    unset AMPHIBIANS
  fi

  if [ "$FROGSANDTOADS" != "" ];
  then
    printf "%s" "$FROGSANDTOADS" > FrogsAndToads.txt
    export CATFILE="FrogsAndToads.txt"
    export CATNAME="Frogs and toads"
    $CATEGORIZE
    rm FrogsAndToads.txt
    unset FROGSANDTOADS
  fi

  if [ "$SALAMANDERS" != "" ];
  then
    printf "%s" "$SALAMANDERS" > Salamanders.txt
    export CATFILE="Salamanders.txt"
    export CATNAME="Salamanders"
    $CATEGORIZE
    rm Salamanders.txt
    unset SALAMANDERS
  fi

  debug_end "Amphibians"

fi