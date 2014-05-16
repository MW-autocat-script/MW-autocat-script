#!/bin/bash 

KEYWORDS_BERYLLIUM="Beryllium"
KEYWORDS_BERYLLIUM_EXCLUDE="beryllium \b.+(ate|ide|ite)"
KEYWORDS_MAGNESIUM="Magnesium"
KEYWORDS_MAGNESIUM_EXCLUDE="Magnesium \b.+(ate|ide|ite)"
KEYWORDS_CALCIUM="Calcium"
KEYWORDS_CALCIUM_EXCLUDE="Calcium \b.+(ate|ide|ite)"
KEYWORDS_STRONTIUM="Strontium"
KEYWORDS_STRONTIUM_EXCLUDE="Strontium \b.+(ate|ide|ite)"
KEYWORDS_BARIUM="Barium"
KEYWORDS_BARIUM_EXCLUDE="Barium \b.+(ate|ide|ite)"
KEYWORDS_RADIUM="Radium"
KEYWORDS_RADIUM_EXCLUDE="Radium \b.+(ate|ide|ite)"

if [ "$1" == "" ];
then

  debug_start "Group 2 elements"

  BERYLLIUM=$(egrep -i "$KEYWORDS_BERYLLIUM" newpages.txt | egrep -iv "$KEYWORDS_BERYLLIUM_EXCLUDE")
  MAGNESIUM=$(egrep -i "$KEYWORDS_MAGNESIUM" newpages.txt | egrep -iv "$KEYWORDS_MAGNESIUM_EXCLUDE")
  CALCIUM=$(egrep -i "$KEYWORDS_CALCIUM" newpages.txt | egrep -iv "$KEYWORDS_CALCIUM_EXCLUDE")
  STRONTIUM=$(egrep -i "$KEYWORDS_STRONTIUM" newpages.txt | egrep -iv "$KEYWORDS_STRONTIUM_EXCLUDE")
  BARIUM=$(egrep -i "$KEYWORDS_BARIUM" newpages.txt | egrep -iv "$KEYWORDS_BARIUM_EXCLUDE")
  RADIUM=$(egrep -i "$KEYWORDS_RADIUM" newpages.txt | egrep -iv "$KEYWORDS_RADIUM_EXCLUDE")

  if [ "$BERYLLIUM" != "" ];
  then
    printf "%s" "$BERYLLIUM" > Beryllium.txt
    export CATFILE="Beryllium.txt"
    export CATNAME="Beryllium"
    $CATEGORIZE
    rm Beryllium.txt
    unset BERYLLIUM
  fi

  if [ "$MAGNESIUM" != "" ];
  then
    printf "%s" "$MAGNESIUM" > Magnesium.txt
    export CATFILE="Magnesium.txt"
    export CATNAME="Magnesium"
    $CATEGORIZE
    rm Magnesium.txt
    unset MAGNESIUM
  fi

  if [ "$CALCIUM" != "" ];
  then
    printf "%s" "$CALCIUM" > Calcium.txt
    export CATFILE="Calcium.txt"
    export CATNAME="Calcium"
    $CATEGORIZE
    rm Calcium.txt
    unset CALCIUM
  fi

  if [ "$STRONTIUM" != "" ];
  then
    printf "%s" "$STRONTIUM" > Strontium.txt
    export CATFILE="Strontium.txt"
    export CATNAME="Strontium"
    $CATEGORIZE
    rm Strontium.txt
    unset STRONTIUM
  fi

  if [ "$BARIUM" != "" ];
  then
    printf "%s" "$BARIUM" > Barium.txt
    export CATFILE="Barium.txt"
    export CATNAME="Barium"
    $CATEGORIZE
    rm Barium.txt
    unset BARIUM
  fi

  if [ "$RADIUM" != "" ];
  then
    printf "%s" "$RADIUM" > Radium.txt
    export CATFILE="Radium.txt"
    export CATNAME="Radium"
    $CATEGORIZE
    rm Radium.txt
    unset RADIUM
  fi

  debug_end "Group 2 elements"

fi