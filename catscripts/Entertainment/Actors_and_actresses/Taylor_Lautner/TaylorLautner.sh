#!/bin/bash

KEYWORDS_ACTOR_TAYLORLAUTNER="Taylor(| )Lautner"

if [ "$1" == "" ];
then

  debug_start "Taylor Lautner"

  TAYLORLAUTNER=$(egrep -i "$KEYWORDS_ACTOR_TAYLORLAUTNER" "$NEWPAGES")

  categorize "TAYLORLAUTNER" "Taylor Lautner"

  debug_end "Taylor Lautner"

fi