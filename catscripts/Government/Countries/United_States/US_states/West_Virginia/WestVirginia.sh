#!/bin/bash

KEYWORDS_WESTVIRGINIA="West(| )Virginia"
KEYWORDS_WESTVIRGINIA_ALL="$KEYWORDS_WESTVIRGINIA"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting West Virginia\n"
  fi

  WESTVIRGINIA="$(egrep -i "$KEYWORDS_WESTVIRGINIA" newpages.txt)"

  if [ "$WESTVIRGINIA" != "" ];
  then
    printf "%s" "$WESTVIRGINIA" > WestVirginia.txt
    export CATFILE="WestVirginia.txt"
    export CATNAME="West Virginia"
    $CATEGORIZE
    rm WestVirginia.txt
    unset WESTVIRGINIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing West Virginia\n"
  fi

fi