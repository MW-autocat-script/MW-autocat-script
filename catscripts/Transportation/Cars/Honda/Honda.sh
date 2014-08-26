#!/bin/bash

KEYWORDS_HONDAACCORD="Honda(| )Accord|[0-9]{2,}(| )Accord"
KEYWORDS_HONDACIVIC="Honda(| )Civic|[0-9]{2,}(| )Civic"
KEYWORDS_HONDAPASSPORT="Honda(| )Passport|[0-9]{2,}(| )Passport"
KEYWORDS_HONDAELEMENT="Honda(| )Element|[0-9]{2,}(| )Element\b"

if [ "$1" == "" ];
then

  debug_start "Honda cars"

  ACCORD=$(egrep -i "$KEYWORDS_HONDAACCORD" "$NEWPAGES")
  CIVIC=$(egrep -i "$KEYWORDS_HONDACIVIC" "$NEWPAGES")
  PASSPORT=$(egrep -i "$KEYWORDS_HONDAPASSPORT" "$NEWPAGES")
  ELEMENT=$(egrep -i "$KEYWORDS_HONDAELEMENT" "$NEWPAGES")

  categorize "ACCORD" "Honda Accord"
  categorize "CIVIC" "Honda Civic"
  categorize "PASSPORT" "Honda Passport"
  categorize "ELEMENT" "Honda Element"

  debug_end "Honda cars"

fi