#!/bin/bash

KEYWORDS_FINALFANTASY="Final(| )Fantasy"
KEYWORDS_FINALFANTASY2="$KEYWORDS_FINALFANTASY(| )(2|II\b)|\bFF(| )2\b"
KEYWORDS_FINALFANTASY3="$KEYWORDS_FINALFANTASY(| )(3|III\b)|\bFF(| )(3|III)\b"
KEYWORDS_FINALFANTASY4="$KEYWORDS_FINALFANTASY(| )(4|IV\b)|\bFF(| )(IV|4)\b"
KEYWORDS_FINALFANTASY5="$KEYWORDS_FINALFANTASY(| )(5|V\b)|\bFF(| )(V|5)\b"
KEYWORDS_FINALFANTASY6="$KEYWORDS_FINALFANTASY(| )(6|VI\b)|\bFF(| )(VI|6)\b"
KEYWORDS_FINALFANTASY7="$KEYWORDS_FINALFANTASY(| )(7|VII\b)|\bFF(| )(VII|7)\b"
KEYWORDS_FINALFANTASY8="$KEYWORDS_FINALFANTASY(| )(8|VIII\b)|\bFF(| )(VIII|8)\b"
KEYWORDS_FINALFANTASY9="$KEYWORDS_FINALFANTASY(| )(9|IX\b)|\bFF(| )(IX|9)\b"
KEYWORDS_FINALFANTASYX="$KEYWORDS_FINALFANTASY(| )(10|X\b)|\bFF(| )(X|10)\b|blitzball"
KEYWORDS_FINALFANTASYX2="$KEYWORDS_FINALFANTASY(| )X-2|\bFF(| )X-2"
KEYWORDS_FINALFANTASY11="$KEYWORDS_FINALFANTASY(| )(11|XI\b)|\bFF(| )(XI|11)\b"
KEYWORDS_FINALFANTASY12="$KEYWORDS_FINALFANTASY(| )(12|XII\b)|\bFF(| )(XII|12)\b"
KEYWORDS_FINALFANTASY13="$KEYWORDS_FINALFANTASY(| )(13|XIII\b)|\bFF(| )(XIII|13)\b"
KEYWORDS_ADVENTCHILDREN="Advent(| )Children"


KEYWORDS_FINALFANTASY7_EXCLUDE="Before(| )Crisis|Crisis(| )Core|Dirge(| )of(| )Cerberus|$KEYWORDS_ADVENTCHILDREN"
KEYWORDS_FINALFANTASYX_EXCLUDE="$KEYWORDS_FINALFANTASYX2"
KEYWORDS_FINALFANTASY_EXCLUDE="$KEYWORDS_FINALFANTASY2|$KEYWORDS_FINALFANTASY3|$KEYWORDS_FINALFANTASY4|$KEYWORDS_FINALFANTASY5|$KEYWORDS_FINALFANTASY6|$KEYWORDS_FINALFANTASY6|$KEYWORDS_FINALFANTASY7|$KEYWORDS_FINALFANTASY8|$KEYWORDS_FINALFANTASY9|$KEYWORDS_FINALFANTASYX|$KEYWORDS_FINALFANTASYX2|$KEYWORDS_FINALFANTASY11|$KEYWORDS_FINALFANTASY12|$KEYWORDS_FINALFANTASY13"

