#!/bin/bash

KEYWORDS_MICHIGAN="Michigan"
KEYWORDS_DETROIT="Detroit"
KEYWORDS_MICHIGAN_EXCLUDE="$KEYWORDS_DETROIT|Lake(| )Michigan"
KEYWORDS_DETROIT_EXCLUDE="Detroit(| )Lions"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Michigan\n"
  fi

  MICHIGAN=$(egrep -i "$KEYWORDS_MICHIGAN" newpages.txt | egrep -iv "$KEYWORDS_MICHIGAN_EXCLUDE")
  DETROIT=$(egrep -i "$KEYWORDS_DETROIT" newpages.txt | egrep -iv "$KEYWORDS_DETROIT_EXCLUDE")

  if [ "$MICHIGAN" != "" ];
  then
    printf "$MICHIGAN" > Michigan.txt
    export CATFILE="Michigan.txt"
    export CATNAME="Michigan"
    $CATEGORIZE
    rm Michigan.txt
    unset MICHIGAN
  fi

  if [ "$DETROIT" != "" ];
  then
    printf "$DETROIT" > Detroit.txt
    export CATFILE="Detroit.txt"
    export CATNAME="Detroit"
    $CATEGORIZE
    rm Detroit.txt
    unset DETROIT
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Michigan\n"
  fi

fi