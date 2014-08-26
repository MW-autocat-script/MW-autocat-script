#!/bin/bash

KEYWORDS_DIVISION="[0-9]{1,}(| )divided(| )by(| )[0-9]{1,}|What(| )is(| )[0-9]{1,} / [0-9]{1,}|[0-9]{1,}(| )÷(| )[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Division"

  DIVISION=$(egrep -i "$KEYWORDS_DIVISION" "$NEWPAGES")

  categorize "DIVISION" "Division"

  debug_end "Division"

fi