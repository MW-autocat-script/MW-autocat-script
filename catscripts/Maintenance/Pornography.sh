#!/bin/bash

KEYWORDS_PORNOGRAPHY="porn|hentai|lolicon|futanari|sex.+videos|videos.+sex"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pornography maintenance script\n"
  fi

  PORN=`egrep -i "$KEYWORDS_PORNOGRAPHY" newpages.txt`

  if [ "$PORN" != "" ];
  then
    printf "$PORN" > Pornography.txt
    export CATFILE="Pornography.txt"
    export CATNAME="Pornography"
    $CATEGORIZE
    rm Pornography.txt
    unset PORN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pornography maintenance script\n"
  fi

fi