#!/bin/bash

export KEYWORDS_MOVIES_GODZILLA="Godzilla"

if [ "$1" == "" ];
then

  debug_start "Godzilla"

  GODZILLA=$(egrep -i "$KEYWORDS_MOVIES_GODZILLA" "$NEWPAGES")

  categorize "GODZILLA" "Godzilla"

  debug_end "Godzilla"

fi