#!/bin/bash

KEYWORDS_XBOX360="X(|-)box(| )360"

if [ "$1" == "" ];
then

  debug_start "Xbox 360"

  XBOX360=$(egrep -i "$KEYWORDS_XBOX360" "$NEWPAGES")

  categorize "XBOX360" "Xbox 360"

  debug_end "Xbox 360"

fi
