#!/bin/bash

KEYWORDS_TURTLES="Turtle|Tortoise|Terrapin"
KEYWORDS_TURTLES_EXCLUDE="tenneage|mutant|ninja|TMNT|Turtle(| )Knock"
KEYWORDS_TURTLES_ALL="$KEYWORDS_TURTLES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Turtles"

  TURTLES=$(egrep -i "$KEYWORDS_TURTLES" "$NEWPAGES" | egrep -iv "$KEYWORDS_TURTLES_EXCLUDE")

  categorize "TURTLES" "Turtles"

  debug_end "Turtles"

fi