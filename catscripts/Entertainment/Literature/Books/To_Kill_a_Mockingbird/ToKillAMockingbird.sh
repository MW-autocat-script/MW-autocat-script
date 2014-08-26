#!/bin/bash

KEYWORDS_TOKILLAMOCKINGBIRD="To(| )Kill(| )A(| )Mocking(| )bird|Atticus.+(Jem|Scout)|Jem\b.+(Scout|Atticus)|Scout.+(Atticus|Jem)"

if [ "$1" == "" ];
then

  debug_start "To Kill a Mockingbird"

  MOCKINGBIRD=$(egrep -i "$KEYWORDS_TOKILLAMOCKINGBIRD" "$NEWPAGES")

  categorize "MOCKINGBIRD" "To Kill a Mockingbird"

  debug_end "To Kill a Mockingbird"

fi