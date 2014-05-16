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

  NICKEL=$(egrep -i "$KEYWORDS_NICKEL" newpages.txt | egrep -iv "$KEYWORDS_NICKEL_EXCLUDE")
  PALLADIUM=$(egrep -i "$KEYWORDS_PALLADIUM" newpages.txt)
  PLATINUM=$(egrep -i "$KEYWORDS_PLATINUM" newpages.txt | egrep -iv "$KEYWORDS_PLATINUM_EXCLUDE")
  DARMSTADTIUM=$(egrep -i "$KEYWORDS_DARMSTADTIUM" newpages.txt)

  if [ "$NICKEL" != "" ];
  then
    printf "%s" "$NICKEL" > Nickel.txt
    export CATFILE="Nickel.txt"
    export CATNAME="Nickel"
    $CATEGORIZE
    rm Nickel.txt
    unset NICKEL
  fi

  if [ "$PALLADIUM" != "" ];
  then
    printf "%s" "$PALLADIUM" > Palladium.txt
    export CATFILE="Palladium.txt"
    export CATNAME="Palladium"
    $CATEGORIZE
    rm Palladium.txt
    unset PALLADIUM
  fi

  if [ "$PLATINUM" != "" ];
  then
    printf "%s" "$PLATINUM" > Platinum.txt
    export CATFILE="Platinum.txt"
    export CATNAME="Platinum"
    $CATEGORIZE
    rm Platinum.txt
    unset PLATINUM
  fi

  if [ "$DARMSTADTIUM" != "" ];
  then
    printf "%s" "$DARMSTADTIUM" > Darmstadtium.txt
    export CATFILE="Darmstadtium.txt"
    export CATNAME="Darmstadtium"
    $CATEGORIZE
    rm Darmstadtium.txt
    unset DARMSTADTIUM
  fi

  debug_end "Group 10 elements"

fi