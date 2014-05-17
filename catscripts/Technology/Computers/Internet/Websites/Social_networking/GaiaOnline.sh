#!/bin/bash

KEYWORDS_GAIAONLINE="Gaia(| )Online"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_GAIAONLINE" newpages.txt >> GaiaOnline.txt

  GAIAONLINE=$(stat --print=%s GaiaOnline.txt)

  if [ $GAIAONLINE -ne 0 ];
  then
    export CATFILE="GaiaOnline.txt"
    export CATNAME="Gaia Online"
    $CATEGORIZE
  fi

  rm GaiaOnline.txt

fi
