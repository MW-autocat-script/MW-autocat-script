#!/bin/bash

KEYWORDS_SQUIRRELS="Squirrel"
KEYWORDS_SQUIRRELS_ALL="$KEYWORDS_SQUIRRELS"

if [ "$1" == "" ];
then
  
  debug_start "Squirrels"

  SQUIRRELS=$(egrep -i "$KEYWORDS_SQUIRRELS" "$NEWPAGES")

  categorize "SQUIRRELS" "Squirrels"

  debug_end "Squirrels"

fi