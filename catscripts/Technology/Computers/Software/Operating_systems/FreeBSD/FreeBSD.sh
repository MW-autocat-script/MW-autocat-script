#!/bin/bash

cat newpages.txt | egrep -i 'Free(| )BSD' >> FreeBSD.txt

FREEBSD=`stat --print=%s FreeBSD.txt`

if [ $FREEBSD -ne 0 ];
then
  export CATFILE="FreeBSD.txt"
  export CATNAME="FreeBSD"
  ./catscripts/Categorize.sh
fi

rm FreeBSD.txt