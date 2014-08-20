#!/bin/bash
#Script for the children's cartoon Danny Phantom

KEYWORDS_DANNYPHANTOM="Danny(| )Phantom"

if [ "$1" == "" ];
then

  debug_start "Danny Phantom"

  DANNYPHANTOM=$(egrep -i "$KEYWORDS_DANNYPHANTOM" "$NEWPAGES")

  if [ "$DANNYPHANTOM" != "" ];
  then
    printf "%s" "$DANNYPHANTOM" > DannyPhantom.txt
    export CATFILE="DannyPhantom.txt"
    export CATNAME="Danny Phantom"
    $CATEGORIZE
    rm DannyPhantom.txt
    unset DANNYPHANTOM
  fi

  debug_end "Danny Phantom"

fi