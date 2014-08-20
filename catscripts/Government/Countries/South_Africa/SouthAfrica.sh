#!/bin/bash

KEYWORDS_SOUTHAFRICA="South(| )Africa|apartheid"
KEYWORDS_NELSONMANDELA="Mandela"

if [ "$1" == "" ];
then

  debug_start "South Africa"

  SOUTHAFRICA=$(egrep -i "$KEYWORDS_SOUTHAFRICA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NELSONMANDELA")
  MANDELA=$(egrep -i "$KEYWORDS_NELSONMANDELA" "$NEWPAGES")

  if [ "$SOUTHAFRICA" != "" ];
  then
    printf "%s" "$SOUTHAFRICA" > SouthAfrica.txt
    export CATFILE="SouthAfrica.txt"
    export CATNAME="South Africa"
    $CATEGORIZE
    rm SouthAfrica.txt
    unset SOUTHAFRICA
  fi

  if [ "$MANDELA" != "" ];
  then
    printf "%s" "$MANDELA" > NelsonMandela.txt
    export CATFILE="NelsonMandela.txt"
    export CATNAME="Nelson Mandela"
    $CATEGORIZE
    rm NelsonMandela.txt
    unset MANDELA
  fi

  debug_end "South Africa"

fi