#!/bin/bash

KEYWORDS_SRILANKA="Sri(| )Lanka|Ceylon"

if [ "$1" == "" ];
then
  
  debug_start "Sri Lanka"

  SRILANKA=$(egrep -i "$KEYWORDS_SRILANKA" "$NEWPAGES")

  categorize "SRILANKA" "Sri Lanka"

  debug_end "Sri Lanka"

fi