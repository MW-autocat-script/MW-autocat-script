#!/bin/bash

KEYWORDS_KOTOR2="Knights(| )of(| )the(| )Old(| )Republic(| )(II|2)|KOTOR(| )(2|II)"

if [ "$1" == "" ];
then

  debug_start "Star Wars: Knights of the Old Republic II – The Sith Lords"

  KOTOR2=$(egrep -i "$KEYWORDS_KOTOR2" "$NEWPAGES")

  categorize "KOTOR2" "Star Wars: Knights of the Old Republic II – The Sith Lords"

  debug_end "Star Wars: Knights of the Old Republic II – The Sith Lords"

fi