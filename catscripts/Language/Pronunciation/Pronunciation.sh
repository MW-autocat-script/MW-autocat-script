#!/bin/bash

KEYWORDS_PRONUNCIATION="How(| )do(| )you(| )pronounce|How(| )is(| ).+(| )pronounced|pron(|o)unciation"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pronunciation"

  PRONUNCIATION=$(egrep -i "$KEYWORDS_PRONUNCIATION" "$NEWPAGES")

  categorize "PRONUNCIATION" "Pronunciation"

  debug_end "Pronunciation"

fi