#!/bin/bash

KEYWORDS_UMBREON="Umbreon"
KEYWORDS_UNFEZANT="Unfezant"
KEYWORDS_UNOWN="Unown"
KEYWORDS_URSARING="Ursaring"
KEYWORDS_UXIE="Uxie"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon U scripts\n"
  fi

  UMBREON="$(egrep -i "$KEYWORDS_UMBREON" newpages.txt)"
  UNFEZANT="$(egrep -i "$KEYWORDS_UNFEZANT" newpages.txt)"
  UNOWN="$(egrep -i "$KEYWORDS_UNOWN" newpages.txt)"
  URSARING="$(egrep -i "$KEYWORDS_URSARING" newpages.txt)"
  UXIE="$(egrep -i "$KEYWORDS_UXIE" newpages.txt)"

  if [ "$UMBREON" != "" ];
  then
    printf "%s" "$UMBREON" > Umbreon.txt
    export CATFILE="Umbreon.txt"
    export CATNAME="Umbreon"
    $CATEGORIZE
    rm Umbreon.txt
    unset UMBREON
  fi

  if [ "$UNFEZANT" != "" ];
  then
    printf "%s" "$UNFEZANT" > Unfezant.txt
    export CATFILE="Unfezant.txt"
    export CATNAME="Unfezant"
    $CATEGORIZE
    rm Unfezant.txt
    unset UNFEZANT
  fi

  if [ "$UNOWN" != "" ];
  then
    printf "%s" "$UNOWN" > Unown.txt
    export CATFILE="Unown.txt"
    export CATNAME="Unown"
    $CATEGORIZE
    rm Unown.txt
    unset UNOWN
  fi

  if [ "$URSARING" != "" ];
  then
    printf "%s" "$URSARING" > Ursaring.txt
    export CATFILE="Ursaring.txt"
    export CATNAME="Ursaring"
    $CATEGORIZE
    rm Ursaring.txt
    unset URSARING
  fi

  if [ "$UXIE" != "" ];
  then
    printf "%s" "$UXIE" > Uxie.txt
    export CATFILE="Uxie.txt"
    export CATNAME="Uxie"
    $CATEGORIZE
    rm Uxie.txt
    unset UXIE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon U scripts\n"
  fi

fi