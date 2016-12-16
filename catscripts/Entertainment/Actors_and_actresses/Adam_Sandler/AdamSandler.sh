#!/bin/bash

readonly KEYWORDS_ACTOR_ADAMSANDLER="Adam(| )Sandler"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Adam Sandler"

  SANDLER=$(egrep -i "$KEYWORDS_ACTOR_ADAMSANDLER" "$NEWPAGES")

  categorize "SANDLER" "Adam Sandler"

  debug_end "Adam Sandler"

fi