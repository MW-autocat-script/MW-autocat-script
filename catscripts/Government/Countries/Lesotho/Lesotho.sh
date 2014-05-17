#!/bin/bash

KEYWORDS_LESOTHO="Lesotho"
KEYWORDS_LESOTHO_ALL="$KEYWORDS_LESOTHO"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ]; 
  then
    printf "Starting Lesotho\n"
  fi

  LESOTHO=$(egrep -i "$KEYWORDS_LESOTHO" newpages.txt)

  if [ "$LESOTHO" != "" ];
  then
    printf "$LESOTHO" > Lesotho.txt
    export CATFILE="Lesotho.txt"
    export CATNAME="Lesotho"
    $CATEGORIZE
    rm Lesotho.txt
    unset LESOTHO
  fi

  if [ "$DEBUG" == "yes" ]; 
  then
    printf "Finishing Lesotho\n"
  fi

fi