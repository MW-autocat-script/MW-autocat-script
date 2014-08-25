#!/bin/bash

KEYWORDS_ACTOR_DANIELRADCLIFFE="Daniel(| )Radcliffe"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Daniel Radcliffe"

  RADCLIFFE=$(egrep -i "$KEYWORDS_ACTOR_DANIELRADCLIFFE" "$NEWPAGES")

  categorize "RADCLIFFE" "Daniel Radcliffe"

  debug_end "Daniel Radcliffe"

fi