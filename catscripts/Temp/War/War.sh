#!/bin/bash

KEYWORDS_WORLDWARONE="(World(| )War|\bWW)(| )(I\b|1|One)|The(| )Great(| )War"
KEYWORDS_WORLDWARTWO="(World(| )War|\bWW)(| )(II\b|2|Two)"

if [ "$1" == "" ];
then

  debug_start "War"

  WWONE=$(egrep -i "$KEYWORDS_WORLDWARONE" "$NEWPAGES")
  WWTWO=$(egrep -i "$KEYWORDS_WORLDWARTWO" "$NEWPAGES")

  categorize "WWONE" "World War I"
  categorize "WWTWO" "World War II"

  debug_end "War"

fi