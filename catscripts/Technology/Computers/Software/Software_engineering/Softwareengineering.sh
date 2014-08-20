#!/bin/bash

KEYWORDS_SOFTWAREENGINEERING="Software(| )(engineer|design|develop)"

if [ "$1" ==  "" ]; #Normal operation
then

  debug_start "Software engineering"
  
  SOFTWAREENG=$(egrep -i "$KEYWORDS_SOFTWAREENGINEERING" "$NEWPAGES")

  if [ "$SOFTWAREENG" != "" ];
  then
    printf "%s" "$SOFTWAREENG" > Softwareengineering.txt
    export CATFILE="Softwareengineering.txt"
    export CATNAME="Software engineering"
    $CATEGORIZE
    rm Softwareengineering.txt
    unset SOFTWAREENG
  fi

  debug_end "Software engineering"

fi