#!/bin/bash

KEYWORDS_MINDLESSBEHAVIOR="Mindless(| )Behavior|Roc(| )Royal|Ray(| )Ray"

if [ "$1" == "" ];
then
  
  debug_start "Mindless Behavior"

  MINDLESS=$(egrep -i "$KEYWORDS_MINDLESSBEHAVIOR" "$NEWPAGES")

  categorize "MINDLESS" "Mindless Behavior"

  debug_end "Mindless Behavior"

fi