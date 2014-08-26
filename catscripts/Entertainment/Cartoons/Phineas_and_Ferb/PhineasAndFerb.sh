#!/bin/bash

KEYWORDS_PHINEASANDFERB="Phineas(| )(&|and)(| )Ferb|Ferb(| )Fletcher|Ferb(| )Fletcher"

if [ "$1" == "" ];
then
  
  debug_start "Phineas and Ferb"

  PHINEASANDFERB=$(egrep -i "$KEYWORDS_PHINEASANDFERB" "$NEWPAGES")

  categorize "PHINEASANDFERB" "Phineas and Ferb"

  debug_end "Phineas and Ferb"

fi