#!/bin/bash

KEYWORDS_CANBERRA="Canberra"
KEYWORDS_CANBERRA_ALL="$KEYWORDS_CANBERRA"

if [ "$1" == "" ];
then

  debug_start "Canberra"

  CANBERRA=$(egrep -i "$KEYWORDS_CANBERRA" "$NEWPAGES")

  categorize "CANBERRA" "Canberra"

  debug_end "Canberra"

fi