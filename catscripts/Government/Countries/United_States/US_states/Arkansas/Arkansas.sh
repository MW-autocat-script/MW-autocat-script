#!/bin/bash

KEYWORDS_ARKANSAS="Arkansas"

if [ "$1" == "" ]; #Normal operation
then

  ARKANSAS=`egrep -i "$KEYWORDS_ARKANSAS" newpages.txt`

  if [ "$ARKANSAS" != "" ];
  then
    egrep -i "$KEYWORDS_ARKANSAS" newpages.txt > Arkansas.txt
    export CATFILE="Arkansas.txt"
    export CATNAME="Arkansas"
    $CATEGORIZE
    rm Arkansas.txt
    unset ARKANSAS
  fi
fi