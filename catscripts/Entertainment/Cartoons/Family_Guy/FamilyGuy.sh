#!/bin/bash

KEYWORDS_FAMILYGUY="Family(| )Guy|(Peter|Lois|Meg|Chris|Stewie|Brian)(| )Griffin"

if [ "$1" == "" ];
then
  
  debug_start "Family Guy"

  FAMILYGUY=$(egrep -i "$KEYWORDS_FAMILYGUY" newpages.txt)

  if [ "$FAMILYGUY" != "" ];
  then
    printf "%s" "$FAMIlYGUY" > FamilyGuy.txt
    export CATFILE="FamilyGuy.txt"
    export CATNAME="Family Guy"
    $CATEGORIZE
    rm FamilyGuy.txt
    unset FAMILYGUY
  fi

  debug_end "Family Guy"

fi