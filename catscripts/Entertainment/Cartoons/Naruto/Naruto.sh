#!/bin/bash

KEYWORDS_NARUTO="Naruto|Hokage|Mangeky(o|ō)(| )Sharingan"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Naruto"
  
  NARUTO=$(egrep -i "$KEYWORDS_NARUTO" "$NEWPAGES")

  categorize "NARUTO" "Naruto"

  debug_end "Naruto"

fi