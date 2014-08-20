#!/bin/bash 

KEYWORDS_CHROMIUM="Chromium"
KEYWORDS_CHROMIUM_EXCLUDE="internet|browser"

KEYWORDS_MOLYBDENUM="Molybdenum"

KEYWORDS_TUNGSTEN="Tungsten"
KEYWORDS_TUNGSTEN_EXCLUDE="Mass(| )Effect"

KEYWORDS_SEABORGIUM="Seaborgium"

KEYWORDS_GROUP6_ELEMENTS="$KEYWORDS_CHROMIUM|$KEYWORDS_MOLYBDENUM|$KEYWORDS_TUNGSTEN|$KEYWORDS_SEABORGIUM"

if [ "$1" == "" ];
then

  debug_start "Group 6 elements"

  CHROMIUM="$(egrep -i "$KEYWORDS_CHROMIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHROMIUM_EXCLUDE")"
  MOLYBDENUM="$(egrep -i "$KEYWORDS_MOLYBDENUM" "$NEWPAGES")"
  TUNGSTEN="$(egrep -i "$KEYWORDS_TUNGSTEN" "$NEWPAGES" | egrep -iv "$KEYWORDS_TUNGSTEN_EXCLUDE")"
  SEABORGIUM="$(egrep -i "$KEYWORDS_SEABORGIUM" "$NEWPAGES")"

  if [ "$CHROMIUM" != "" ];
  then
    printf "%s" "$CHROMIUM" > Chromium.txt
    export CATFILE="Chromium.txt"
    export CATNAME="Chromium"
    $CATEGORIZE
    rm Chromium.txt
    unset CHROMIUM
  fi

  if [ "$MOLYBDENUM" != "" ];
  then
    printf "%s" "$MOLYBDENUM" > Molybdenum.txt
    export CATFILE="Molybdenum.txt"
    export CATNAME="Molybdenum"
    $CATEGORIZE
    rm Molybdenum.txt
    unset MOLYBDENUM
  fi

  if [ "$TUNGSTEN" != "" ];
  then
    printf "%s" "$TUNGSTEN" > Tungsten.txt
    export CATFILE="Tungsten.txt"
    export CATNAME="Tungsten"
    $CATEGORIZE
    rm Tungsten.txt
    unset TUNGSTEN
  fi

  if [ "$SEABORGIUM" != "" ];
  then
    printf "%s" "$SEABORGIUM" > Seaborgium.txt
    export CATFILE="Seaborgium.txt"
    export CATNAME="Seaborgium"
    $CATEGORIZE
    rm Seaborgium.txt
    unset SEABORGIUM
  fi

  debug_end "Group 6 elements"

fi