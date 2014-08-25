#!/bin/bash

KEYWORDS_STEPHENIEMEYER="Steph(e|a)nie(| )Meyer"

if [ "$1" == "" ];
then
  
  debug_start "Stephenie Meyer"

  MEYER=$(egrep -i "$KEYWORDS_STEPHENIEMEYER" "$NEWPAGES")

  categorize "MEYER" "Stephenie Meyer"

  debug_end "Stephenie Meyer"

fi