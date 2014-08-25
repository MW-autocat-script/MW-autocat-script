#!/bin/bash

KEYWORDS_ANTONYMS="antonym|(What is|What(|')s) the opposite of [a-z]{1,}"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Antonyms"

  ANTONYMS=$(egrep -i "$KEYWORDS_ANTONYMS" "$NEWPAGES")

  categorize "ANTONYMS" "Antonyms"

  debug_end "Antonyms"

fi