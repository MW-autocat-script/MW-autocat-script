#!/bin/bash

KEYWORDS_MELBOURNE="Melbourne"
KEYWORDS_MELBOURNE_EXCLUDE="Melbourne(|,) Fl"
KEYWORDS_MELBOURNE_ALL="$KEYWORDS_MELBOURNE"

if [ "$1" == "" ];
then
  
  debug_start "Melbourne, Australia"

  MELBOURNE=$(egrep -i "$KEYWORDS_MELBOURNE" "$NEWPAGES" | egrep -iv "$KEYWORDS_MELBOURNE_EXCLUDE")

  categorize "MELBOURNE" "Melbourne, Australia"

  debug_end "Melbourne, Australia"

fi