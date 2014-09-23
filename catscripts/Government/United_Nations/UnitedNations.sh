#!/bin/bash

KEYWORDS_UNITEDNATIONS="United(| )Nations|\bU(|\.)N(|\.)\b"

if [ "$1" == "" ]; #normal operation
then

  debug_start "United Nations"

  UNITED=$(egrep -i "$KEYWORDS_UNITEDNATIONS" "$NEWPAGES")

  categorize "UNITED" "United Nations"

  debug_end "United Nations"

fi