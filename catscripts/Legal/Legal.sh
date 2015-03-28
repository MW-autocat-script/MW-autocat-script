#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b"
KEYWORDS_CHILDSUPPORT="Child(| )support"
KEYWORDS_LAWYERS="attorney|lawyer"
KEYWORDS_DIVORCE="Divorce|alimony"
KEYWORDS_CRIME="\bCrime(|s)\b|criminal|\bincest"
KEYWORDS_JACKTHERIPPER="Jack(| )the(| )Ripper"
KEYWORDS_COPYRIGHT="copyright|copyleft|fair use|(movie|software)(| )piracy|intellectual(| )property"
. ./catscripts/Government/Countries/United_States/US_constitution/USConstitution.sh norun #KEYWORDS_USCONSTITUTION_ALL
KEYWORDS_LEGAL_EXCLUDE="$KEYWORDS_DIVORCE|$KEYWORDS_CRIME|$KEYWORDS_LAWYERS|$KEYWORDS_COPYRIGHT|$KEYWORDS_USCONSTITUTION_ALL|$KEYWORDS_JACKTHERIPPER|$KEYWORDS_CHILDSUPPORT"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Legal"

  LEGAL=$(egrep -i "$KEYWORDS_LEGAL" "$NEWPAGES" | egrep -iv "$KEYWORDS_LEGAL_EXCLUDE")
  CHILDSUPPORT=$(egrep -i "$KEYWORDS_CHILDSUPPORT" "$NEWPAGES")
  CRIME=$(egrep -i "$KEYWORDS_CRIME" "$NEWPAGES")
  DIVORCE=$(egrep -i "$KEYWORDS_DIVORCE" "$NEWPAGES")
  LAWYERS=$(egrep -i "$KEYWORDS_LAWYERS" "$NEWPAGES")
  COPYRIGHT=$(egrep -i "$KEYWORDS_COPYRIGHT" "$NEWPAGES")
  JACKTHERIPPER=$(egrep -i "$KEYWORDS_JACKTHERIPPER" "$NEWPAGES")

  categorize "LEGAL" "Legal"
  categorize "CHILDSUPPORT" "Child support"
  categorize "CRIME" "Crime"
  categorize "DIVORCE" "Divorce"
  categorize "LAWYERS" "Lawyers"
  categorize "COPYRIGHT" "Copyright law"
  categorize "JACKTHERIPPER" "Jack the Ripper"

  debug_end "Legal"

fi
