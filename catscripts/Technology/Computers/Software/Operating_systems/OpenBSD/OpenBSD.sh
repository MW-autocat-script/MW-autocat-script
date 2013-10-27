#!/bin/bash

KEYWORDS_OPENBSD="Open(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_OPENBSD" newpages.txt >> OpenBSD.txt

  OPENBSD=`stat --print=%s OpenBSD.txt`

  if [ $OPENBSD -ne 0 ];
  then
    export CATFILE="OpenBSD.txt"
    export CATNAME="OpenBSD"
    $CATEGORIZE
  fi

  rm OpenBSD.txt

fi