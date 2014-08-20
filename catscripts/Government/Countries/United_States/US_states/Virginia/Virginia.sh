#!/bin/bash

KEYWORDS_VIRGINIA="Virginia"
KEYWORDS_JAMESTOWN="Jamestown"
KEYWORDS_ARLINGTON="Arlington"
KEYWORDS_VIRGINIA_EXCLUDE="$KEYWORDS_JAMESTOWN|$KEYWORDS_ARLINGTON|West(| )Virginia|Virginia(| )(Apgar|Hensley|Woolf|McKenna|Grace|Scripps|Leng)"
KEYWORDS_VIRGINIA_ALL="$KEYWORDS_VIRGINIA|$KEYWORDS_ARLINGTON|$KEYWORDS_JAMESTOWN"

if [ "$1" == "" ];
then
  
  debug_start "Virginia"

  VIRGINIA="$(egrep -i "$KEYWORDS_VIRGINIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIRGINIA_EXCLUDE")"
  ARLINGTON="$(egrep -i "$KEYWORDS_ARLINGTON" "$NEWPAGES")"
  JAMESTOWN="$(egrep -i "$KEYWORDS_JAMESTOWN" "$NEWPAGES")"

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

  debug_end "Virginia"

fi