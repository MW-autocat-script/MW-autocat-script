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

  if [ "$GOOGLE" != "" ];
  then
    printf "%s" "$GOOGLE" > Google.txt
    export CATFILE="Google.txt"
    export CATNAME="Google"
    $CATEGORIZE
    rm Google.txt
    unset GOOGLE
  fi

  if [ "$YOUTUBE" != "" ];
  then
    printf "%s" "$YOUTUBE" > YouTube.txt
    export CATFILE="YouTube.txt"
    export CATNAME="YouTube"
    $CATEGORIZE
    rm YouTube.txt
    unset YOUTUBE
  fi

  if [ "$GOOGLEMAPS" != "" ];
  then
    printf "%s" "$GOOGLEMAPS" > GoogleMaps.txt
    export CATFILE="GoogleMaps.txt"
    export CATNAME="Google Maps"
    $CATEGORIZE
    rm GoogleMaps.txt
    unset GOOGLEMAPS
  fi

  if [ "$GOOGLEEARTH" != "" ];
  then
    printf "%s" "$GOOGLEEARTH" > GoogleEarth.txt
    export CATFILE="GoogleEarth.txt"
    export CATNAME="Google Earth"
    $CATEGORIZE
    rm GoogleEarth.txt
    unset GOOGLEEARTH
  fi

  debug_end "Google"

fi