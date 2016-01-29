#!/bin/bash

export KEYWORDS_MMORPG_POPTROPICA="poptropica|potropica|poptopica|counterf(ie|ei)t(| )island"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Poptropica"

  POPTROPICA=$(egrep -i "$KEYWORDS_MMORPG_POPTROPICA" "$NEWPAGES")

  categorize "POPTROPICA" "Poptropica"

  debug_end "Poptropica"

fi