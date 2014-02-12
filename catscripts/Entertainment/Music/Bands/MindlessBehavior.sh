#!/bin/bash

KEYWORDS_MINDLESSBEHAVIOR="Mindless(| )Behavior|Roc(| )Royal|Ray(| )Ray"

if [ "$1" == "" ];
then
  
  debug_start "Mindless Behavior"

  MINDLESS="$(egrep -i "$KEYWORDS_MINDLESSBEHAVIOR" newpages.txt)"

  if [ "$1" == "" ];
  then
    printf "%s" "$MINDLESS" > MindlessBehavior.txt
    export CATFILE="MindlessBehavior.txt"
    export CATNAME="Mindless Behavior"
    $CATEGORIZE
    rm MindlessBehavior.txt
    unset MINDLESS
  fi

  debug_end "Mindless Behavior"

fi