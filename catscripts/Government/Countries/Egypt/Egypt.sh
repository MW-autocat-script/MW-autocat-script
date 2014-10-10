#!/bin/bash

KEYWORDS_EGYPT="Egypt(|s|ian)"
KEYWORDS_ANCIENTEGYPYT="ancient(| )Egypt|Tutankhamen|Tutencarmoon|tootencarmoon"
KEYWORDS_NILERIVER="Nile(| )River|River(| )Nile|Nile(| )delta|Aswan(| )dam"
KEYWORDS_EGYPT_EXCLUDE="$KEYWORDS_NILERIVER|$KEYWORDS_ANCIENTEGYPYT"
KEYWORDS_EGYPT_ALL="$KEYWORDS_EGYPT|$KEYWORDS_NILERIVER|$KEYWORDS_ANCIENTEGYPYT"

if [ "$1" == "" ];
then

  debug_start "Egypt"

  EGYPT=$(egrep -i "$KEYWORDS_EGYPT" "$NEWPAGES" | egrep -iv "$KEYWORDS_EGYPT_EXCLUDE")
  ANCIENT=$(egrep -i "$KEYWORDS_ANCIENTEGYPYT" "$NEWPAGES")
  NILE=$(egrep -i "$KEYWORDS_NILERIVER" "$NEWPAGES")

  categorize "EGYPT" "Egypt"
  categorize "ANCIENT" "Ancient Egypt"
  categorize "NILE" "Nile River"

  debug_end "Egypt"

fi