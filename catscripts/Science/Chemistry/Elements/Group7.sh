#!/bin/bash 

KEYWORDS_MANGANESE="Manganese"
KEYWORDS_TECHNETIUM="Technetium"
KEYWORDS_RHENIUM="Rhenium"
KEYWORDS_BOHRIUM="Bohrium"
KEYWORDS_GROUP7_ELEMENTS="$KEYWORDS_MANGANESE|$KEYWORDS_TECHNETIUM|$KEYWORDS_RHENIUM|$KEYWORDS_BOHRIUM"

if [ "$1" == "" ];
then

  debug_start "Group 7 elements"

  MANGANESE="$(egrep -i "$KEYWORDS_MANGANESE" newpages.txt)"
  TECHNETIUM="$(egrep -i "$KEYWORDS_TECHNETIUM" newpages.txt)"
  RHENIUM="$(egrep -i "$KEYWORDS_RHENIUM" newpages.txt)"
  BOHRIUM="$(egrep -i "$KEYWORDS_BOHRIUM" newpages.txt)"

  if [ "$MANGANESE" != "" ];
  then
    printf "%s" "$MANGANESE" > Manganese.txt
    export CATFILE="Manganese.txt"
    export CATNAME="Manganese"
    $CATEGORIZE
    rm Manganese.txt
    unset MANGANESE
  fi

  if [ "$TECHNETIUM" != "" ];
  then
    printf "%s" "$TECHNETIUM" > Technetium.txt
    export CATFILE="Technetium.txt"
    export CATNAME="Technetium"
    $CATEGORIZE
    rm Technetium.txt
    unset TECHNETIUM
  fi

  if [ "$RHENIUM" != "" ];
  then
    printf "%s" "$RHENIUM" > Rhenium.txt
    export CATFILE="Rhenium.txt"
    export CATNAME="Rhenium"
    $CATEGORIZE
    rm Rhenium.txt
    unset RHENIUM
  fi

  if [ "$BOHRIUM" != "" ];
  then
    printf "%s" "$BOHRIUM" > Bohrium.txt
    export CATFILE="Bohrium.txt"
    export CATNAME="Bohrium"
    $CATEGORIZE
    rm Bohrium.txt
    unset BOHRIUM
  fi

  debug_end "Group 7 elements"

fi