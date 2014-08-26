#!/bin/bash 

KEYWORDS_VANADIUM="Vanadium"
KEYWORDS_NIOBIUM="Niobium"
KEYWORDS_TANTALUM="Tantalum"
KEYWORDS_DUBNIUM="Dubnium"

if [ "$1" == "" ];
then

  debug_start "Group 5 elements"

  VANADIUM=$(egrep -i "$KEYWORDS_VANADIUM" "$NEWPAGES")
  NIOBIUM=$(egrep -i "$KEYWORDS_NIOBIUM" "$NEWPAGES")
  TANTALUM=$(egrep -i "$KEYWORDS_TANTALUM" "$NEWPAGES")
  DUBNIUM=$(egrep -i "$KEYWORDS_DUBNIUM" "$NEWPAGES")

  categorize "VANADIUM" "Vanadium"
  categorize "NIOBIUM" "Niobium"
  categorize "TANTALUM" "Tantalum"
  categorize "DUBNIUM" "Dubnium"

  debug_end "Group 5 elements"

fi