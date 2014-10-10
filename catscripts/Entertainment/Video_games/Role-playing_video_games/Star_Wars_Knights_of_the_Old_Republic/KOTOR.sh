#!/bin/bash

KEYWORDS_KOTOR="Knights(| )of(| )the(| )Old(| )Republic|KOTOR"
KEYWORDS_KOTOR_EXCLUDE="The(| )Old(| )Republic(| )(2|II)|KOTOR(| )(2|II)"

if [ "$1" == "" ];
then

  debug_start "Star Wars: Knights of the Old Republic"

  KOTOR=$(egrep -i "$KEYWORDS_KOTOR" "$NEWPAGES" | egrep -iv "$KEYWORDS_KOTOR_EXCLUDE")

  categorize "KOTOR" "Star Wars: Knights of the Old Republic"

  debug_end "Star Wars: Knights of the Old Republic"

fi