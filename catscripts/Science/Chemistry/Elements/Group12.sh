#!/bin/bash 

KEYWORDS_MERCURY="Mercury"
KEYWORDS_MERCURY_SECONDARY="atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct"
KEYWORDS_MERCURY_EXCLUDE="planet Mercury"
KEYWORDS_ZINC="Zinc"
KEYWORDS_CADMIUM="Cadmium"
KEYWORDS_COPERNICIUM="Copernicium"

if [ "$1" == "" ];
then

  debug_start "Group 12 elements"

  MERCURY=$(egrep -i "$KEYWORDS_MERCURY" "$NEWPAGES" | egrep -i "$KEYWORDS_MERCURY_SECONDARY" | egrep -iv "$KEYWORDS_MERCURY_EXCLUDE")
  ZINC=$(egrep -i "$KEYWORDS_ZINC" "$NEWPAGES")
  CADMIUM=$(egrep -i "$KEYWORDS_CADMIUM" "$NEWPAGES")
  COPERNICIUM=$(egrep -i "$KEYWORDS_COPERNICIUM" "$NEWPAGES")

  if [ "$MERCURY" != "" ];
  then
    printf "%s" "$MERCURY" > MercuryElement.txt
    export CATFILE="MercuryElement.txt"
    export CATNAME="Mercury (element)"
    $CATEGORIZE
    rm MercuryElement.txt
    unset MERCURY
  fi

  if [ "$ZINC" != "" ];
  then
    printf "%s" "$ZINC" > Zinc.txt
    export CATFILE="Zinc.txt"
    export CATNAME="Zinc"
    $CATEGORIZE
    rm Zinc.txt
    unset ZINC
  fi

  if [ "$CADMIUM" != "" ];
  then
    printf "%s" "$CADMIUM" > Cadmium.txt
    export CATFILE="Cadmium.txt"
    export CATNAME="Cadmium"
    $CATEGORIZE
    rm Cadmium.txt
    unset CADMIUM
  fi

  if [ "$COPERNICIUM" != "" ];
  then
    printf "%s" "$COPERNICIUM" > Copernicium.txt
    export CATFILE="Copernicium.txt"
    export CATNAME="Copernicium"
    $CATEGORIZE
    rm Copernicium.txt
    unset COPERNICIUM
  fi

  debug_end "Group 12 elements"

fi