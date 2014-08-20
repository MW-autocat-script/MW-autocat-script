#!/bin/bash

KEYWORDS_OPENBSD="Open(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "OpenBSD"

  OPENBSD=$(egrep -i "$KEYWORDS_OPENBSD" "$NEWPAGES")

  if [ "$OPENBSD" != "" ];
  then
    printf "%s" "$OPENBSD" > OpenBSD.txt
    export CATFILE="OpenBSD.txt"
    export CATNAME="OpenBSD"
    $CATEGORIZE
    rm OpenBSD.txt
    unset OPENBSD
  fi

  debug_end "OpenBSD"

fi