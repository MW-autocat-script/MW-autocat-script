#!/bin/bash

KEYWORDS_UTAH="Utah"
KEYWORDS_SALTLAKECITY="Salt(| )Lake(| )City"
KEYWORDS_UTAH_EXCLUDE="$KEYWORDS_SALTLAKECITY|Utahraptor"

if [ "$1" == "" ]; #Normal operation
then
  egrep -i "$KEYWORDS_UTAH" newpages.txt | egrep -iv "$KEYWORDS_UTAH_EXCLUDE" > Utah.txt
  egrep -i "$KEYWORDS_SALTLAKECITY" newpages.txt > SaltLakeCity.txt

  UTAH=`stat --print=%s Utah.txt`
  SALTLAKECITY=`stat --print=%s SaltLakeCity.txt`

  if [ $UTAH -ne 0 ];
  then
    export CATFILE="Utah.txt"
    export CATNAME="Utah"
    $CATEGORIZE
  fi

  if [ $SALTLAKECITY -ne 0 ];
  then
    export CATFILE="SaltLakeCity.txt"
    export CATNAME="Salt Lake City"
    $CATEGORIZE
  fi

  rm Utah.txt
  rm SaltLakeCity.txt

fi