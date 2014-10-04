#!/bin/bash

KEYWORDS_ALABAMA="Alabama|,(| )AL( |$)"
KEYWORDS_ALABAMA_EXCLUDE="Sweet(| )Home(| )Alabama"
KEYWORDS_ALABAMA_ALL="$KEYWORDS_ALABAMA"

if [ "$1" == "" ];
then

  debug_start "Alabama"

  ALABAMA=$(egrep -i "$KEYWORDS_ALABAMA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ALABAMA_EXCLUDE") 

  categorize "ALABAMA" "Alabama"

  debug_end "Alabama"

fi