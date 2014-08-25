#!/bin/bash

KEYWORDS_ARGENTINA="Ar(|e)gentina"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Argentina"

  ARGENTINA=$(egrep -i "$KEYWORDS_ARGENTINA" "$NEWPAGES")

  categorize "ARGENTINA" "Argentina"

  debug_end "Argentina"

fi