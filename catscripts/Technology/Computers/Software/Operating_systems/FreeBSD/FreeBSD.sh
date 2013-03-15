#!/bin/bash

egrep -i 'Free(| )BSD' newpages.txt >> FreeBSD.txt

FREEBSD=`stat --print=%s FreeBSD.txt`

if [ $FREEBSD -ne 0 ];
then
  export CATFILE="FreeBSD.txt"
  export CATNAME="FreeBSD"
  $CATEGORIZE
fi

rm FreeBSD.txt