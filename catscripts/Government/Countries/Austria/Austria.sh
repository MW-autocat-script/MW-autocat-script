#!/bin/bash

KEYWORDS_AUSTRIA="Austria"
KEYWORDS_AUSTRIA_ALL="$KEYWORDS_AUSTRIA"

if [ "$1" == "" ];
then
  
  debug_start "Austria"

  AUSTRIA=$(egrep -i "$KEYWORDS_AUSTRIA" "$NEWPAGES")

  categorize "AUSTRIA" "Austria"

  debug_end "Austria"

fi