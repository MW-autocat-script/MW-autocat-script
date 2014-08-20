#!/bin/bash

KEYWORDS_MYSPACE="Myspace"

if [ "$1" == "" ];
then

  debug_start "Myspace"

  MYSPACE=$(egrep -i "$KEYWORDS_MYSPACE" "$NEWPAGES")

  if [ "$MYSPACE" != "" ];
  then
    printf "%s" "$MYSPACE" > Myspace.txt
    export CATFILE="Myspace.txt"
    export CATNAME="Myspace"
    $CATEGORIZE
    rm Myspace.txt
    unset MYSPACE
  fi
  
  debug_end "Myspace"

fi