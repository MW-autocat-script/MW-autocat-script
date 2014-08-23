#!/bin/bash 

KEYWORDS_FLUORINE="\bFluorine"
KEYWORDS_FLUORINE_EXCLUDE="Fluorine \b.+(ate|ide|ite)"
KEYWORDS_CHLORINE="Chlorine"
KEYWORDS_CHLORINE_EXCLUDE="Chlorine \b.+(ate|ide|ite)"
KEYWORDS_BROMINE="\bBromine"
KEYWORDS_BROMINE_EXCLUDE="Bromine \b.+(ate|ide|ite)"
KEYWORDS_IODINE="iodine"
KEYWORDS_IODINE_EXCLUDE="Iodine \b.+(ate|ide|ite)"
KEYWORDS_ASTATINE="\bAstatine"
KEYWORDS_ASTATINE_EXCLUDE="Astatine \b.+(ate|ide|ite)"
KEYWORDS_UNUNSEPTIUM="Ununseptium"
KEYWORDS_UNUNSEPTIUM_EXCLUDE="Ununseptium \b.+(ate|ide|ite)"

if [ "$1" == "" ];
then

  debug_start "Group 17"

  FLUORINE=$(egrep -i "$KEYWORDS_FLUORINE" "$NEWPAGES" | egrep -iv "$KEYWORDS_FLUORINE_EXCLUDE")
  CHLORINE=$(egrep -i "$KEYWORDS_CHLORINE" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHLORINE_EXCLUDE")
  BROMINE=$(egrep -i "$KEYWORDS_BROMINE" "$NEWPAGES" | egrep -iv "$KEYWORDS_BROMINE_EXCLUDE")
  IODINE=$(egrep -i "$KEYWORDS_IODINE" "$NEWPAGES" | egrep -iv "$KEYWORDS_IODINE_EXCLUDE")
  ASTATINE=$(egrep -i "$KEYWORDS_ASTATINE" "$NEWPAGES" | egrep -iv "$KEYWORDS_ASTATINE_EXCLUDE")
  UNUNSEPTIUM=$(egrep -i "$KEYWORDS_UNUNSEPTIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_UNUNSEPTIUM_EXCLUDE")

  categorize "FLUORINE" "Fluorine"
  categorize "CHLORINE" "Chlorine"
  categorize "BROMINE" "Bromine"
  categorize "IODINE" "Iodine"
  categorize "ASTATINE" "Astatine"
  categorize "UNUNSEPTIUM" "Ununseptium"

  debug_end "Group 17 elements"

fi