#!/bin/bash

KEYWORDS_MACOS="Mac(| )OS|OS(| )X"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Mac OS X"

  MACOS=$(egrep -i "$KEYWORDS_MACOS" "$NEWPAGES")

  categorize "MACOS" "Mac OS X"

  debug_end "Mac OS X"

fi