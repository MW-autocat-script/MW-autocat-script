#!/bin/bash

KEYWORDS_XBOXONE="X(|-)box(| )(1\b|One)"

if [ "$1" == "" ];
then

  debug_start "Xbox One"

  XBOXONE=$(egrep -i "$KEYWORDS_XBOXONE" "$NEWPAGES")

  categorize "XBOXONE" "Xbox One"

  debug_end "Xbox One"

fi