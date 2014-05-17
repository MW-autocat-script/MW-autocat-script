#!/bin/bash

KEYWORDS_OKLAHOMA="Oklahoma|Tulsa"
KEYWORDS_OKLAHOMACITY="Oklahoma(| )City"
KEYWORDS_OKLAHOMA_EXCLUDE="$KEYWORDS_OKLAHOMACITY"

if [ "$1"  == "" ]; #Normal operation
then

  OKLAHOMA=$(egrep -i "$KEYWORDS_OKLAHOMA" newpages.txt | egrep -iv "$KEYWORDS_OKLAHOMA_EXCLUDE")
  OKCITY=$(egrep -i "$KEYWORDS_OKLAHOMACITY" newpages.txt)

  if [ "$OKLAHOMA" != "" ];
  then
    printf "$OKLAHOMA" > Oklahoma.txt
    export CATFILE="Oklahoma.txt"
    export CATNAME="Oklahoma"
    $CATEGORIZE
    rm Oklahoma.txt
    unset OKLAHOMA
  fi

  if [ "$OKCITY" != "" ];
  then
    printf "$OKCITY" > OKCity.txt
    export CATFILE="OKCity.txt"
    export CATNAME="Oklahoma City"
    $CATEGORIZE
    rm OKCity.txt
    unset OKCITY
  fi

fi