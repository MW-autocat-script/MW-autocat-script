#!/bin/bash

NASADIR="$UNITEDSTATESDIR/NASA"

KEYWORDS_NASA="N(|\.)A(|\.)S(|\.)A|National(| )Aeronautics(| )(and|&)(| )Space(| )Administration"

if [ "$1" == "" ];
then
  
  debug_start "NASA"

  . "$NASADIR/Apollo_missions/Apollo.sh" #KEYWORDS_APOLLOMISSIONS_ALL

  KEYWORDS_NASA_EXCLUDE="$KEYWORDS_APOLLOMISSIONS_ALL"

  KEYWORDS_NASA_ALL="$KEYWORDS_NASA|$KEYWORDS_NASA_ALL"

  NASA=$(egrep -i "$KEYWORDS_NASA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NASA_EXCLUDE")

  categorize "NASA" "NASA"

  debug_end "NASA"

else

  . "$NASADIR/Apollo_missions/Apollo.sh" norun #KEYWORDS_APOLLOMISSIONS_ALL

  KEYWORDS_NASA_EXCLUDE="$KEYWORDS_APOLLOMISSIONS_ALL"

  KEYWORDS_NASA_ALL="$KEYWORDS_NASA|$KEYWORDS_NASA_ALL"

fi