#!/bin/bash

KEYWORDS_MINECRAFT="Mine(| )craft"
KEYWORDS_TEKKIT="Tekkit"
KEYWORDS_SAINTSROW="Saints(| )Row"
KEYWORDS_SAINTSROW2="Saints(| )Row(| )2"
KEYWORDS_SAINTSROW3="Saints(| )Row(| )(|:)(The(| )Third|3)"
KEYWORDS_SAINTSROW4="Saints(| )Row(| )(4|IV)"
KEYWORDS_SAINTSROW_EXCLUDE="$KEYWORDS_SAINTSROW2|$KEYWORDS_SAINTSROW3|$KEYWORDS_SAINTSROW4"

if [ "$1" == "" ];
then

  debug_start "Open-world video games"

  MINECRAFT=$(egrep -i "$KEYWORDS_MINECRAFT" "$NEWPAGES")
  TEKKIT=$(egrep -i "$KEYWORDS_TEKKIT" "$NEWPAGES")
  SAINTSROW=$(egrep -i "$KEYWORDS_SAINTSROW" "$NEWPAGES" | egrep -iv "$KEYWORDS_SAINTSROW_EXCLUDE")
  ROW2=$(egrep -i "$KEYWORDS_SAINTSROW2" "$NEWPAGES")
  THETHIRD=$(egrep -i "$KEYWORDS_SAINTSROW3" "$NEWPAGES" )
  ROW4=$(egrep -i "$KEYWORDS_SAINTSROW4" "$NEWPAGES")

  categorize "MINECRAFT" "Minecraft"
  categorize "TEKKIT" "Tekkit"
  categorize "SAINTSROW" "Saints Row"
  categorize "ROW2" "Saints Row 2"
  categorize "THETHIRD" "Saints Row: The Third"
  categorize "ROW4" "Saints Row IV"

  debug_end "Open-world video games"

fi
