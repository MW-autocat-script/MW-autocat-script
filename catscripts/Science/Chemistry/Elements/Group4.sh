#!/bin/bash 

KEYWORDS_TITANIUM="Titanium"
KEYWORDS_TITANIUM_EXCLUDE="blade|toy|katar|lego|muffler|runed titanium"
KEYWORDS_ZIRCONIUM="Zirconium"
KEYWORDS_HAFNIUM="Hafnium"
KEYWORDS_RUTHERFORDIUM="Rutherfordium"
KEYWORDS_GROUP4_ELEMENTS="$KEYWORDS_TITANIUM|$KEYWORDS_ZIRCONIUM|$KEYWORDS_HAFNIUM|$KEYWORDS_RUTHERFORDIUM"

if [ "$1" == "" ];
then

  debug_start "Group 4 elements"

  TITANIUM="$(egrep -i "$KEYWORDS_TITANIUM" newpages.txt | egrep -iv "$KEYWORDS_TITANIUM_EXCLUDE")"
  ZIRCONIUM="$(egrep -i "$KEYWORDS_ZIRCONIUM" newpages.txt)"
  HAFNIUM="$(egrep -i "$KEYWORDS_HAFNIUM" newpages.txt)"
  RUTHERFORDIUM="$(egrep -i "$KEYWORDS_RUTHERFORDIUM" newpages.txt)"

  if [ "$TITANIUM" != "" ];
  then
    printf "%s" "$TITANIUM" > Titanium.txt
    export CATFILE="Titanium.txt"
    export CATNAME="Titanium"
    $CATEGORIZE
    rm Titanium.txt
    unset TITANIUM
  fi

  if [ "$ZIRCONIUM" != "" ];
  then
    printf "%s" "$ZIRCONIUM" > Zirconium.txt
    export CATFILE="Zirconium.txt"
    export CATNAME="Zirconium"
    $CATEGORIZE
    rm Zirconium.txt
    unset ZIRCONIUM
  fi

  if [ "$HAFNIUM" != "" ];
  then
    printf "%s" "$HAFNIUM" > Hafnium.txt
    export CATFILE="Hafnium.txt"
    export CATNAME="Hafnium"
    $CATEGORIZE
    rm Hafnium.txt
    unset HAFNIUM
  fi

  if [ "$RUTHERFORDIUM" != "" ];
  then
    printf "%s" "$RUTHERFORDIUM" > Rutherfordium.txt 
    export CATFILE="Rutherfordium.txt"
    export CATNAME="Rutherfordium"
    $CATEGORIZE
    rm Rutherfordium.txt
    unset RUTHERFORDIUM
  fi

  debug_end "Group 4 elements"

fi