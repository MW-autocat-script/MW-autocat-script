#!/bin/bash

KEYWORDS_XATU="Xatu"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon X scripts"

  XATU=$(egrep -i "$KEYWORDS_XATU" "$NEWPAGES")

  if [ "$XATU" != "" ];
  then
    printf "%s" "$XATU" > Xatu.txt
    export CATFILE="Xatu.txt"
    export CATNAME="Xatu"
    $CATEGORIZE
    rm Xatu.txt
    unset XATU
  fi

  debug_end "Pokemon X scripts"

fi