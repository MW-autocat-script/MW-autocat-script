#!/bin/bash

KEYWORDS_ACTOR_TOMCRUISE="Tom(| )Cruise"

if [ "$1" == "" ];
then

  debug_start "Tom Cruise"

  TOMCRUISE=$(egrep -i "$KEYWORDS_ACTOR_TOMCRUISE" "$NEWPAGES")

  categorize "TOMCRUISE" "Tom Cruise"

  debug_end "Tom Cruise"

fi