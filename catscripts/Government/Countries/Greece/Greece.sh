#!/bin/bash

KEYWORDS_GREECE="Greece"
KEYWORDS_ANCIENTGREECE="Ancient(| )Gree(k|ce)"
KEYWORDS_ATHENS="Athens|Athenian"
KEYWORDS_SPARTA="Sparta(s|n)\b"
KEYWORDS_SPARTA_EXCLUDE="Halo"
KEYWORDS_SPARTA_EXCLUDE_CASESENSITVE="SPARTAN"
KEYWORDS_ANCIENTGREECE_EXCLUDE="$KEYWORDS_SPARTA|$KEYWORDS_ATHENS"
KEYWORDS_GREECE_EXCLUDE="$KEYWORDS_ANCIENTGREECE|$KEYWORDS_ATHENS|$KEYWORDS_SPARTA"

GREECE=`egrep -i "$KEYWORDS_GREECE" newpages.txt | egrep -iv "$KEYWORDS_GREECE_EXCLUDE"`
ANCIENT=`egrep -i "$KEYWORDS_ANCIENTGREECE" newpages.txt | egrep -iv "$KEYWORDS_ANCIENTGREECE_EXCLUDE"`
ATHENS=`egrep -i "$KEYWORDS_ATHENS" newpages.txt`
SPARTA=`egrep -i "$KEYWORDS_SPARTA" newpages.txt | egrep -iv "$KEYWORDS_SPARTA_EXCLUDE" | egrep -v "$KEYWORDS_SPARTA_EXCLUDE_CASESENSITVE"`

if [ "$GREECE" != "" ];
then
  egrep -i "$KEYWORDS_GREECE" newpages.txt | egrep -iv "$KEYWORDS_GREECE_EXCLUDE" > Greece.txt
  export CATFILE="Greece.txt"
  export CATNAME="Greece"
  $CATEGORIZE
  rm Greece.txt
  unset GREECE
fi

if [ "$ANCIENT" != "" ];
then
  egrep -i "$KEYWORDS_ANCIENTGREECE" newpages.txt | egrep -iv "$KEYWORDS_ANCIENTGREECE_EXCLUDE" > Ancient.txt
  export CATFILE="Ancient.txt"
  export CATNAME="Ancient Greece"
  $CATEGORIZE
  rm Ancient.txt
  unset ANCIENT
fi

if [ "$ATHENS" != "" ];
then
  egrep -i "$KEYWORDS_ATHENS" newpages.txt > Athens.txt
  export CATFILE="Athens.txt"
  export CATNAME="Athens"
  $CATEGORIZE
  rm Athens.txt
  unset ATHENS
fi

if [ "$SPARTA" != "" ];
then
  egrep -i "$KEYWORDS_SPARTA" newpages.txt | egrep -iv "$KEYWORDS_SPARTA_EXCLUDE" | egrep -v "$KEYWORDS_SPARTA_EXCLUDE_CASESENSITVE" > Sparta.txt
  export CATFILE="Sparta.txt"
  export CATNAME="Sparta"
  $CATEGORIZE
  rm Sparta.txt
  unset SPARTA
fi

