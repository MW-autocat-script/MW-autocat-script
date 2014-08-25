#!/bin/bash

KEYWORDS_ACTOR_CHUCKNORRIS="Chuck(| )Norris"

if [ "$1" == "" ];
then

  debug_start "Chuck Norris"

  CHUCKNORRIS=$(egrep -i "$KEYWORDS_ACTOR_CHUCKNORRIS" "$NEWPAGES")

  categorize "CHUCKNORRIS" "Chuck Norris"

  debug_end "Chuck Norris"

fi
