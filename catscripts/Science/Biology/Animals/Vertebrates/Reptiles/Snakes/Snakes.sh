#!/bin/bash

KEYWORDS_SNAKES="Snake"
KEYWORDS_PYTHONS="python"
KEYWORDS_PYTHONS_EXCLUDE="in python\b|program|script|computer(| )language|Metal(| )Gear|Monty(| )Python"
KEYWORDS_RATTLESNAKES="Rattle(| )snake"
KEYWORDS_BOA="\bBoa(|s)\b"
KEYWORDS_BOAS_EXCLUDE="$KEYWORDS_ANACONDAS|Boa(| )Hancock"
KEYWORDS_ANACONDAS="Anaconda"
KEYWORDS_COBRAS="Cobra"
KEYWORDS_COBRAS_EXCLUDE="Cobra(| )Commando|Shelby(| )Cobra|G(\.|)I(\.|)(| )Joe|Mustang"
KEYWORDS_SNAKES_EXCLUDE="Solid(| )Snake|$KEYWORDS_PYTHONS|Metal(| )Gear|$KEYWORDS_RATTLESNAKES|$KEYWORDS_BOA|$KEYWORDS_ANACONDAS|$KEYWORDS_COBRAS"
KEYWORDS_SNAKES_ALL="$KEYWORDS_SNAKES|$KEYWORDS_PYTHONS|$KEYWORDS_ANACONDAS|$KEYWORDS_RATTLESNAKES|$KEYWORDS_BOA|$KEYWORDS_COBRAS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Snakes"

  SNAKES=$(egrep -i "$KEYWORDS_SNAKES" "$NEWPAGES" | egrep -iv "$KEYWORDS_SNAKES_EXCLUDE")
  PYTHONS=$(egrep -i "$KEYWORDS_PYTHONS" "$NEWPAGES" | egrep -iv "$KEYWORDS_PYTHONS_EXCLUDE")
  RATTLESNAKES=$(egrep -i "$KEYWORDS_RATTLESNAKES" "$NEWPAGES")
  BOA=$(egrep -i "$KEYWORDS_BOA" "$NEWPAGES" | egrep -iv "$KEYWORDS_BOA_EXCLUDE")
  ANACONDAS=$(egrep -i "$KEYWORDS_ANACONDAS" "$NEWPAGES")
  COBRAS=$(egrep -i "$KEYWORDS_COBRAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_COBRAS_EXCLUDE")

  categorize "SNAKES" "Snakes"
  categorize "PYTHONS" "Pythons"
  categorize "RATTLESNAKES" "Rattlesnakes"
  categorize "BOA" "Boa"
  categorize "ANACONDAS" "Anacondas"
  categorize "COBRAS" "Cobras"

  debug_end "Snakes"

fi