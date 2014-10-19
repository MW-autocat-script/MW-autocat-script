#!/bin/bash

KEYWORDS_SHREWS="\bShrew(|s)\b"
KEYWORDS_SHREWS_EXCLUDE="Taming(| )of(| )the(| )Shrew" #Taming of the Shrew is a play by William Shakespeare
KEYWORDS_SHREWS_ALL="$KEYWORDS_SHREWS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Shrews"

  SHREWS=$(egrep -i "$KEYWORDS_SHREWS" "$NEWPAGES")

  categorize "SHREWS" "Shrews"

  debug_end "Shrews"

fi