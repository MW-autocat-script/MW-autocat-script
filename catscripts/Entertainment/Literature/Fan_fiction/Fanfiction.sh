#!/bin/bash

KEYWORDS_FANFICTION="Fan(| )fiction"

if [ "$1" == "" ];
then
  
  debug_start "Fan fiction"

  FANFIC=$(egrep -i "$KEYWORDS_FANFICTION" "$NEWPAGES")

  categorize "FANFIC" "Fan fiction"

  debug_end "Fan fiction"

fi