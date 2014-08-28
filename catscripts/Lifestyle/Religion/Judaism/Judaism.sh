#!/bin/bash

KEYWORDS_JUDAISM="Judaism|Jewish|Yom Kippur|Rosh Hashana|Rosh Hashanah|\bTorah|Talmud|Hanukkah|Chanukah|Chanukkah|Chanuka"
KEYWORDS_JUDAISM_ALL="$KEYWORDS_JUDAISM"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Judaism"

  JUDAISM=$(egrep -i "$KEYWORDS_JUDAISM" "$NEWPAGES")

  categorize "JUDAISM" "Judaism"

  debug_end "Judaism"

fi

