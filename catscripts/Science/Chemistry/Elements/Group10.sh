#!/bin/bash 

KEYWORDS_NICKEL="Nickel"
KEYWORDS_NICKEL_EXCLUDE="penny|dime|quarter|cent|dollar|nickel bag|on the nickel|[0-9]{1,}.+nickel|worth|buffalo|poptropica|mint|a nickel\b|coin|Nickelodeon|Nickelback"
KEYWORDS_PALLADIUM="Palladium"
KEYWORDS_PLATINUM="Platinum"
KEYWORDS_PLATINUM_EXCLUDE="record|album|go platinum|Pokemon|Pok'mon|Pokémon|platinum card|platinum medal|Mass Effect"
KEYWORDS_DARMSTADTIUM="Darmstadtium"

if [ "$1" == "" ];
then

  debug_start "Group 10 elements"

  NICKEL=$(egrep -i "$KEYWORDS_NICKEL" "$NEWPAGES" | egrep -iv "$KEYWORDS_NICKEL_EXCLUDE")
  PALLADIUM=$(egrep -i "$KEYWORDS_PALLADIUM" "$NEWPAGES")
  PLATINUM=$(egrep -i "$KEYWORDS_PLATINUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_PLATINUM_EXCLUDE")
  DARMSTADTIUM=$(egrep -i "$KEYWORDS_DARMSTADTIUM" "$NEWPAGES")

  categorize "NICKEL" "Nickel"
  categorize "PALLADIUM" "Palladium"
  categorize "PLATINUM" "Platinum"
  categorize "DARMSTADTIUM" "Darmstadtium"

  debug_end "Group 10 elements"

fi