#!/bin/bash

KEYWORDS_INDIA="India\b"
KEYWORDS_NEWDELHI="Delhi"
KEYWORDS_MUMBAI="Mumbai|Bombay"
KEYWORDS_KOLKATA="Kolkata|Calcutta"
KEYWORDS_CHENNAI="Chennai|Madras"
KEYWORDS_BANGALORE="Bangalore|Bengaluru"
KEYWORDS_PUNE="\bPune"
KEYWORDS_HYDERABAD="Hyderabad"
KEYWORDS_INDIA_EXCLUDE="$KEYWORDS_NEWDELHI|$KEYWORDS_MUMBAI|$KEYWORDS_KOLKATA|$KEYWORDS_CHENNAI|$KEYWORDS_BANGALORE|$KEYWORDS_PUNE|$KEYWORDS_HYDERABAD"

if [ "$1" == "" ];
then

  debug_start "India"

  INDIA=$(egrep -i "$KEYWORDS_INDIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_INDIA_EXCLUDE")
  NEWDELHI=$(egrep -i "$KEYWORDS_NEWDELHI" "$NEWPAGES")
  MUMBAI=$(egrep -i "$KEYWORDS_MUMBAI" "$NEWPAGES")
  KOLKATA=$(egrep -i "$KEYWORDS_KOLKATA" "$NEWPAGES")
  HYDERABAD=$(egrep -i "$KEYWORDS_HYDERABAD" "$NEWPAGES")
  CHENNAI=$(egrep -i "$KEYWORDS_CHENNAI" "$NEWPAGES")
  BANGALORE=$(egrep -i "$KEYWORDS_BANGALORE" "$NEWPAGES")
  PUNE=$(egrep -i "$KEYWORDS_PUNE" "$NEWPAGES")

  categorize "INDIA" "India"
  categorize "NEWDELHI" "New Delhi"
  categorize "MUMBAI" "Mumbai"
  categorize "KOLKATA" "Kolkata"
  categorize "HYDERABAD" "Hyderabad"
  categorize "CHENNAI" "Chennai"
  categorize "BANGALORE" "Bangalore"
  categorize "PUNE" "Pune"
  debug_end "India"

fi