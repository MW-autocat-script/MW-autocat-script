#!/bin/bash

KEYWORDS_SAOTOME="S(ã|a)o(| )Tom(e|é)|Pr(i|í)ncipe"
KEYWORDS_SAOTOME_ALL="$KEYWORDS_SAOTOME"

if [ "$1" == "" ];
then
  
  debug_start "São Tomé and Príncipe"

  SAOTOME=$(egrep -i "$KEYWORDS_SAOTOME" "$NEWPAGES")

  categorize "SAOTOME" "São Tomé and Príncipe"

  debug_end "São Tomé and Príncipe"

fi