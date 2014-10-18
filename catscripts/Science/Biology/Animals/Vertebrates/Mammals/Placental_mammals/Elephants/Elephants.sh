#!/bin/bash

KEYWORDS_ELEPHANTS="Elephant|Proboscidea|mastodon"
KEYWORDS_AFRICANELEPHANTS="African.+elephant|elephant.+African"
KEYWORDS_ASIANELEPHANTS="(Asian|Indian).+elephant|elephant.+(Asian|Indian)"
KEYWORDS_MAMMOTHS="Mammoth"
KEYWORDS_ELEPHANTS_EXCLUDE="Elephant(| )seal|$KEYWORDS_AFRICANELEPHANTS|$KEYWORDS_ASIANELEPHANTS|$KEYWORDS_MAMMOTHS"
KEYWORDS_ELEPHANTS_ALL="$KEYWORDS_ELEPHANTS|$KEYWORDS_AFRICANELEPHANTS|$KEYWORDS_ASIANELEPHANTS|$KEYWORDS_MAMMOTHS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Elephants"

  ELEPHANTS=$(egrep -i "$KEYWORDS_ELEPHANTS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ELEPHANTS_EXCLUDE")
  AFRICAN=$(egrep -i "$KEYWORDS_AFRICANELEPHANTS" "$NEWPAGES")
  ASIAN=$(egrep -i "$KEYWORDS_ASIANELEPHANTS" "$NEWPAGES")
  MAMMOTHS=$(egrep -i "$KEYWORDS_MAMMOTHS" "$NEWPAGES")

  categorize "ELEPHANTS" "Elephants"
  categorize "AFRICAN" "African elephants"
  categorize "ASIAN" "Asian elephants"
  categorize "MAMMOTHS" "Mammoths"

  debug_end "Elephants"

fi