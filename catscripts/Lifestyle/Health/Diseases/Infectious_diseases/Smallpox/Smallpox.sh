#!/bin/bash

KEYWORDS_SMALLPOX="Small(| )pox"

if [ "$1" == "" ];
then

  debug_start "Smallpox"

  SMALLPOX=$(egrep -i "$KEYWORDS_SMALLPOX" "$NEWPAGES")

  categorize "SMALLPOX" "Smallpox"

  debug_end "Smallpox"

fi
