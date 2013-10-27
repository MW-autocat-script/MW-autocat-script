#!/bin/bash

KEYWORDS_FREEBSD="Free(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_FREEBSD" newpages.txt >> FreeBSD.txt

  FREEBSD=`stat --print=%s FreeBSD.txt`

  if [ $FREEBSD -ne 0 ];
  then
    export CATFILE="FreeBSD.txt"
    export CATNAME="FreeBSD"
    $CATEGORIZE
  fi

  rm FreeBSD.txt

fi