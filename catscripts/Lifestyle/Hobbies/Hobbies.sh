#!/bin/bash

. ./catscripts/Technology/Cameras/Cameras.sh norun #KEYWORDS_CAMERAS_ALL

KEYWORDS_HOBBIES="Hobbies|hobby"
KEYWORDS_SEWING="\bsew(|ing)\b|embroidery"
KEYWORDS_KNITTING="\bknit(|ting)(|s)\b|crochet"
KEYWORDS_SEWING_EXCLUDE="$KEYWORDS_KNITTING"
KEYWORDS_PHOTOGRAPHY="Photography"
KEYWORDS_PHOTOGRAPHY_EXCLUDE="$KEYWORDS_CAMERAS_ALL"
KEYWORDS_BASEBALLCARDS="baseball(| )card"
KEYWORDS_HOBBIES_EXCLUDE="$KEYWORDS_SEWING|$KEYWORDS_KNITTING|$KEYWORDS_PHOTOGRAPHY|$KEYWORDS_BASEBALLCARDS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Hobbies"

  HOBBIES=$(egrep -i "$KEYWORDS_HOBBIES" newpages.txt | egrep -iv "$KEYWORDS_HOBBIES_EXCLUDE")
  SEWING=$(egrep -i "$KEYWORDS_SEWING" newpages.txt | egrep -iv "$KEYWORDS_SEWING_EXCLUDE")
  KNITTING=$(egrep -i "$KEYWORDS_KNITTING" newpages.txt)
  PHOTOGRAPHY=$(egrep -i "$KEYWORDS_PHOTOGRAPHY" newpages.txt | egrep -iv "$KEYWORDS_PHOTOGRAPHY_EXCLUDE")
  BASEBALLCARDS=$(egrep -i "$KEYWORDS_BASEBALLCARDS" newpages.txt)

  if [ "$HOBBIES" != "" ];
  then
    printf "%s" "$HOBBIES" > Hobbies.txt
    export CATFILE="Hobbies.txt"
    export CATNAME="Hobbies"
    $CATEGORIZE
    rm Hobbies.txt
    unset HOBBIES
  fi

  if [ "$SEWING" != "" ];
  then
    printf "%s" "$SEWING" > Sewing.txt
    export CATFILE="Sewing.txt"
    export CATNAME="Sewing"
    $CATEGORIZE
    rm Sewing.txt
    unset SEWING
  fi

  if [ "$KNITTING" != "" ];
  then
    printf "%s" "$KNITTING" > Knitting.txt
    export CATFILE="Knitting.txt"
    export CATNAME="Knitting"
    $CATEGORIZE
    rm Knitting.txt
    unset KNITTING
  fi

  if [ "$PHOTOGRAPHY" != "" ];
  then
    printf "%s" "$PHOTOGRAPHY" > Photography.txt
    export CATFILE="Photography.txt"
    export CATNAME="Photography"
    $CATEGORIZE
    rm Photography.txt
    unset PHOTOGRAPHY
  fi

  if [ "$BASEBALLCARDS" != "" ];
  then
    printf "%s" "$BASEBALLCARDS" > Baseballcards.txt
    export CATFILE="Baseballcards.txt"
    export CATNAME="Baseball cards"
    $CATEGORIZE
    rm Baseballcards.txt
    unset BASEBALLCARDS
  fi

  debug_end "Hobbies"

fi