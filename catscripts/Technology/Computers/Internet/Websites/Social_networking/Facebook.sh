#!/bin/bash

KEYWORDS_FACEBOOK="Face(| )book"

if [ "$1" == "" ];
then

  debug_start "Facebook"

  FACEBOOK=$(egrep -i "$KEYWORDS_FACEBOOK" "$NEWPAGES")

  categorize "FACEBOOK" "Facebook"

  debug_end "Facebook"

fi