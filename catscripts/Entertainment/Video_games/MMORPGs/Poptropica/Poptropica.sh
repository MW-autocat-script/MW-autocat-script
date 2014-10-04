#!/bin/bash

export KEYWORDS_MMORPG_POPTROPICA="poptropica|potropica|poptopica"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Poptropica"

  POPTROPICA=$(egrep -i "$KEYWORDS_MMORPG_POPTROPICA" "$NEWPAGES")

  categorize "POPTROPICA" "Poptropica"

  debug_end "Poptropica"

fi