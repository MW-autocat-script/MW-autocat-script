#!/bin/bash

export KEYWORDS_MMORPG_WIZARD101="Wizard(|s)(| )101"

if [ "$1" == "" ];
then

  debug_start "Wizard101"

  WIZARD101=$(egrep -i "$KEYWORDS_MMORPG_WIZARD101" "$NEWPAGES")

  if [ "$WIZARD101" != "" ];
  then
    printf "%s" "$WIZARD101" > Wizard101.txt
    export CATFILE="Wizard101.txt"
    export CATNAME="Wizard101"
    $CATEGORIZE
    rm Wizard101.txt
    unset WIZARD101
  fi

  debug_end "Wizard101"

fi