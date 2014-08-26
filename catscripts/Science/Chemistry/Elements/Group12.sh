#!/bin/bash 

KEYWORDS_MERCURY="Mercury"
KEYWORDS_MERCURY_SECONDARY="atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct"
KEYWORDS_MERCURY_EXCLUDE="planet Mercury"
KEYWORDS_ZINC="Zinc"
KEYWORDS_CADMIUM="Cadmium"
KEYWORDS_COPERNICIUM="Copernicium"

if [ "$1" == "" ];
then

  debug_start "Group 12 elements"

  MERCURY=$(egrep -i "$KEYWORDS_MERCURY" "$NEWPAGES" | egrep -i "$KEYWORDS_MERCURY_SECONDARY" | egrep -iv "$KEYWORDS_MERCURY_EXCLUDE")
  ZINC=$(egrep -i "$KEYWORDS_ZINC" "$NEWPAGES")
  CADMIUM=$(egrep -i "$KEYWORDS_CADMIUM" "$NEWPAGES")
  COPERNICIUM=$(egrep -i "$KEYWORDS_COPERNICIUM" "$NEWPAGES")

  categorize "MERCURY" "Mercury (element)"
  categorize "ZINC" "Zinc"
  categorize "CADMIUM" "Cadmium"
  categorize "COPERNICIUM" "Copernicium"

  debug_end "Group 12 elements"

fi