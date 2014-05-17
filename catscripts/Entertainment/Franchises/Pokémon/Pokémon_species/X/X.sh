#!/bin/bash

KEYWORDS_XATU="Xatu"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon X scripts\n"
  fi

  XATU=$(egrep -i "$KEYWORDS_XATU" newpages.txt)

  if [ "$XATU" != "" ];
  then
    printf "$XATU" > Xatu.txt
    export CATFILE="Xatu.txt"
    export CATNAME="Xatu"
    $CATEGORIZE
    rm Xatu.txt
    unset XATU
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon X scripts\n"
  fi

fi