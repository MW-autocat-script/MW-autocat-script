#!/bin/bash
#IUPAC Group 1 elements. Hydrogen is also included here for convenience.

KEYWORDS_HYDROGEN="Hydrogen"
KEYWORDS_LITHIUM="Lithium"
KEYWORDS_SODIUM="Sodium"
KEYWORDS_POTASSIUM="Potassium"
KEYWORDS_RUBIDIUM="Rubidium"
KEYWORDS_CAESIUM="C(|a)esium"
KEYWORDS_FRANCIUM="Francium"
KEYWORDS_UNUNENNIUM="Ununennium"

if [ "$1" == "" ];
then

  debug_start "Group 1 elements"

  HYDROGEN="$(egrep -i "$KEYWORDS_HYDROGEN" "$NEWPAGES")"
  LITHIUM="$(egrep -i "$KEYWORDS_LITHIUM" "$NEWPAGES")"
  SODIUM="$(egrep -i "$KEYWORDS_SODIUM" "$NEWPAGES")"
  POTASSIUM="$(egrep -i "$KEYWORDS_POTASSIUM" "$NEWPAGES")"
  RUBIDIUM="$(egrep -i "$KEYWORDS_RUBIDIUM" "$NEWPAGES")"
  CAESIUM="$(egrep -i "$KEYWORDS_CAESIUM" "$NEWPAGES")"
  FRANCIUM="$(egrep -i "$KEYWORDS_FRANCIUM" "$NEWPAGES")"
  UUE="$(egrep -i "$KEYWORDS_UNUNENNIUM" "$NEWPAGES")"

  if [ "$HYDROGEN" != "" ];
  then
    printf "%s" "$HYDROGEN" > Hydrogen.txt
    export CATFILE="Hydrogen.txt"
    export CATNAME="Hydrogen"
    $CATEGORIZE
    rm Hydrogen.txt
    unset HYDROGEN
  fi

  if [ "$LITHIUM" != "" ];
  then
    printf "%s" "$LITHIUM" > Lithium.txt
    export CATFILE="Lithium.txt"
    export CATNAME="Lithium"
    $CATEGORIZE
    rm Lithium.txt
    unset LITHIUM
  fi

  if [ "$SODIUM" != "" ];
  then
    printf "%s" "$SODIUM" > Sodium.txt
    export CATFILE="Sodium.txt"
    export CATNAME="Sodium"
    $CATEGORIZE
    rm Sodium.txt
    unset SODIUM
  fi

  if [ "$POTASSIUM" != "" ];
  then
    printf "%s" "$POTASSIUM" > Potassium.txt
    export CATFILE="Potassium.txt"
    export CATNAME="Potassium"
    $CATEGORIZE
    rm Potassium.txt
    unset POTASSIUM
  fi

  if [ "$RUBIDIUM" != "" ];
  then
    printf "%s" "$RUBIDIUM" > Rubidium.txt
    export CATFILE="Rubidium.txt"
    export CATNAME="Rubidium"
    $CATEGORIZE
    rm Rubidium.txt
    unset RUBIDIUM
  fi

  if [ "$CAESIUM" != "" ];
  then
    printf "%s" "$CAESIUM" > Caesium.txt
    export CATFILE="Caesium.txt"
    export CATNAME="Caesium"
    $CATEGORIZE
    rm Caesium.txt
    unset CAESIUM
  fi

  if [ "$FRANCIUM" != "" ];
  then
    printf "%s" "$FRANCIUM" > Francium.txt
    export CATFILE="Francium.txt"
    export CATNAME="Francium"
    $CATEGORIZE
    rm Francium.txt
    unset FRANCIUM
  fi

  if [ "$UUE" != "" ];
  then
    printf "%s" "$UUE" > Ununennium.txt
    export CATFILE="Ununennium.txt"
    export CATNAME="Ununennium"
    $CATEGORIZE
    rm Ununennium.txt
    unset UUE
  fi

  debug_end "Group 1 elements"

fi