#!/bin/bash

KEYWORDS_FRANCE="France"
KEYWORDS_PARIS="\bParis\b"
KEYWORDS_TAHITI="Tahiti"
KEYWORDS_EIFFELTOWER="Eiffel(| )Tower"
KEYWORDS_PARIS_EXCLUDE="Plaster(| )of(| )Paris|Tom(| )Paris|Paris(| )Hilton|Romeo|Juliet|$KEYWORDS_EIFFELTOWER" #Tom Paris is a fictional character on Star Trek: Voyager
KEYWORDS_FRENCH_REVOLUTION="French(| )Revolution|Robespierre"
KEYWORDS_FRANCE_EXCLUDE="$KEYWORDS_PARIS|$KEYWORDS_TAHITI|$KEYWORDS_FRENCH_REVOLUTION|$KEYWORDS_EIFFELTOWER"
KEYWORDS_FRANCE_ALL="$KEYWORDS_FRANCE|$KEYWORDS_PARIS|$KEYWORDS_TAHITI|$KEYWORDS_FRENCH_REVOLUTION"


if [ "$1" == "" ];
then
  
  debug_start "France"

  FRANCE=$(egrep -i "$KEYWORDS_FRANCE" "$NEWPAGES" | egrep -iv "$KEYWORDS_FRANCE_EXCLUDE")
  PARIS=$(egrep -i "$KEYWORDS_PARIS" "$NEWPAGES" | egrep -iv "$KEYWORDS_PARIS_EXCLUDE")
  EIFFELTOWER=$(egrep -i "$KEYWORDS_EIFFELTOWER" "$NEWPAGES")
  TAHITI=$(egrep -i "$KEYWORDS_TAHITI" "$NEWPAGES")
  FRENCHREVOLUTION=$(egrep -i "$KEYWORDS_FRENCH_REVOLUTION" "$NEWPAGES")

  categorize "FRANCE" "France"
  categorize "PARIS" "Paris"
  categorize "EIFFELTOWER" "Eiffel Tower"
  categorize "TAHITI" "Tahiti"
  categorize "FRENCHREVOLUTION" "French Revolution"

  debug_end "France"

fi