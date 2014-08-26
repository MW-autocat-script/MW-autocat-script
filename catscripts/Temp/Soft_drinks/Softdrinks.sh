#!/bin/bash

KEYWORDS_SOFTDRINK="(pop|soft)(| )drink|\bcola|root(| )beer|soda"
KEYWORDS_PEPSICO="Pepsi|Mountain(| )Dew"
KEYWORDS_COCACOLA="Coca(| |-)Cola|Diet(| )Coke|Dr(|\.)(| )Pepper"
KEYWORDS_SOFTDRINK_EXCLUDE="$KEYWORDS_PEPSICO|$KEYWORDS_COCACOLA|baking(| )soda"

if [ "$1" == "" ];
then

  debug_start "Soft drinks"

  PEPSICO=$(egrep -i "$KEYWORDS_PEPSICO" "$NEWPAGES")
  COKE=$(egrep -i "$KEYWORDS_COCACOLA" "$NEWPAGES")
  SOFT=$(egrep -i "$KEYWORDS_SOFTDRINK" "$NEWPAGES" | egrep -iv "$KEYWORDS_SOFTDRINK_EXCLUDE")

  categorize "PEPSICO" "PepsiCo Inc."
  categorize "COKE" "The Coca-Cola Company"
  categorize "SOFT" "Soft drinks"

  debug_end "Soft drinks"

fi