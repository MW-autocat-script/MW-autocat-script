#!/bin/bash

KEYWORDS_NEVADA="Nevada"
KEYWORDS_LASVEGAS="Las(| )Vegas"
KEYWORDS_NEVADA_EXCLUDE="$KEYWORDS_LASVEGAS"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_NEVADA" newpages.txt | egrep -iv "$KEYWORDS_NEVADA_EXCLUDE" >> Nevada.txt
  egrep -i "$KEYWORDS_LASVEGAS" newpages.txt >> LasVegas.txt

  NEVADA=$(stat --print=%s Nevada.txt)
  LASVEGAS=$(stat --print=%s LasVegas.txt)

  if [ $NEVADA -ne 0 ];
  then
    export CATFILE="Nevada.txt"
    export CATNAME="Nevada"
    $CATEGORIZE
  fi
  
  if [ $LASVEGAS -ne 0 ];
  then
    export CATFILE="LasVegas.txt"
    export CATNAME="Las Vegas"
    $CATEGORIZE
  fi

  rm Nevada.txt
  rm LasVegas.txt

fi
