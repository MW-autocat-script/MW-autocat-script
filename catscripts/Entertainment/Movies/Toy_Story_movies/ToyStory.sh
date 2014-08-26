#!/bin/bash

export KEYWORDS_MOVIES_TOYSTORY="Toy(| )Story"
export KEYWORDS_MOVIES_TOYSTORY2="Toy(| )Story(| )2"
export KEYWORDS_MOVIES_TOYSTORY3="Toy(| )Story(| )3"

if [ "$1" == "" ];
then

  debug_start "Toy Story movies"

  TOYSTORY=$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY" "$NEWPAGES" | egrep -iv "$KEYWORDS_MOVIES_TOYSTORY2|$KEYWORDS_MOVIES_TOYSTORY3")
  categorize "TOYSTORY" "Toy Story"

  TSTWO=$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY2" "$NEWPAGES")
  categorize "TSTWO" "Toy Story 2"

  TSTHREE=$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY3" "$NEWPAGES")
  categorize "TSTHREE" "Toy Story 3"

  debug_end "Toy Story movies"

fi
