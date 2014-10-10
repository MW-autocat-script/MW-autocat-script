#!/bin/bash

KEYWORDS_TOGO="\btogo"
KEYWORDS_TOGO_EXCLUDE="Jonathan(| )Togo"
KEYWORDS_TOGO_ALL="$KEYWORDS_TOGO"

if [ "$1" == "" ];
then
  
  debug_start "Togo"

  TOGO=$(egrep -i "$KEYWORDS_TOGO" "$NEWPAGES" | egrep -iv "$KEYWORDS_TOGO_EXCLUDE")

  catgorize "TOGO" "TOGO"

  debug_end "Togo"

fi