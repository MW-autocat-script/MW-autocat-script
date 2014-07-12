#!/bin/bash

KEYWORDS_MULTIPLICATION="[0-9]{1,}(| )times(| )[0-9]{1,}|What(| )is(| )[0-9]{1,}(| )x(| )[0-9]{1,}|[0-9]{1,}(| )\*(| )[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Multiplication"

  MULTIPLICATION=$(egrep -i "$KEYWORDS_MULTIPLICATION" newpages.txt)

  if [ "$MULTIPLICATION" != "" ];
  then
    printf "%s" "$MULTIPLICATION" > Multiplication.txt
    export CATFILE="Multiplication.txt"
    export CATNAME="Multiplication"
    $CATEGORIZE
    rm Multiplication.txt
    unset MULTIPLICATION
  fi

  debug_end "Multiplication"

fi