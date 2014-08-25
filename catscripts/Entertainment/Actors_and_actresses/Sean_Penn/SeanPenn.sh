#!/bin/bash

KEYWORDS_ACTOR_SEANPENN="Sean(| )Penn"

if [ "$1" == "" ];
then

  debug_start "Sean Penn"

  SEANPENN=$(egrep -i "$KEYWORDS_ACTOR_SEANPENN" "$NEWPAGES")

  categorize "SEANPENN" "Sean Penn"

  debug_end "Sean Penn"

fi
