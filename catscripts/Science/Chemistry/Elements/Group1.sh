#!/bin/bash
#IUPAC Group 1 elements. Hydrogen is also included here for convenience.

KEYWORDS_HYDROGEN="Hydrogen"
KEYWORDS_LITHIUM="Lithium"
KEYWORDS_SODIUM="Sodium"
KEYWORDS_POTASSIUM="Potassium"
KEYWORDS_RUBIDIUM="Rubidium"
KEYWORDS_CAESIUM="C(|a)esium"
KEYWORDS_FRANCIUM="Francium"
KEYWORDS_UNUNENNIUM="Ununennium"

if [ "$1" == "" ];
then

  debug_start "Group 1 elements"

  HYDROGEN=$(egrep -i "$KEYWORDS_HYDROGEN" "$NEWPAGES")
  LITHIUM=$(egrep -i "$KEYWORDS_LITHIUM" "$NEWPAGES")
  SODIUM=$(egrep -i "$KEYWORDS_SODIUM" "$NEWPAGES")
  POTASSIUM=$(egrep -i "$KEYWORDS_POTASSIUM" "$NEWPAGES")
  RUBIDIUM=$(egrep -i "$KEYWORDS_RUBIDIUM" "$NEWPAGES")
  CAESIUM=$(egrep -i "$KEYWORDS_CAESIUM" "$NEWPAGES")
  FRANCIUM=$(egrep -i "$KEYWORDS_FRANCIUM" "$NEWPAGES")
  UUE=$(egrep -i "$KEYWORDS_UNUNENNIUM" "$NEWPAGES")

  categorize "HYDROGEN" "Hydrogen"
  categorize "LITHIUM" "Lithium"
  categorize "SODIUM" "Sodium"
  categorize "POTASSIUM" "Potassium"
  categorize "RUBIDIUM" "Rubidium"
  categorize "CAESIUM" "Caesium"
  categorize "FRANCIUM" "Francium"
  categorize "UUE" "Ununennium"

  debug_end "Group 1 elements"

fi