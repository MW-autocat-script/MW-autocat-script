#!/bin/bash

KEYWORDS_MALAYSIA="Malaysia\b"
KEYWORDS_MALAYSIA_ALL="$KEYWORDS_MALAYSIA"

if [ "$1" == "" ];
then

  debug_start "Malaysia"

  MALAYSIA=$(egrep -i "$KEYWORDS_MALAYSIA" "$NEWPAGES")

  categorize "MALAYSIA" "Malaysia"

  debug_end "Malaysia"

fi