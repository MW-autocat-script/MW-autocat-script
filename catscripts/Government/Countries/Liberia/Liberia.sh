#!/bin/bash

KEYWORDS_LIBERIA="Liberia"
KEYWORDS_LIBERIA_ALL="$KEYWORDS_LIBERIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Liberia\n"
  fi

  LIBERIA=`egrep -i "$KEYWORDS_LIBERIA" newpages.txt`

  if [ "$LIBERIA" != "" ];
  then
    printf "$LIBERIA" > Liberia.txt
    export CATFILE="Liberia.txt"
    export CATNAME="Liberia"
    $CATEGORIZE
    rm Liberia.txt
    unset LIBERIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Liberia\n"
  fi

fi