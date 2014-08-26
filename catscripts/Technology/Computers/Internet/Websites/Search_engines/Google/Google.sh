#!/bin/bash

KEYWORDS_GOOGLE="Google"
KEYWORDS_YOUTUBE="You(| )Tube"
KEYWORDS_GOOGLEMAPS="Google(| )Maps"
KEYWORDS_GOOGLEEARTH="Google(| )Earth"
KEYWORDS_GOOGLE_EXCLUDE="$KEYWORDS_YOUTUBE|$KEYWORDS_GOOGLEMAPS|$KEYWORDS_GOOGLEEARTH|Google(| )Chrome|G(|-)mail|Google(| )Mail"
KEYWORDS_GOOGLE_ALL="$KEYWORDS_GOOGLE|$KEYWORDS_YOUTUBE|$KEYWORDS_GOOGLEMAPS|$KEYWORDS_GOOGLEEARTH"

if [ "$1" == "" ];
then
  
  debug_start "Google"
  
  GOOGLE=$(egrep -i "$KEYWORDS_GOOGLE" "$NEWPAGES" | egrep -iv "$KEYWORDS_GOOGLE_EXCLUDE")
  YOUTUBE=$(egrep -i "$KEYWORDS_YOUTUBE" "$NEWPAGES")
  GOOGLEMAPS=$(egrep -i "$KEYWORDS_GOOGLEMAPS" "$NEWPAGES")
  GOOGLEEARTH=$(egrep -i "$KEYWORDS_GOOGLEEARTH" "$NEWPAGES")

  categorize "GOOGLE" "Google"
  categorize "YOUTUBE" "YouTube"
  categorize "GOOGLEMAPS" "Google Maps"
  categorize "GOOGLEEARTH" "Google Earth"

  debug_end "Google"

fi