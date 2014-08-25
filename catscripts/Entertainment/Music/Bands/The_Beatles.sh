#!/bin/bash

KEYWORDS_THEBEATLES="The(| )Beatles"
KEYWORDS_THEBEATLES_EXCLUDE="Paul(| )McCartney|John(| )Lennon"

if [ "$1" == "" ];
then

  debug_start "The Beatles"

  BEATLES=$(egrep -i "$KEYWORDS_THEBEATLES" "$NEWPAGES" | egrep -iv "$KEYWORDS_THEBEATLES_EXCLUDE")

  categorize "BEATLES" "The Beatles"

  debug_end "The Beatles"

fi