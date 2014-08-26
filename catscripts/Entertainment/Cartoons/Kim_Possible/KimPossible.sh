#!/bin/bash

KEYWORDS_KIMPOSSIBLE="Kim(| )Possible"

if [ "$1" == "" ];
then

  debug_start "Kim Possible"

  KIMPOSSIBLE=$(egrep -i "$KEYWORDS_KIMPOSSIBLE" "$NEWPAGES")

  categorize "KIMPOSSIBLE" "Kim Possible"

  debug_end "Kim Possible"

fi