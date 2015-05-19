#!/bin/bash

KEYWORDS_ARGENTINA="Ar(|e)gentina"
KEYWORDS_BUENOSAIRES="Buenos(| )A(ir|ri)es"
KEYWORDS_ARGENTINA_EXCLUDE="$KEYWORDS_BUENOSAIRES"
KEYWORDS_ARGENTINA_ALL="$KEYWORDS_ARGENTINA|$KEYWORDS_BUENOSAIRES"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Argentina"

  ARGENTINA=$(egrep -i "$KEYWORDS_ARGENTINA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ARGENTINA_EXCLUDE")
  BUENOSAIRES=$(egrep -i "$KEYWORDS_BUENOSAIRES" "$NEWPAGES")

  categorize "ARGENTINA" "Argentina"
  categorize "BUENOSAIRES" "Buenos Aires"

  debug_end "Argentina"

fi