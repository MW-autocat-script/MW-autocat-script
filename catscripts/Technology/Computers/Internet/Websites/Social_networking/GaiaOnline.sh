#!/bin/bash

KEYWORDS_GAIAONLINE="Gaia(| )Online"

if [ "$1" == "" ];
then

  debug_start "Gaia Online"

  GAIAONLINE=$(egrep -i "$KEYWORDS_GAIAONLINE" "$NEWPAGES")

  categorize "GAIAONLINE" "Gaia Online"

  debug_end "Gaia Online"

fi
