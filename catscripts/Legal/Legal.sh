#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b"
KEYWORDS_LAWYERS="attorney|lawyer"
KEYWORDS_DIVORCE="Divorce|alimony"
KEYWORDS_CRIME="\bCrime(|s)\b|criminal"
KEYWORDS_COPYRIGHT="copyright|copyleft|fair use|(movie|software)(| )piracy|intellectual(| )property"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Legal"

  LEGAL=$(egrep -i "$KEYWORDS_LEGAL" "$NEWPAGES" | egrep -iv "$KEYWORDS_DIVORCE|$KEYWORDS_CRIME|$KEYWORDS_LAWYERS|$KEYWORDS_COPYRIGHT")
  CRIME=$(egrep -i "$KEYWORDS_CRIME" "$NEWPAGES")
  DIVORCE=$(egrep -i "$KEYWORDS_DIVORCE" "$NEWPAGES")
  LAWYERS=$(egrep -i "$KEYWORDS_LAWYERS" "$NEWPAGES")
  COPYRIGHT=$(egrep -i "$KEYWORDS_COPYRIGHT" "$NEWPAGES")

  categorize "LEGAL" "Legal"
  categorize "CRIME" "Crime"
  categorize "DIVORCE" "Divorce"
  categorize "LAWYERS" "Lawyers"
  categorize "COPYRIGHT" "Copyright law"

  debug_end "Legal"

fi
