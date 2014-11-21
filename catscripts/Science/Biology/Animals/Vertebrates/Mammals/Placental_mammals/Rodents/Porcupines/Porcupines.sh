#!/bin/bash

KEYWORDS_PORCUPINES="Porcupine|Hystricidae|Erethizontidae|Atherurus|Hystrix|Trichys|Erethizon|Coendou|Sphiggurus|Echinoprocta|Chaetomys"
KEYWORDS_PORCUPINES_ALL="$KEYWORDS_PORCUPINES"

if [ "$1" == "" ];
then
  
  debug_start "Porcupines"

  PORCUPINES=$(egrep -i "$KEYWORDS_PORCUPINES" "$NEWPAGES")

  categorize "PORCUPINES" "Porcupines"

  debug_end "Porcupines"

fi