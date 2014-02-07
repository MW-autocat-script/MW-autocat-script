#!/bin/bash 

KEYWORDS_VANADIUM="Vanadium"
KEYWORDS_NIOBIUM="Niobium"
KEYWORDS_TANTALUM="Tantalum"
KEYWORDS_DUBNIUM="Dubnium"

if [ "$1" == "" ];
then

  debug_start "Group 5 elements"

  VANADIUM="$(egrep -i "$KEYWORDS_VANADIUM" newpages.txt)"
  NIOBIUM="$(egrep -i "$KEYWORDS_NIOBIUM" newpages.txt)"
  TANTALUM="$(egrep -i "$KEYWORDS_TANTALUM" newpages.txt)"
  DUBNIUM="$(egrep -i "$KEYWORDS_DUBNIUM" newpages.txt)"

  if [ "$VANADIUM" != "" ];
  then
    printf "%s" "$VANADIUM" > Vanadium.txt
    export CATFILE="Vanadium.txt"
    export CATNAME="Vanadium"
    $CATEGORIZE
    rm Vanadium.txt
    unset VANADIUM
  fi

  if [ "$NIOBIUM" != "" ];
  then
    printf "%s" "$NIOBIUM" > Niobium.txt
    export CATFILE="Niobium.txt"
    export CATNAME="Niobium"
    $CATEGORIZE
    rm Niobium.txt
    unset NIOBIUM
  fi

  if [ "$TANTALUM" != "" ];
  then
    printf "%s" "$TANTALUM" > Tantalum.txt
    export CATFILE="Tantalum.txt"
    export CATNAME="Tantalum"
    $CATEGORIZE
    rm Tantalum.txt
    unset TANTALUM
  fi

  if [ "$DUBNIUM" != "" ];
  then
    printf "%s" "$DUBNIUM" > Dubnium.txt
    export CATFILE="Dubnium.txt"
    export CATNAME="Dubnium"
    $CATEGORIZE
    rm Dubnium.txt
    unset DUBNIUM
  fi

  debug_end "Group 5 elements"

fi