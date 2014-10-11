#!/bin/bash

export KEYWORD_MMORPG_SACRED="Sacred(| )Season"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sacred Seasons"

  SACRED=$(egrep -i "$KEYWORD_MMORPG_SACRED" "$NEWPAGES")

  categorize "SACRED" "Sacred Seasons"

  debug_end "Sacred Seasons"

fi