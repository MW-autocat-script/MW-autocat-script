#!/bin/bash

KEYWORDS_PHINEASANDFERB="Phineas(| )(&|and)(| )Ferb|Ferb(| )Fletcher|Ferb(| )Fletcher"

if [ "$1" == "" ];
then
  
  debug_start "Phineas and Ferb"

  PHINEASANDFERB=$(egrep -i "$KEYWORDS_PHINEASANDFERB" newpages.txt)

  if [ "$PHINEASANDFERB" != "" ];
  then
    printf "%s" "$PHINEASANDFERB" > PhineasAndFerb.txt
    export CATFILE="PhineasAndFerb.txt"
    export CATNAME="Phineas and Ferb"
    $CATEGORIZE
    rm PhineasAndFerb.txt
    unset PHINEASANDFERB
  fi

  debug_end "Phineas and Ferb"

fi