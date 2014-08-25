#!/bin/bash

KEYWORDS_ACTOR_SYLVESTERSTALLONE="Sylvester(| )Stallone"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sylvester Stallone"

  SYLVESTERSTALLONE=$(egrep -i "$KEYWORDS_ACTOR_SYLVESTERSTALLONE" "$NEWPAGES")

  categorize "SYLVESTERSTALLONE" "Sylvester Stallone"

  debug_end "Sylvester Stallone"

fi