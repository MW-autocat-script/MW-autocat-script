#!/bin/bash

KEYWORDS_VIRGINIA="Virginia"
KEYWORDS_JAMESTOWN="Jamestown"
KEYWORDS_ARLINGTON="Arlington"
KEYWORDS_VIRGINIA_EXCLUDE="$KEYWORDS_JAMESTOWN|$KEYWORDS_ARLINGTON|West(| )Virginia|Virginia(| )(Apgar|Hensley|Woolf|McKenna|Grace|Scripps|Leng)"
KEYWORDS_VIRGINIA_ALL="$KEYWORDS_VIRGINIA|$KEYWORDS_ARLINGTON|$KEYWORDS_JAMESTOWN"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Virginia\n"
  fi

  VIRGINIA="$(egrep -i "$KEYWORDS_VIRGINIA" newpages.txt | egrep -iv "$KEYWORDS_VIRGINIA_EXCLUDE")"
  ARLINGTON="$(egrep -i "$KEYWORDS_ARLINGTON" newpages.txt)"
  JAMESTOWN="$(egrep -i "$KEYWORDS_JAMESTOWN" newpages.txt)"

  if [ "$VIRGINIA" != "" ];
  then
    printf "%s" "$VIRGINIA" > Virginia.txt
    export CATFILE="Virginia.txt"
    export CATNAME="Virginia"
    $CATEGORIZE
    rm Virginia.txt
    unset VIRGINIA
  fi

  if [ "$ARLINGTON" != "" ];
  then
    printf "%s" "$ARLINGTON" > Arlington.txt
    export CATFILE="Arlington.txt"
    export CATNAME="Arlington"
    $CATEGORIZE
    rm Arlington.txt
    unset ARLINGTON
  fi

  if [ "$JAMESTOWN" != "" ];
  then
    printf "%s" "$JAMESTOWN" > Jamestown.txt
    export CATFILE="Jamestown.txt"
    export CATNAME="Jamestown"
    $CATEGORIZE
    rm Jamestown.txt
    unset JAMESTOWN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Virginia\n"
  fi

fi