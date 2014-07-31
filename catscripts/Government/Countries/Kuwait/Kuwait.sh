#!/bin/bash

KEYWORDS_KUWAIT="Kuwait"
KEYWORDS_KUWAIT_ALL="$KEYWORDS_KUWAIT"

if [ "$1" == "" ];
then
  
  debug_start "Kuwait"

  KUWAIT=$(egrep -i "$KEYWORDS_KUWAIT" newpages.txt)

  if [ "$KUWAIT" != "" ];
  then
    printf "%s" "$KUWAIT" > Kuwait.txt
    export CATFILE="Kuwait.txt"
    export CATNAME="Kuwait"
    $CATEGORIZE
    rm Kuwait.txt
    unset KUWAIT
  fi

  debug_end "Kuwait"

fi