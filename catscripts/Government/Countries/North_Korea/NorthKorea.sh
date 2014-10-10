#!/bin/bash

KEYWORDS_NORTHKOREA="North(| )Korea|Pyongyang|Kim Jong(-| )Il|Kim Il(-| )Song|Kim Jong(-| )un"
KEYWORDS_NORTHKOREA_ALL="$KEYWORDS_NORTHKOREA"

if [ "$1" == "" ];
then

  debug_start "North Korea"

  NKOREA=$(egrep -i "$KEYWORDS_NORTHKOREA" "$NEWPAGES")

  categorize "NKOREA" "North Korea"

  debug_end "North Korea"

fi
