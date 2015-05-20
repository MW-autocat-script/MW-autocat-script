#!/bin/bash

#Basketball
KEYWORDS_BASKETBALL="Basket(| )ball"
KEYWORDS_NBA="\bNBA\b"
KEYWORDS_MICHAELJORDAN="Michael(| )Jordan"
KEYWORDS_SHAQUILLEONEAL="Shaquille(| )O(|')Neal|\bShaq\b"
KEYWORDS_KOBEBRYANT="Kobe(| )Bryant"
KEYWORDS_CHICAGOBULLS="Chicago(| )Bulls"
KEYWORDS_MIAMIHEAT="Miami(| )Heat"
KEYWORDS_NBA_EXCLUDE="$KEYWORDS_MICHAELJORDAN|$KEYWORDS_SHAQUILLEONEAL|$KEYWORDS_KOBEBRYANT|$KEYWORDS_CHICAGOBULLS|$KEYWORDS_MIAMIHEAT"
KEYWORDS_BASKETBALL_EXCLUDE="$KEYWORDS_NBA_EXCLUDE|$KEYWORDS_NBA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Basketball"

  BASKETBALL=$(egrep -i "$KEYWORDS_BASKETBALL" "$NEWPAGES" | egrep -iv "$KEYWORDS_BASKETBALL_EXCLUDE")
  NBA=$(egrep -i "$KEYWORDS_NBA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NBA_EXCLUDE")
  CHICAGOBULLS=$(egrep -i "$KEYWORDS_CHICAGOBULLS" "$NEWPAGES")
  MIAMIHEAT=$(egrep -i "$KEYWORDS_MIAMIHEAT" "$NEWPAGES")
  MICHAELJORDAN=$(egrep -i "$KEYWORDS_MICHAELJORDAN" "$NEWPAGES")
  SHAQUILLEONEAL=$(egrep -i "$KEYWORDS_SHAQUILLEONEAL" "$NEWPAGES")
  KOBEBRYANT=$(egrep -i "$KEYWORDS_KOBEBRYANT" "$NEWPAGES")

  categorize "BASKETBALL" "Basketball"  
  categorize "NBA" "NBA"
  categorize "CHICAGOBULLS" "Chicago Bulls"
  categorize "MIAMIHEAT" "Miami Heat"
  categorize "MICHAELJORDAN" "Michael Jordan"
  categorize "SHAQUILLEONEAL" "Shaquille O'Neal"
  categorize "KOBEBRYANT" "Kobe Bryant"

  debug_end "Basketball"

fi