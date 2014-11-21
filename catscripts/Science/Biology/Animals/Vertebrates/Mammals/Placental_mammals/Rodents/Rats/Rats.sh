#!/bin/bash

KEYWORDS_RATS="\brat(|s)\b"
KEYWORDS_RATS_EXCLUDE="lab rats(|:)(| )virtual(| )(|battle)(| )trainer|Poptropica|Alxemy|Rune(| )Scape|Adventure(| )Quest|Final(| )Fantasy|rat(-| )tail(| )fish|[0-9]-letter|rat snake|Ian Hawk|rat(-| )tailed(| )maggot|(mole|womp|desert|kangaroo) rat|NIMH"
KEYWORDS_RATS_ALL="$KEYWORDS_RATS"

if [ "$1" == "" ];
then

  debug_start "Rats"

  RATS=$(egrep -i "$KEYWORDS_RATS" "$NEWPAGES" | egrep -iv "$KEYWORDS_RATS_EXCLUDE")

  categorize "RATS" "Rats"

  debug_end "Rats"

fi