#!/bin/bash

KEYWORDS_WESTVIRGINIA="West(| )Virginia"
KEYWORDS_WESTVIRGINIA_ALL="$KEYWORDS_WESTVIRGINIA"

if [ "$1" == "" ];
then
  
  debug_start "West Virginia"

  WESTVIRGINIA="$(egrep -i "$KEYWORDS_WESTVIRGINIA" "$NEWPAGES")"

  if [ "$WESTVIRGINIA" != "" ];
  then
    printf "%s" "$WESTVIRGINIA" > WestVirginia.txt
    export CATFILE="WestVirginia.txt"
    export CATNAME="West Virginia"
    $CATEGORIZE
    rm WestVirginia.txt
    unset WESTVIRGINIA
  fi

  debug_end "West Virginia"

fi