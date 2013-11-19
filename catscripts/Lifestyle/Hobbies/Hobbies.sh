#!/bin/bash

KEYWORDS_HOBBIES="Hobbies|hobby"
KEYWORDS_SEWING="\bsew(|ing)\b|embroidery"
KEYWORDS_KNITTING="\bknit(|ting)(|s)\b|crochet"
KEYWORDS_SEWING_EXCLUDE="$KEYWORDS_KNITTING"
KEYWORDS_PHOTOGRAPHY="Photography"
KEYWORDS_BASEBALLCARDS="baseball(| )card"
KEYWORDS_HOBBIES_EXCLUDE="$KEYWORDS_SEWING|$KEYWORDS_KNITTING|$KEYWORDS_PHOTOGRAPHY|$KEYWORDS_BASEBALLCARDS"

if [ "$1" == "" ]; #Normal operation
then

  HOBBIES=`egrep -i "$KEYWORDS_HOBBIES" newpages.txt | egrep -iv "$KEYWORDS_HOBBIES_EXCLUDE"`
  SEWING=`egrep -i "$KEYWORDS_SEWING" newpages.txt | egrep -iv "$KEYWORDS_SEWING_EXCLUDE"`
  KNITTING=`egrep -i "$KEYWORDS_KNITTING" newpages.txt`
  PHOTOGRAPHY=`egrep -i "$KEYWORDS_PHOTOGRAPHY" newpages.txt`
  BASEBALLCARDS=`egrep -i "$KEYWORDS_BASEBALLCARDS" newpages.txt`

  if [ "$HOBBIES" != "" ];
  then
    egrep -i "$KEYWORDS_HOBBIES" newpages.txt | egrep -iv "$KEYWORDS_HOBBIES_EXCLUDE" > Hobbies.txt
    export CATFILE="Hobbies.txt"
    export CATNAME="Hobbies"
    $CATEGORIZE
    rm Hobbies.txt
    unset HOBBIES
  fi

  if [ "$SEWING" != "" ];
  then
    egrep -i "$KEYWORDS_SEWING" newpages.txt | egrep -iv "$KEYWORDS_SEWING_EXCLUDE" > Sewing.txt
    export CATFILE="Sewing,txt"
    export CATNAME="Sewing"
    $CATEGORIZE
    rm Sewing.txt
    unset SEWING
  fi

  if [ "$KNITTING" != "" ];
  then
    egrep -i "$KEYWORDS_KNITTING" newpages.txt > Knitting.txt
    export CATFILE="Knitting.txt"
    export CATNAME="Knitting"
    $CATEGORIZE
    rm Knitting.txt
    unset KNITTING
  fi

  if [ "$PHOTOGRAPHY" != "" ];
  then
    egrep -i "$KEYWORDS_PHOTOGRAPHY" newpages.txt > Photography.txt
    export CATFILE="Photography.txt"
    export CATNAME="Photography"
    $CATEGORIZE
    rm Photography.txt
    unset PHOTOGRAPHY
  fi

  if [ "$BASEBALLCARDS" != "" ];
  then
    egrep -i "$KEYWORDS_BASEBALLCARDS" newpages.txt > Baseballcards.txt
    export CATFILE="Baseballcards.txt"
    export CATNAME="Baseball cards"
    $CATEGORIZE
    rm Baseballcards.txt
    unset BASEBALLCARDS
  fi

fi