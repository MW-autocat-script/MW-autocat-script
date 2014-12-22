#!/bin/bash

KEYWORDS_AIRCRAFT="Aircraft"
KEYWORDS_AIRPLANES="air(| )plane|aero(| )plane"
KEYWORDS_WRIGHTBROTHERS="Wright(| )Bro(s|ther)|(Orville|Wilbur)(| )Wright|Wright(| )Flyer"
KEYWORDS_AIRCRAFT_EXCLUDE="$KEYWORDS_AIRPLANES|$KEYWORDS_WRIGHTBROTHERS"
KEYWORDS_AIRCRAFT_ALL="$KEYWORDS_AIRCRAFT|$KEYWORDS_AIRPLANES|$KEYWORDS_WRIGHTBROTHERS"

if [ "$1" == "" ];
then

  debug_start "Aircraft"

  AIRCRAFT=$(egrep -i "$KEYWORDS_AIRCRAFT" "$NEWPAGES" | egrep -iv "$KEYWORDS_AIRCRAFT_EXCLUDE")
  AIRPLANES=$(egrep -i "$KEYWORDS_AIRPLANES" "$NEWPAGES")
  WRIGHTBROTHERS=$(egrep -i "$KEYWORDS_WRIGHTBROTHERS" "$NEWPAGES")

  categorize "AIRCRAFT" "Aircraft"
  categorize "AIRPLANES" "Airplanes"
  categorize "WRIGHTBROTHERS" "Wright Brothers"

  debug_end "Aircraft"

fi