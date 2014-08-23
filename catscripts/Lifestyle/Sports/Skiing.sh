#!/bin/bash

KEYWORDS_SKIING="\bSki(\b|ing|s)"

if [ "$1" == "" ];
then
  
  debug_start "Skiing"

  SKIING=$(egrep -i "$KEYWORDS_SKIING" "$NEWPAGES")

  categorize "SKIING" "Skiing"

  debug_end "Skiing"

fi