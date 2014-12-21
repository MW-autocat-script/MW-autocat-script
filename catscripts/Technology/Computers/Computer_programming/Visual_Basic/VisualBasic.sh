#!/bin/bash

KEYWORDS_VISUALBASIC="Visual(| )Basic"
KEYWORDS_VISUALBASIC_ALL="$KEYWORDS_VISUALBASIC"

if [ "$1" == "" ];
then
  
  debug_start "Visual Basic"

  VISUALBASIC=$(egrep -i "$KEYWORDS_VISUALBASIC" "$NEWPAGES")

  categorize "VISUALBASIC" "Visual Basic"

  debug_end "Visual Basic"

fi