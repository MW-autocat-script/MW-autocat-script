#!/bin/bash

KEYWORDS_PUERTORICO="Puerto(| )Rico|Puerto(| )Rican"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Puerto Rico\n"
  fi

  PUERTORICO=$(egrep -i "$KEYWORDS_PUERTORICO" newpages.txt)

  if [ "$PUERTORICO" != "" ];
  then
    printf "$PUERTORICO" > PuertoRico.txt
    export CATFILE="PuertoRico.txt"
    export CATNAME="Puerto Rico"
    $CATEGORIZE
    rm PuertoRico.txt
    unset PUERTORICO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Puerto Rico\n"
  fi

fi