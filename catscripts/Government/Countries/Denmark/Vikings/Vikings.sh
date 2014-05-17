#!/bin/bash

export KEYWORDS_VIKINGS="Viking"
export KEYWORDS_VIKINGS_EXCLUDE="Minnesota(| )Vikings"

if [ "$1" == "" ];
then
  egrep -i "$KEYWORDS_VIKINGS" newpages.txt | egrep -iv "$KEYWORDS_VIKINGS_EXCLUDE" >> Vikings.txt

  VIKINGS=$(stat --print=%s Vikings.txt)

  if [ $VIKINGS -ne 0 ];
  then
    export CATFILE="Vikings.txt"
    export CATNAME="Vikings"
    $CATEGORIZE
  fi

  rm Vikings.txt
fi