if [ "$1" == "" ]; #Normal run
then

  debug_start "Final Fantasy series"

  FFSERIES=$(egrep -i "$KEYWORDS_FINALFANTASY" "$NEWPAGES" | egrep -iv "$KEYWORDS_FINALFANTASY_EXCLUDE")
  FF2=$(egrep -i "$KEYWORDS_FINALFANTASY2" "$NEWPAGES")
  FF3=$(egrep -i "$KEYWORDS_FINALFANTASY3" "$NEWPAGES")
  FF4=$(egrep -i "$KEYWORDS_FINALFANTASY4" "$NEWPAGES")
  FF5=$(egrep -i "$KEYWORDS_FINALFANTASY5" "$NEWPAGES")
  FF6=$(egrep -i "$KEYWORDS_FINALFANTASY6" "$NEWPAGES")
  FF7=$(egrep -i "$KEYWORDS_FINALFANTASY7" "$NEWPAGES" | egrep -iv "$KEYWORDS_FINALFANTASY7_EXCLUDE")
  FF8=$(egrep -i "$KEYWORDS_FINALFANTASY8" "$NEWPAGES")
  FF9=$(egrep -i "$KEYWORDS_FINALFANTASY9" "$NEWPAGES")
  FF10=$(egrep -i "$KEYWORDS_FINALFANTASYX" "$NEWPAGES" | egrep -iv "$KEYWORDS_FINALFANTASYX_EXCLUDE")
  FFX2=$(egrep -i "$KEYWORDS_FINALFANTASYX2" "$NEWPAGES")
  FF11=$(egrep -i "$KEYWORDS_FINALFANTASY11" "$NEWPAGES")
  FF12=$(egrep -i "$KEYWORDS_FINALFANTASY12" "$NEWPAGES")
  FF13=$(egrep -i "$KEYWORDS_FINALFANTASY13" "$NEWPAGES")
  ADVENT=$(egrep -i "$KEYWORDS_ADVENTCHILDREN" "$NEWPAGES")


  if [ "$FFSERIES" != "" ];
  then
    printf "%s" "$FFSERIES" > FinalFantasyseries.txt
    export CATFILE="FinalFantasyseries.txt"
    export CATNAME="Final Fantasy series"
    $CATEGORIZE
    rm FinalFantasyseries.txt
    unset FFSERIES
  fi

  if [ "$FF2" != "" ];
  then
    printf "%s" "$FF2" > FinalFantasy2.txt
    export CATFILE="FinalFantasy2.txt"
    export CATNAME="Final Fantasy II"
    $CATEGORIZE
    rm FinalFantasy2.txt
    unset FF2
  fi

  if [ "$FF3" != "" ];
  then
    printf "%s" "$FF3" > FinalFantasy3.txt
    export CATFILE="FinalFantasy3.txt"
    export CATNAME="Final Fantasy III"
    $CATEGORIZE
    rm FinalFantasy3.txt
    unset FF3
  fi

  if [ "$FF4" != "" ];
  then
    printf "%s" "$FF4" > FinalFantasy4.txt
    export CATFILE="FinalFantasy4.txt"
    export CATNAME="Final Fantasy IV"
    $CATEGORIZE
    rm FinalFantasy4.txt
    unset FF4.txt
  fi

  if [ "$FF5" != "" ];
  then
    printf "%s" "$FF5" > FinalFantasy5.txt
    export CATFILE="FinalFantasy5.txt"
    export CATNAME="Final Fantasy V"
    $CATEGORIZE
    rm FinalFantasy5.txt
    unset FF5
  fi

  if [ "$FF6" != "" ];
  then
    printf "%s" "$FF6" > FinalFantasy6.txt
    export CATFILE="FinalFantasy6.txt"
    export CATNAME="Final Fantasy VI"
    $CATEGORIZE
    rm FinalFantasy6.txt
    unset FF6
  fi

  if [ "$FF7" != "" ];
  then
    printf "%s" "$FF7" > FinalFantasy7.txt
    export CATFILE="FinalFantasy7.txt"
    export CATNAME="Final Fantasy VII"
    $CATEGORIZE
    rm FinalFantasy7.txt
    unset FF7
  fi

  if [ "$FF8" != "" ];
  then
    printf "%s" "$FF8" > FinalFantasy8.txt
    export CATFILE="FinalFantasy8.txt"
    export CATNAME="Final Fantasy VIII"
    $CATEGORIZE
    rm FinalFantasy8.txt
    unset FF8
  fi

  if [ "$FF9" != "" ];
  then
    printf "%s" "$FF9" > FinalFantasy9.txt
    export CATFILE="FinalFantasy9.txt"
    export CATNAME="Final Fantasy IX"
    $CATEGORIZE
    rm FinalFantasy9.txt
    unset FF9
  fi

  if [ "$FF10" != "" ];
  then
    printf "%s" "$FF10" > FinalFantasyX.txt
    export CATFILE="FinalFantasy10.txt"
    export CATNAME="Final Fantasy X"
    $CATEGORIZE
    rm FinalFantasyX.txt
    unset FF10
  fi

  if [ "$FFX2" != "" ];
  then
    printf "%s" "$FFX2" > FinalFantasyX-2.txt
    export CATFILE="FinalFantasyX-2.txt"
    export CATNAME="Final Fantasy X-2"
    $CATEGORIZE
    rm FinalFantasyX-2.txt
    unset FFX2
  fi

  if [ "$FF11" != "" ];
  then
    printf "%s" "$FF11" > FinalFantasy11.txt
    export CATFILE="FinalFantasy11.txt"
    export CATNAME="Final Fantasy XI"
    $CATEGORIZE
    rm FinalFantasy11.txt
    unset FF11
  fi

  if [ "$FF12" != "" ];
  then
    printf "%s" "$FF12" > FinalFantasy12.txt
    export CATFILE="FinalFantasy12.txt"
    export CATNAME="Final Fantasy XII"
    $CATEGORIZE
    rm FinalFantasy12.txt
    unset FF12
  fi

  if [ "$FF13" != "" ];
  then
    printf "%s" "$FF13" > FinalFantasy13.txt
    export CATFILE="FinalFantasy13.txt"
    export CATNAME="Final Fantasy XIII"
    $CATEGORIZE
    rm FinalFantasy13.txt
    unset FF13
  fi

  if [ "$ADVENT" != "" ];
  then
    printf "%s" "$ADVENT" > AdventChildren.txt
    export CATFILE="AdventChildren.txt"
    export CATNAME="Final Fantasy VII: Advent Children"
    $CATEGORIZE
    rm AdventChildren.txt
    unset ADVENT
  fi

  debug_end "Final Fantasy series"

fi