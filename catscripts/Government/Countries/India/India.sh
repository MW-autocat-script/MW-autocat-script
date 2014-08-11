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

  INDIA=$(egrep -i "$KEYWORDS_INDIA" newpages.txt | egrep -iv "$KEYWORDS_INDIA_EXCLUDE")
  NEWDELHI=$(egrep -i "$KEYWORDS_NEWDELHI" newpages.txt)
  MUMBAI=$(egrep -i "$KEYWORDS_MUMBAI" newpages.txt)
  KOLKATA=$(egrep -i "$KEYWORDS_KOLKATA" newpages.txt)
  HYDERABAD=$(egrep -i "$KEYWORDS_HYDERABAD" newpages.txt)
  CHENNAI=$(egrep -i "$KEYWORDS_CHENNAI" newpages.txt)
  BANGALORE=$(egrep -i "$KEYWORDS_BANGALORE" newpages.txt)
  PUNE=$(egrep -i "$KEYWORDS_PUNE" newpages.txt)

  if [ "$INDIA" != "" ];
  then
    printf "%s" "$INDIA" > India.txt
    export CATFILE="India.txt"
    export CATNAME="India"
    $CATEGORIZE
    rm India.txt
    unset INDIA
  fi

  if [ "$NEWDELHI" != "" ];
  then
    printf "%s" "$NEWDELHI" > NewDelhi.txt
    export CATFILE="NewDelhi.txt"
    export CATNAME="New Delhi"
    $CATEGORIZE
    rm NewDelhi.txt
    unset NEWDELHI
  fi

  if [ "$MUMBAI" != "" ];
  then
    printf "%s" "$MUMBAI" > Mumbai.txt
    export CATFILE="Mumbai.txt"
    export CATNAME="Mumbai"
    $CATEGORIZE
    rm Mumbai.txt
    unset MUMBAI
  fi

  if [ "$KOLKATA" != "" ];
  then
    printf "%s" "$KOLKATA" > Kolkata.txt
    export CATFILE="Kolkata.txt"
    export CATNAME="Kolkata"
    $CATEGORIZE
    rm Kolkata.txt
    unset KOLKATA
  fi

  if [ "$HYDERABAD" != "" ];
  then
    printf "%s" "$HYDERABAD" > Hyderabad.txt
    export CATFILE="Hyderabad.txt"
    export CATNAME="Hyderabad"
    $CATEGORIZE
    rm Hyderabad.txt
    unset HYDERABAD
  fi

  if [ "$CHENNAI" != "" ];
  then
    printf "%s" "$CHENNAI" > Chennai.txt
    export CATFILE="Chennai.txt"
    export CATNAME="Chennai"
    $CATEGORIZE
    rm Chennai.txt
    unset CHENNAI
  fi

  if [ "$BANGALORE" != "" ];
  then
    printf "%s" "$BANGALORE" > Bangalore.txt
    export CATFILE="Bangalore.txt"
    export CATNAME="Bangalore"
    $CATEGORIZE
    rm Bangalore.txt
    unset BANGALORE
  fi

  if [ "$PUNE" != "" ];
  then
    printf "%s" "$PUNE" > Pune.txt
    export CATFILE="Pune.txt"
    export CATNAME="Pune"
    $CATEGORIZE
    rm Pune.txt
    unset PUNE
  fi

  debug_end "India"

fi