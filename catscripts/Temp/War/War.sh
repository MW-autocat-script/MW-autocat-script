#!/bin/bash

KEYWORDS_WORLDWARONE="(World(| )War|\bWW)(| )(I\b|1|One)|The(| )Great(| )War"
KEYWORDS_WORLDWARTWO="(World(| )War|\bWW)(| )(II\b|2|Two)"

if [ "$1" == "" ];
then

  debug_start "War"

  WWONE=$(egrep -i "$KEYWORDS_WORLDWARONE" newpages.txt)
  WWTWO=$(egrep -i "$KEYWORDS_WORLDWARTWO" newpages.txt)

  if [ "$WWONE" != "" ];
  then
    printf "%s" "$WWONE" > WorldWarI.txt
    export CATFILE="WorldWarI.txt"
    export CATNAME="World War I"
    $CATEGORIZE
    rm WorldWarI.txt
    unset WWONE
  fi

  if [ "$WWTWO" != "" ];
  then
    printf "%s" "$WWTWO" > WorldWarII.txt
    export CATFILE="WorldWarII.txt"
    export CATNAME="World War II"
    $CATEGORIZE
    rm WorldWarII.txt
    unset WWTWO
  fi

  debug_end "War"

fi