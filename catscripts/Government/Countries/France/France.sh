#!/bin/bash

KEYWORDS_FRANCE="France"
KEYWORDS_PARIS="\bParis\b"
KEYWORDS_TAHITI="Tahiti"
KEYWORDS_PARIS_EXCLUDE="Plaster(| )of(| )Paris|Tom(| )Paris|Paris(| )Hilton|Romeo|Juliet" #Tom Paris is a fictional character on Star Trek: Voyager
KEYWORDS_FRENCH_REVOLUTION="French(| )Revolution|Robespierre"
KEYWORDS_FRANCE_EXCLUDE="$KEYWORDS_PARIS|$KEYWORDS_TAHITI|$KEYWORDS_FRENCH_REVOLUTION"
KEYWORDS_FRANCE_ALL="$KEYWORDS_FRANCE|$KEYWORDS_PARIS|$KEYWORDS_TAHITI|$KEYWORDS_FRENCH_REVOLUTION"


if [ "$1" == "" ];
then
  
  debug_start "France"

  FRANCE=$(egrep -i "$KEYWORDS_FRANCE" newpages.txt | egrep -iv "$KEYWORDS_FRANCE_EXCLUDE")
  PARIS=$(egrep -i "$KEYWORDS_PARIS" newpages.txt | egrep -iv "$KEYWORDS_PARIS_EXCLUDE")
  TAHITI=$(egrep -i "$KEYWORDS_TAHITI" newpages.txt)
  FRENCHREVOLUTION=$(egrep -i "$KEYWORDS_FRENCH_REVOLUTION" newpages.txt)

  if [ "$FRANCE" != "" ];
  then
    printf "%s" "$FRANCE" > France.txt
    export CATFILE="France.txt"
    export CATNAME="France"
    $CATEGORIZE
    rm France.txt
    unset FRANCE
  fi

  if [ "$PARIS" != "" ];
  then
    printf "%s" "$PARIS" > Paris.txt
    export CATFILE="Paris.txt"
    export CATNAME="Paris"
    $CATEGORIZE
    rm Paris.txt
    unset PARIS
  fi

  if [ "$TAHITI" != "" ];
  then
    printf "%s" "$TAHITI" > Tahiti.txt
    export CATFILE="Tahiti.txt"
    export CATNAME="Tahiti"
    $CATEGORIZE
    rm Tahiti.txt
    unset TAHITI
  fi

  if [ "$FRENCHREVOLUTION" != "" ];
  then
    printf "%s" "$FRENCHREVOLUTION" > FrenchRevolution.txt
    export CATFILE="FrenchRevolution.txt"
    export CATNAME="French Revolution"
    $CATEGORIZE
    rm FrenchRevolution.txt
    unset FRENCHREVOLUTION
  fi

  debug_end "France"

fi