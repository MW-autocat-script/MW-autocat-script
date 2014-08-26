#!/bin/bash

KEYWORDS_SNOWBOARDING="Snow(| )board"

if [ "$1" == "" ];
then
  
  debug_start "Snowboarding"

  SNOWBOARDING=$(egrep -i "$KEYWORDS_SNOWBOARDING" "$NEWPAGES")

  categorize "SNOWBOARDING" "Snowboarding"

  debug_end "Snowboarding"

fi