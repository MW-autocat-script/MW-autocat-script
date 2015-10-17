#!/bin/bash

KEYWORDS_CHINA="People(|')s(| )Republic(| )of(| )China"
KEYWORDS_CHINA_SECONDARY="China"
KEYWORDS_HONGKONG="Hong(| )Kong"
KEYWORDS_BEIJING="Beijing"
KEYWORDS_GREATWALL="Great(| )Wall(| )of(| )China"
KEYWORDS_CHINA_SECONDARY_EXCLUDE="Republic(| )of(| )China|fine(| )china|antique(| )china|China(| )town|$KEYWORDS_HONGKONG|$KEYWORDS_BEIJING|$KEYWORDS_GREATWALL"
KEYWORDS_CHINA_ALL="$KEYWORDS_CHINA|$KEYWORDS_CHINA_SECONDARY|$KEYWORDS_HONGKONG|$KEYWORDS_BEIJING|$KEYWORDS_GREATWALL"


if [ "$1" == "" ];
then
  
  debug_start "China"

  CHINA=$(egrep -i "$KEYWORDS_CHINA" "$NEWPAGES"; egrep -i "$KEYWORDS_CHINA_SECONDARY" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHINA_SECONDARY_EXCLUDE")
  WALL=$(egrep -i "$KEYWORDS_GREATWALL" "$NEWPAGES")
  BEIJING=$(egrep -i "$KEYWORDS_BEIJING" "$NEWPAGES")
  HONGKONG=$(egrep -i "$KEYWORDS_HONGKONG" "$NEWPAGES")

  categorize "CHINA" "China"
  categorize "WALL" "Great Wall of China"
  categorize "BEIJING" "Beijing"
  categorize "HONGKONG" "Hong Kong"

  debug_end "China"

fi

