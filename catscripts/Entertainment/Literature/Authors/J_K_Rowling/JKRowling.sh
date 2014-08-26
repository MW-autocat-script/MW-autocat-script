#!/bin/bash

KEYWORDS_JKROWLING="J(|\.)(| )K(|\.)(| )Rowling|Jo(|anne)(| )Rowling"
. ./catscripts/Entertainment/Movies/Harry_Potter/HarryPotter.sh norun #KEYWORDS_HARRYPOTTER
KEYWORDS_JKROWLING_EXCLUDE="$KEYWORDS_HARRYPOTTER"

if [ "$1" == "" ];
then
  
  debug_start "J. K. Rowling"

  ROWLING=$(egrep -i "$KEYWORDS_JKROWLING" "$NEWPAGES" | egrep -iv "$KEYWORDS_JKROWLING_EXCLUDE")

  categorize "ROWLING" "J. K. Rowling"

  debug_end "J. K. Rowling"

fi
