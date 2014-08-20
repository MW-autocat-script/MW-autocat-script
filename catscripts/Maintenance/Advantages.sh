#!/bin/bash

KEYWORDS_ADVANTAGES="What(| )are(| )(the|)(| )(adva(|n)tage|disadva(|n)tage)|What(| )is(| )the(| )(adva(|n)tage|disadva(|n)tage)|What(| )are(| )(|the)(| )(pros|cons)\b"

if [ "$1" == "" ];
then

  debug_start "Advantages and disadvantages"

  ADVANTAGES=$(egrep -i "$KEYWORDS_ADVANTAGES" "$NEWPAGES")

  if [ "$ADVANTAGES" != "" ];
  then
    printf "%s" "$ADVANTAGES" > Advantages.txt
    export CATFILE="Advantages.txt"
    export CATNAME="Advantages and disadvantages"
    $CATEGORIZE
    rm Advantages.txt
    unset ADVANTAGES
  fi

  debug_end "Advantages and disadvantages"

fi