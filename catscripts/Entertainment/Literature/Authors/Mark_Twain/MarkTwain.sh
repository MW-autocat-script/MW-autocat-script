#!/bin/bash

KEYWORDS_MARKTWAIN="Mark(| )Twain|\bTwain(|s)\b|Sam(|uel)(| )(Langhorne|)(| )Clemens"

if [ "$1" == "" ];
then
  
  debug_start "Mark Twain"

  TWAIN=$(egrep -i "$KEYWORDS_MARKTWAIN" "$NEWPAGES")

  categorize "TWAIN" "Mark Twain"

  debug_end "Mark Twain"

fi