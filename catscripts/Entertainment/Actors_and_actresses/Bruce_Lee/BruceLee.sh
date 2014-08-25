#!/bin/bash

KEYWORDS_ACTOR_BRUCELEE="Bruce(| )Lee"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bruce Lee"

  BRUCELEE=$(egrep -i "$KEYWORDS_ACTOR_BRUCELEE" "$NEWPAGES")

  categorize "BRUCELEE" "Bruce Lee"

  debug_end "Bruce Lee"

fi
