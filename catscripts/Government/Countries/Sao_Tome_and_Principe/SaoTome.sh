#!/bin/bash

KEYWORDS_SAOTOME="S(ã|a)o(| )Tom(e|é)|Pr(i|í)ncipe"
KEYWORDS_SAOTOME_ALL="$KEYWORDS_SAOTOME"

if [ "$1" == "" ];
then
  
  debug_start "São Tomé and Príncipe"

  SAOTOME=$(egrep -i "$KEYWORDS_SAOTOME" newpages.txt)

  if [ "$SAOTOME" != "" ];
  then
    printf "%s" "$SAOTOME" > SaoTome.txt
    export CATFILE="SaoTome.txt"
    export CATNAME="São Tomé and Príncipe"
    $CATEGORIZE
    rm SaoTome.txt
    unset SAOTOME
  fi

  debug_end "São Tomé and Príncipe"

fi