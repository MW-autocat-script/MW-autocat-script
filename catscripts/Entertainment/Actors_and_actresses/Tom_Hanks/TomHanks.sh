#!/bin/bash

KEYWORDS_ACTOR_TOMHANKS="Tom(| )Hanks"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Tom Hanks"

  TOMHANKS=$(egrep -i "$KEYWORDS_ACTOR_TOMHANKS" "$NEWPAGES")

  categorize "TOMHANKS" "Tom Hanks"

  debug_end "Tom Hanks"

fi