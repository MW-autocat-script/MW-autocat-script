#!/bin/bash 

KEYWORDS_SCANDIUM="Scandium"
KEYWORDS_YTTRIUM="Yttrium"
KEYWORDS_GROUP3_ELEMENTS="$KEYWORDS_SCANDIUM|$KEYWORDS_YTTRIUM"

if [ "$1" == "" ];
then
  
  debug_start "Group 3 elements"

  SCANDIUM=$(egrep -i "$KEYWORDS_SCANDIUM" "$NEWPAGES")
  YTTRIUM=$(egrep -i "$KEYWORDS_YTTRIUM" "$NEWPAGES")

  categorize "SCANDIUM" "Scandium"
  categorize "YTTRIUM" "Yttrium"

  debug_end "Group 3 elements"

fi