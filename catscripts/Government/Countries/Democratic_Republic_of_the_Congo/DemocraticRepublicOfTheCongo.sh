#!/bin/bash

KEYWORDS_DROTC="Democratic(| )Republic.+Congo|Kinshasa"
KEYWORDS_DROTC_ALL="$KEYWORDS_DROTC"

if [ "$1" == "" ];
then

  debug_start "Democratic Republic of the Congo"

  DROTC=$(egrep -i "$KEYWORDS_DROTC" "$NEWPAGES")

  categorize "DROTC" "Democratic Republic of the Congo"

  debug_end "Democratic Republic of the Congo"

fi