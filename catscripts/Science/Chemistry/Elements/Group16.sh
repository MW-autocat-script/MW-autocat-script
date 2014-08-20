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

  if [ "$OXYGEN" != "" ];
  then
    printf "%s" "$OXYGEN" > Oxygen.txt
    export CATFILE="Oxygen.txt"
    export CATNAME="Oxygen"
    $CATEGORIZE
    rm Oxygen.txt
    unset OXYGEN
  fi

  if [ "$SULFUR" != "" ];
  then
    printf "%s" "$SULFUR" > Sulfur.txt
    export CATFILE="Sulfur.txt"
    export CATNAME="Sulfur"
    $CATEGORIZE
    rm Sulfur.txt
    unset SULFUR
  fi

  if [ "$SELENIUM" != "" ];
  then
    printf "%s" "$SELENIUM" > Selenium.txt
    export CATFILE="Selenium.txt"
    export CATNAME="Selenium"
    $CATEGORIZE
    rm Selenium.txt
    unset SELENIUM
  fi

  if [ "$TELLURIUM" != "" ];
  then
    printf "%s" "$TELLURIUM" > Tellurium.txt
    export CATFILE="Tellurium.txt"
    export CATNAME="Tellurium"
    $CATEGORIZE
    rm Tellurium.txt
    unset TELLURIUM
  fi

  if [ "$POLONIUM" != "" ];
  then
    printf "%s" "$POLONIUM" > Polonium.txt
    export CATFILE="Polonium.txt"
    export CATNAME="Polonium"
    $CATEGORIZE
    rm Polonium.txt
    unset POLONIUM
  fi

  if [ "$LIVERMORIUM" != "" ];
  then
    printf "%s" "$LIVERMORIUM" > Livermorium.txt
    export CATFILE="Livermorium.txt"
    export CATNAME="Livermorium"
    $CATEGORIZE
    rm Livermorium.txt
    unset LIVERMORIUM
  fi

  debug_end "Group 16 elements"

fi