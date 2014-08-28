#!/bin/bash

KEYWORDS_HELLOKITTY="Hello(| )Kitty"
KEYWORDS_HELLOKITTY_ALL="$KEYWORDS_HELLOKITTY"

if [ "$1" == "" ];
then
  
  debug_start "Hello Kitty"

  HELLOKITTY=$(egrep -i "$KEYWORDS_HELLOKITTY" "$NEWPAGES")

  categorize "HELLOKITTY" "Hello Kitty"

  debug_end "Hello Kitty"

fi