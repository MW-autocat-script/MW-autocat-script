#!/bin/bash

KEYWORDS_RABBITS="Rabbit|bunn(y|ies)"
KEYWORDS_RABBITS_EXCLUDE="(Jessica|Roger|Peter|Velveteen)(| )Rabbit|Bugs(| )Bunny|(Cream|Bianca)(| )the(| )Rabbit|Winnie(| )the(| )Pooh"
KEYWORDS_RABBITS_ALL="$KEYWORDS_RABBITS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Rabbits"

  RABBITS=$(egrep -i "$KEYWORDS_RABBITS" "$NEWPAGES" | egrep -iv "$KEYWORDS_RABBITS_EXCLUDE")

  categorize "RABBITS" "Rabbits"

  debug_end "Rabbits"

fi