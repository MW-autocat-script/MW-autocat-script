#!/bin/bash

KEYWORDS_JUDAISM="Judaism|Jewish|Yom Kippur|Rosh Hashana|Rosh Hashanah|\bTorah|Talmud|Hanukkah|Chanukah|Chanukkah|Chanuka"
KEYWORDS_JUDAISM_ALL="$KEYWORDS_JUDAISM"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Judaism\n"
  fi

  JUDAISM=`egrep -i "$KEYWORDS_JUDAISM" newpages.txt`

  if [ "$JUDAISM" != "" ];
  then
    printf "$JUDAISM" > Judaism.txt
    export CATFILE="Judaism.txt"
    export CATNAME="Judaism"
    $CATEGORIZE
    rm Judaism.txt
    unset JUDAISM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Judaism\n"
  fi

fi

