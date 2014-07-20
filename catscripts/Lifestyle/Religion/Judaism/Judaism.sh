#!/bin/bash

KEYWORDS_JUDAISM="Judaism|Jewish|Yom Kippur|Rosh Hashana|Rosh Hashanah|\bTorah|Talmud|Hanukkah|Chanukah|Chanukkah|Chanuka"
KEYWORDS_JUDAISM_ALL="$KEYWORDS_JUDAISM"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Judaism"

  JUDAISM=$(egrep -i "$KEYWORDS_JUDAISM" newpages.txt)

  if [ "$JUDAISM" != "" ];
  then
    printf "%s" "$JUDAISM" > Judaism.txt
    export CATFILE="Judaism.txt"
    export CATNAME="Judaism"
    $CATEGORIZE
    rm Judaism.txt
    unset JUDAISM
  fi

  debug_end "Judaism"

fi

