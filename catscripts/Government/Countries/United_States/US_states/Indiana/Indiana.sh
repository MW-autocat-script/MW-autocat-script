#!/bin/bash

KEYWORDS_INDIANA="Indiana"
KEYWORDS_INDIANA_EXCLUDE="Indiana(| )County|Indiana(| )University|Indiana(| )Jones"
KEYWORDS_INDIANA_ALL="$KEYWORDS_INDIANA"

if [ "$1" == "" ];
then

  debug_start "Indiana"

  INDIANA=$(egrep -i "$KEYWORDS_INDIANA" "$NEWPAGES" | egrep -iv "$KEYWORDS_INDIANA_EXCLUDE" )

  categorize "INDIANA" "Indiana"

  debug_end "Indiana"

fi