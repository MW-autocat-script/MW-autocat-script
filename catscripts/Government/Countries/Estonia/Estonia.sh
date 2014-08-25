#!/bin/bash

KEYWORDS_ESTONIA="Estonia"
KEYWORDS_ESTONIA_ALL="$KEYWORDS_ESTONIA"

if [ "$1" == "" ];
then
  
  debug_start "Estonia"

  ESTONIA=$(egrep -i "$KEYWORDS_ESTONIA" "$NEWPAGES")

  categorize "ESTONIA" "Estonia"

  debug_end "Estonia"

fi