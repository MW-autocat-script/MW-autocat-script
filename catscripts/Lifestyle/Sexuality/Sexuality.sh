#!/bin/bash

KEYWORDS_SEXUALITY="sexuality|sexual orientation|\bgay(|s)\b|lesbian|bi(|-)sexual|trans(-|)gender|pansexual|\bBDSM\b|fellatio|cunnilingus|anal(| )sex|vaginal(| )sex|omnisexual|sado-masochis(m|t)"
KEYWORDS_MASTURBATION="Masturbat(e|ion)"
KEYWORDS_SEXUALITY_EXCLUDE="$KEYWORDS_MASTURBATION|Gay(| )Tony|\bgaynor\b"

if [ "$1" == "" ];
then

  debug_start "Sexuality"

  SEXUALITY=$(egrep -i "$KEYWORDS_SEXUALITY" "$NEWPAGES" | egrep -iv "$KEYWORDS_SEXUALITY_EXCLUDE")
  MASTURBATION=$(egrep -i "$KEYWORDS_MASTURBATION" "$NEWPAGES")

  categorize "SEXUALITY" "Sexuality"
  categorize "MASTURBATION" "Masturbation"

  debug_end "Masturbation"

fi