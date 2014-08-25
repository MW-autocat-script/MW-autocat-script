#!/bin/bash

KEYWORDS_NEWJERSEY="New(| )Jersey|,(| )NJ\b"

if [ "$1" == "" ];
then

  debug_start "New Jersey"

  NEWJERSEY=$(egrep -i "$KEYWORDS_NEWJERSEY" "$NEWPAGES")

  categorize "NEWJERSEY" "New Jersey"

  debug_end "New Jersey"

fi