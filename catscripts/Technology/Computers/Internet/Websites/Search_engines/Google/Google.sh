#!/bin/bash

KEYWORDS_GOOGLE="Google"
KEYWORDS_YOUTUBE="You(| )Tube"
KEYWORDS_GOOGLEMAPS="Google(| )Maps"
KEYWORDS_GOOGLEEARTH="Google(| )Earth"
KEYWORDS_GOOGLE_EXCLUDE="$KEYWORDS_YOUTUBE|$KEYWORDS_GOOGLEMAPS|$KEYWORDS_GOOGLEEARTH|Google(| )Chrome"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_GOOGLE" newpages.txt | egrep -iv "$KEYWORDS_GOOGLE_EXCLUDE" >> Google.txt
  egrep -i "$KEYWORDS_YOUTUBE" newpages.txt >> YouTube.txt
  egrep -i "$KEYWORDS_GOOGLEMAPS" newpages.txt >> GoogleMaps.txt
  egrep -i "$KEYWORDS_GOOGLEEARTH" newpages.txt >> GoogleEarth.txt
  
  GOOGLE=`stat --print=%s Google.txt`
  YOUTUBE=`stat --print=%s YouTube.txt`
  GOOGLEMAPS=`stat --print=%s GoogleMaps.txt`
  GOOGLEEARTH=`stat --print=%s GoogleEarth.txt`

  if [ $GOOGLE -ne 0 ];
  then
    export CATFILE="Google.txt"
    export CATNAME="Google"
    $CATEGORIZE
  fi

  if [ $YOUTUBE -ne 0 ];
  then
    export CATFILE="YouTube.txt"
    export CATNAME="YouTube"
    $CATEGORIZE
  fi

  if [ $GOOGLEMAPS -ne 0 ];
  then
    export CATFILE="GoogleMaps.txt"
    export CATNAME="Google Maps"
    $CATEGORIZE
  fi

  if [ $GOOGLEEARTH -ne 0 ];
  then
    export CATFILE="GoogleEarth.txt"
    export CATNAME="Google Earth"
    $CATEGORIZE
  fi

  rm Google.txt
  rm YouTube.txt
  rm GoogleEarth.txt
  rm GoogleMaps.txt

fi