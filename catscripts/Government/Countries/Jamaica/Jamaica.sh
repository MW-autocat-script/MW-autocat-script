#!/bin/bash

KEYWORDS_JAMAICA="Jamaica"
KEYWORDS_JAMAICA_ALL="$KEYWORDS_JAMAICA"

if [ "$1" == "" ];
then
  
  debug_start "Jamaica"

  JAMAICA=$(egrep -i "$KEYWORDS_JAMAICA" "$NEWPAGES")

  categorize "JAMAICA" "Jamaica"

  debug_end "Jamaica"

fi