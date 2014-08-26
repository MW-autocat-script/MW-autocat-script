#!/bin/bash

KEYWORDS_VAMPIREKNIGHT="Vampire(| )Knight"

if [ "$1" == "" ];
then

  debug_start "Vampire Knight"

  VAMPIREKNIGHT=$(egrep -i "$KEYWORDS_VAMPIREKNIGHT" "$NEWPAGES")

  categorize "VAMPIREKNIGHT" "Vampire Knight"

  debug_end "Vampire Knight"

fi