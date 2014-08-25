#!/bin/bash

KEYWORDS_ACTOR_WILLSMITH="Will(|ard)(| )Smith"

if [ "$1" == "" ];
then

  debug_start "Will Smith"

  WILLSMITH=$(egrep -i "$KEYWORDS_ACTOR_WILLSMITH" "$NEWPAGES")

  categorize "WILLSMITH" "Will Smith"

  debug_end "Will Smith"

fi
