#!/bin/bash

KEYWORDS_POLAND="Poland"
KEYWORDS_WARSAW="Warsaw"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"
KEYWORDS_POLAND_EXCLUDE="$KEYWORDS_WARSAW|$KEYWORDS_AUSCHWITZ"

if [ "$1" == "" ];
then
  
  debug_start "Poland"

  POLAND=$(egrep -i "$KEYWORDS_POLAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_POLAND_EXCLUDE")
  WARSAW=$(egrep -i "$KEYWORDS_WARSAW" "$NEWPAGES")
  AUSCHWITZ=$(egrep -i "$KEYWORDS_AUSCHWITZ" "$NEWPAGES")

  categorize "POLAND" "Poland"
  categorize "WARSAW" "Warsaw"
  categorize "AUSCHWITZ" "Auschwitz"

  debug_end "Poland"

fi