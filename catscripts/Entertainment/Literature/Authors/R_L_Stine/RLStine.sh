#!/bin/bash

KEYWORDS_RLSTINE="R(|\.)(| )L(|\.)(| )Stine|Robert(| )(|Lawrence)(| )Stine"

if [ "$1" == "" ];
then
  
  debug_start "R. L. Stine"

  STINE=$(egrep -i "$KEYWORDS_RLSTINE" "$NEWPAGES")

  categorize "STINE" "R. L. Stine"

  debug_end "R. L. Stine"

fi