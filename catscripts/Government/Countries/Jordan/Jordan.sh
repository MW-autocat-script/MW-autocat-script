#!/bin/bash

KEYWORDS_JORDAN="(king|queen|prince(|ss)).+ of Jordan|Jordanian|(kingdom|country|flag|government) of Jordan"
KEYWORDS_JORDAN_ALL="$KEYWORDS_JORDAN"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Jordan"

  JORDAN=$(egrep -i "$KEYWORDS_JORDAN" "$NEWPAGES")

  categorize "JORDAN" "Jordan"

  debug_end "Jordan"

fi