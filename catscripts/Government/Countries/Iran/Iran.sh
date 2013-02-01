#!/bin/bash

egrep -i '\bIran|Tehran' newpages.txt >> Iran.txt

IRAN=`stat --print=%s Iran.txt`

if [ $IRAN -ne 0 ];
then
  export CATFILE="Iran.txt"
  export CATNAME="Iran"
  ./catscripts/Categorize.sh
fi

rm Iran.txt