#!/bin/bash

KEYWORDS_DITLOIDS="^[0-9]{1,}=[a-z]{1,1}\s|^[0-9]{1,}= [a-z]{1,1}\s|^[0-9]{1,}(| )=(| )[a-z]{1,1}\s|^[0-9]{1,}(| )=[a-z]{1,1}\s|ditloid"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Ditloids"

  DITLOIDS=$(egrep -i "$KEYWORDS_DITLOIDS" newpages.txt)

  if [ "$DITLOIDS" != "" ];
  then
    printf "%s" "$DITLOIDS" > Ditloids.txt
    export CATFILE="Ditloids.txt"
    export CATNAME="Ditloids"
    $CATEGORIZE
    rm Ditloids.txt
    unset DITLOIDS
  fi

  debug_end "Ditloids"

fi