#!/bin/bash

KEYWORDS_FREEBSD="Free(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "FreeBSD"

  FREEBSD=$(egrep -i "$KEYWORDS_FREEBSD" newpages.txt)

  if [ "$FREEBSD" != "" ];
  then
    printf "%s" "$FREEBSD" > FreeBSD.txt
    export CATFILE="FreeBSD.txt"
    export CATNAME="FreeBSD"
    $CATEGORIZE
    rm FreeBSD.txt
    unset FREEBSD
  fi

  debug_end "FreeBSD"

fi