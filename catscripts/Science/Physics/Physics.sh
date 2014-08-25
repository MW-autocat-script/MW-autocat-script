#!/bin/bash

KEYWORDS_PHYSICS="physics|heat(| )conduction|conduction(| )of(| )heat"

if [ "$1" == "" ];
then

  debug_start "Physics"

  PHYSICS=$(egrep -i "$KEYWORDS_PHYSICS" "$NEWPAGES")

  categorize "PHYSICS" "Physics"

  debug_end "Physics"

fi
