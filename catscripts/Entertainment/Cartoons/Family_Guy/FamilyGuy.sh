#!/bin/bash

KEYWORDS_FAMILYGUY="Family(| )Guy|(Peter|Lois|Meg|Chris|Stewie|Brian)(| )Griffin"

if [ "$1" == "" ];
then
  
  debug_start "Family Guy"

  FAMILYGUY=$(egrep -i "$KEYWORDS_FAMILYGUY" "$NEWPAGES")

  categorize "FAMIlYGUY" "Family Guy"

  debug_end "Family Guy"

fi