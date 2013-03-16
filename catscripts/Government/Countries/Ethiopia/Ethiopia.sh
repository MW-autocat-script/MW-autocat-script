#!/bin/bash

egrep -i 'Ethiopia|Ghadafi|Abyssinia' newpages.txt >> Ethiopia.txt

ETHIOPIA=`stat --print=%s Ethiopia.txt`

if [ $ETHIOPIA -ne 0 ];
then
  export CATFILE="Ethiopia.txt"
  export CATNAME="Ethiopia"
  $CATEGORIZE
fi

rm Ethiopia.txt