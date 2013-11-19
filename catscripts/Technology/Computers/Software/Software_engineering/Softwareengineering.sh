#!/bin/bash

KEYWORDS_SOFTWAREENGINEERING="Software(| )(engineer|design|develop)"

if [ "$1" ==  "" ]; #Normal operation
then
  
  SOFTWAREENG=`egrep -i "$KEYWORDS_SOFTWAREENGINEERING" newpages.txt`

  if [ "$SOFTWAREENG" != "" ];
  then
    egrep -i "$KEYWORDS_SOFTWAREENGINEERING" newpages.txt > Softwareengineering.txt
    export CATFILE="Softwareengineering.txt"
    export CATNAME="Software engineering"
    $CATEGORIZE
    rm Softwareengineering.txt
    unset SOFTWAREENG
  fi

fi