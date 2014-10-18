#!/bin/bash

KEYWORDS_ARMADILLOS="Armadillo|glyptodont"
KEYWORDS_ARMADILLOS_EXCLUDE="Armadillomon" #Armadillomon is the name of a Digimon. 
KEYWORDS_ARMADILLOS_ALL="$KEYWORDS_ARMADILLOS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Armadillos"

  ARMADILLOS=$(egrep -i "$KEYWORDS_ARMADILLOS" "$NEWPAGES")

  categorize "ARMADILLOS" "Armadillos"

  debug_end "Armadillos"

fi