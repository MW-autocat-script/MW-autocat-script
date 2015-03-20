#!/bin/bash

KEYWORDS_ISLAM="Islam|Muslim|\bSunni(|s)\b|Shiite|hajj|Prophet (Muhammed|Muhammad)|halal|koran|qu(|')ran|Hara(|a)m|Ḥarām"
KEYWORDS_RAMADAN="Ramadan"
KEYWORDS_ISLAM_EXCLUDE="$KEYWORDS_RAMADAN|Mecca|Medina"
KEYWORDS_ISLAM_ALL="$KEYWORDS_ISLAM|$KEYWORDS_RAMADAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Islam"

  ISLAM=$(egrep -i "$KEYWORDS_ISLAM" "$NEWPAGES" | egrep -iv "$KEYWORDS_ISLAM_EXCLUDE")
  RAMADAN=$(egrep -i "$KEYWORDS_RAMADAN" "$NEWPAGES")

  categorize "ISLAM" "Islam"
  categorize "RAMADAN" "Ramadan"

  debug_end "Islam"

fi

