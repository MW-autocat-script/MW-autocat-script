#!/bin/bash

KEYWORDS_GAIAONLINE="Gaia(| )Online"

if [ "$1" == "" ];
then

  debug_start "Gaia Online"

  GAIAONLINE=$(egrep -i "$KEYWORDS_GAIAONLINE" newpages.txt)

  if [ "$GAIAONLINE" != "" ];
  then
    printf "%s" "$GAIAONLINE" > GaiaOnline.txt
    export CATFILE="GaiaOnline.txt"
    export CATNAME="Gaia Online"
    $CATEGORIZE
    rm GaiaOnline.txt
    unset GAIAONLINE
  fi

  debug_end "Gaia Online"

fi
