#!/bin/bash

KEYWORDS_PORNOGRAPHY="porn|hentai|lolicon|futanari|sex.+videos|videos.+sex"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Pornography maintenance script"

  PORN=$(egrep -i "$KEYWORDS_PORNOGRAPHY" newpages.txt)

  if [ "$PORN" != "" ];
  then
    printf "$PORN" > Pornography.txt
    export CATFILE="Pornography.txt"
    export CATNAME="Pornography"
    $CATEGORIZE
    rm Pornography.txt
    unset PORN
  fi

  debug_end "Pornography maintenance script"

fi