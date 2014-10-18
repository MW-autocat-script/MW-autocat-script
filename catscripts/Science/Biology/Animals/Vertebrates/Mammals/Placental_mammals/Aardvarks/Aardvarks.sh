#!/bin/bash

KEYWORDS_AARDVARKS="Aardvark"
KEYWORDS_AARDVARKS_EXCLUDE="Arthur(| )Reed|Arthur(| )the(| )Aardvark"
KEYWORDS_AARDVARKS_ALL="$KEYWORDS_AARDVARKS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Aardvarks"

  AARDVARKS=$(egrep -i "$KEYWORDS_AARDVARKS" "$NEWPAGES")

  categorize "AARDVARKS" "Aardvarks"

  debug_end "Aardvarks"

fi