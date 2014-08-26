#!/bin/bash 

KEYWORDS_COBALT="Cobalt"
KEYWORDS_COBALT_EXCLUDE="Chev(y|rolet)"
KEYWORDS_RHODIUM="Rhodium"
KEYWORDS_IRIDIUM="Iridium"
KEYWORDS_MEITNERIUM="Meitnerium"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Group 9 elements"

  COBALT=$(egrep -i "$KEYWORDS_COBALT" "$NEWPAGES" | egrep -iv "$KEYWORDS_COBALT_EXCLUDE")
  RHODIUM=$(egrep -i "$KEYWORDS_RHODIUM" "$NEWPAGES")
  IRIDIUM=$(egrep -i "$KEYWORDS_IRIDIUM" "$NEWPAGES")
  MEITNERIUM=$(egrep -i "$KEYWORDS_MEITNERIUM" "$NEWPAGES")

  categorize "COBALT" "Cobalt"
  categorize "RHODIUM" "Rhodium"
  categorize "IRIDIUM" "Iridium"
  categorize "MEITNERIUM" "Meitnerium"

  debug_end "Group 9 elements"

fi