#!/bin/bash

KEYWORDS_GUNDAM="Gundam"

if [ "$1" == "" ];
then

  debug_start "Gundam series"

  GUNDAM=$(egrep -i "$KEYWORDS_GUNDAM" "$NEWPAGES")

  categorize "GUNDAM" "Gundam series"

  debug_end "Gundam series"

fi