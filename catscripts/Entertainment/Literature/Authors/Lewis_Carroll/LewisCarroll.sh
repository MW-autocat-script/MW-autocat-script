#!/bin/bash

KEYWORDS_LEWISCARROLL="Lewis(| )Car(|r)o(|l)l|Charles(| )(|Lutwidge)(| )Dodgson"

if [ "$1" == "" ];
then
  
  debug_start "Lewis Carroll"

  CARROLL=$(egrep -i "$KEYWORDS_LEWISCARROLL" "$NEWPAGES")

  if [ "$CARROLL" != "" ];
  then
    printf "%s" "$CARROLL" > Carroll.txt
    export CATFILE="Carroll.txt"
    export CATNAME="Lewis Carroll"
    $CATEGORIZE
    rm Carroll.txt
    unset CARROLL
  fi

  debug_end "Lewis Carroll"

fi