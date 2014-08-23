#!/bin/bash 

KEYWORDS_OXYGEN="\bOxygen"
KEYWORDS_OXYGEN_EXCLUDE="Oxygen \b.+(ate|ide|ite)|channel|network|oxygen sensor|oxygen tank"
KEYWORDS_SULFUR="Sulfur|sulphur"
KEYWORDS_SULFUR_EXCLUDE="Sulfur \b.+(ate|ide|ite)"
KEYWORDS_SELENIUM="Selenium"
KEYWORDS_SELENIUM_EXCLUDE="Selenium \b.+(ate|ide|ite)"
KEYWORDS_TELLURIUM="Tellurium"
KEYWORDS_TELLURIUM_EXCLUDE="Tellurium \b.+(ate|ide|ite)"
KEYWORDS_POLONIUM="Polonium"
KEYWORDS_POLONIUM_EXCLUDE="Polonium \b.+(ate|ide|ite)"
KEYWORDS_LIVERMORIUM="Livermorium"
KEYWORDS_LIVERMORIUM_EXCLUDE="Livermorium \b.+(ate|ide|ite)"

if [ "$1" == "" ];
then

  debug_start "Group 16 elements"

  OXYGEN=$(egrep -i "$KEYWORDS_OXYGEN" "$NEWPAGES" | egrep -iv "$KEYWORDS_OXYGEN_EXCLUDE")
  SULFUR=$(egrep -i "$KEYWORDS_SULFUR" "$NEWPAGES" | egrep -iv "$KEYWORDS_SULFUR_EXCLUDE")
  SELENIUM=$(egrep -i "$KEYWORDS_SELENIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_SELENIUM_EXCLUDE")
  TELLURIUM=$(egrep -i "$KEYWORDS_TELLURIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_TELLURIUM_EXCLUDE")
  POLONIUM=$(egrep -i "$KEYWORDS_POLONIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_POLONIUM_EXCLUDE")
  LIVERMORIUM=$(egrep -i "$KEYWORDS_LIVERMORIUM" "$NEWPAGES" | egrep -i "$KEYWORDS_LIVERMORIUM_EXCLUDE")

  categorize "OXYGEN" "Oxygen"
  categorize "SULFUR" "Sulfur"
  categorize "SELENIUM" "Selenium"
  categorize "TELLURIUM" "Tellurium"
  categorize "POLONIUM" "Polonium"
  categorize "LIVERMORIUM" "Livermorium"

  debug_end "Group 16 elements"

fi