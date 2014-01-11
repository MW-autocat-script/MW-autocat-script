#!/bin/bash

KEYWORDS_INDIA="India\b"
KEYWORDS_NEWDELHI="Delhi"
KEYWORDS_MUMBAI="Mumbai|Bombay"
KEYWORDS_KOLKATA="Kolkata|Calcutta"
KEYWORDS_CHENNAI="Chennai|Madras"
KEYWORDS_BANGALORE="Bangalore|Bengaluru"
KEYWORDS_PUNE="\bPune"
KEYWORDS_INDIA_EXCLUDE="$KEYWORDS_NEWDELHI|$KEYWORDS_MUMBAI|$KEYWORDS_KOLKATA|$KEYWORDS_CHENNAI|$KEYWORDS_BANGALORE|$KEYWORDS_PUNE"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting India\n"
  fi

  INDIA=`egrep -i "$KEYWORDS_INDIA" newpages.txt | egrep -iv "$KEYWORDS_INDIA_EXCLUDE"`
  NEWDELHI=`egrep -i "$KEYWORDS_NEWDELHI" newpages.txt`
  MUMBAI=`egrep -i "$KEYWORDS_MUMBAI" newpages.txt`
  KOLKATA=`egrep -i "$KEYWORDS_KOLKATA" newpages.txt`
  CHENNAI=`egrep -i "$KEYWORDS_CHENNAI" newpages.txt`
  BANGALORE=`egrep -i "$KEYWORDS_BANGALORE" newpages.txt`
  PUNE=`egrep -i "$KEYWORDS_PUNE" newpages.txt`

  if [ "$INDIA" != "" ];
  then
    printf "$INDIA" > India.txt
    export CATFILE="India.txt"
    export CATNAME="India"
    $CATEGORIZE
    rm India.txt
    unset INDIA
  fi

  if [ "$NEWDELHI" != "" ];
  then
    printf "$NEWDELHI" > NewDelhi.txt
    export CATFILE="NewDelhi.txt"
    export CATNAME="New Delhi"
    $CATEGORIZE
    rm NewDelhi.txt
    unset NEWDELHI
  fi

  if [ "$MUMBAI" != "" ];
  then
    printf "$MUMBAI" > Mumbai.txt
    export CATFILE="Mumbai.txt"
    export CATNAME="Mumbai"
    $CATEGORIZE
    rm Mumbai.txt
    unset MUMBAI
  fi

  if [ "$KOLKATA" != "" ];
  then
    printf "$KOLKATA" > Kolkata.txt
    export CATFILE="Kolkata.txt"
    export CATNAME="Kolkata"
    $CATEGORIZE
    rm Kolkata.txt
    unset KOLKATA
  fi

  if [ "$CHENNAI" != "" ];
  then
    printf "$CHENNAI" > Chennai.txt
    export CATFILE="Chennai.txt"
    export CATNAME="Chennai"
    $CATEGORIZE
    rm Chennai.txt
    unset CHENNAI
  fi

  if [ "$BANGALORE" != "" ];
  then
    printf "$BANGALORE" > Bangalore.txt
    export CATFILE="Bangalore.txt"
    export CATNAME="Bangalore"
    $CATEGORIZE
    rm Bangalore.txt
    unset BANGALORE
  fi

  if [ "$PUNE" != "" ];
  then
    printf "$PUNE" > Pune.txt
    export CATFILE="Pune.txt"
    export CATNAME="Pune"
    $CATEGORIZE
    rm Pune.txt
    unset PUNE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing India\n"
  fi

fi