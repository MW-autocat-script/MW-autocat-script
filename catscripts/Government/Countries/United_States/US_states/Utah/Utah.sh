#!/bin/bash

KEYWORDS_UTAH="Utah"
KEYWORDS_SALTLAKECITY="Salt(| )Lake(| )City"
KEYWORDS_UTAH_EXCLUDE="$KEYWORDS_SALTLAKECITY|Utahraptor"
KEYWORDS_UTAH_ALL="$KEYWORDS_UTAH|$KEYWORDS_SALTLAKECITY"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Utah"

  UTAH=$(egrep -i "$KEYWORDS_UTAH" newpages.txt | egrep -iv "$KEYWORDS_UTAH_EXCLUDE")
  SALTLAKECITY=$(egrep -i "$KEYWORDS_SALTLAKECITY" newpages.txt)

  if [ "$UTAH" != "" ];
  then
    printf "%s" "$UTAH" > Utah.txt
    export CATFILE="Utah.txt"
    export CATNAME="Utah"
    $CATEGORIZE
    rm Utah.txt
    unset UTAH
  fi

  if [ "$SALTLAKECITY" != "" ];
  then
    printf "%s" "$SALTLAKECITY" > SaltLakeCity.txt
    export CATFILE="SaltLakeCity.txt"
    export CATNAME="Salt Lake City"
    $CATEGORIZE
    rm SaltLakeCity.txt
    unset SALTLAKECITY
  fi
  
  debug_end "Utah"

fi