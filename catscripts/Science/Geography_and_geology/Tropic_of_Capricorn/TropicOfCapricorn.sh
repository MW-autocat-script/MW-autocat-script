#!/bin/bash

KEYWORDS_TROPICOFCAPRICORN="Tropic(| )of(| )Capricorn"
KEYWORDS_TROPICOFCAPRICORN_ALL="$KEYWORDS_TROPICOFCAPRICORN"

if [ "$1" == "" ];
then
  
  debug_start "Tropic of Capricorn"

  TROPICOFCAPRICORN=$(egrep -i "$KEYWORDS_TROPICOFCAPRICORN" "$NEWPAGES")

  categorize "TROPICOFCAPRICORN" "Tropic of Capricorn"

  debug_end "Tropic of Capricorn"

fi