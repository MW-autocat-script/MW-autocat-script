#!/bin/bash

KEYWORDS_ADVANTAGES="What(| )are(| )(the|)(| )(adva(|n)tage|disadva(|n)tage)|What(| )is(| )the(| )(adva(|n)tage|disadva(|n)tage)|What(| )are(| )(|the)(| )(pros|cons)\b"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Advantages and disadvantages\n"
  fi

  ADVANTAGES=`egrep -i "$KEYWORDS_ADVANTAGES" newpages.txt`

  if [ "$ADVANTAGES" != "" ];
  then
    printf "$ADVANTAGES" > Advantages.txt
    export CATFILE="Advantages.txt"
    export CATNAME="Advantages and disadvantages"
    $CATEGORIZE
    rm Advantages.txt
    unset ADVANTAGES
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Advantages and disadvantages\n"
  fi

fi