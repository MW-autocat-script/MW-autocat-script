#!/bin/bash

readonly KEYWORDS_ACTOR_BRUCEWILLIS="Bruce(| )Willis"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bruce Willis"

  WILLIS=$(egrep -i "$KEYWORDS_ACTOR_BRUCEWILLIS" "$NEWPAGES")

  categorize "WILLIS" "Bruce Willis"

  debug_end "Bruce Willis"

fi