#!/bin/bash

export KEYWORDS_MMORPG_PIRATES="Tales(| )of(| )Pirates"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Tales of Pirates"

  PIRATES=$(egrep -i "$KEYWORDS_MMORPG_PIRATES" "$NEWPAGES")

  categorize "PIRATES" "Tales of Pirates"

  debug_end "Tales of Pirates"

fi