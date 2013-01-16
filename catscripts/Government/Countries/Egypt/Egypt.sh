#!/bin/bash

cat newpages.txt | egrep -i 'Egypt(|s|ian)' | egrep -iv 'ancient Egypt' >> Egypt.txt
cat newpages.txt | egrep -i 'ancient Egypt.txt' >> AncientEgypt.txt

EGYPT=`stat --print=%s Egypt.txt`
ANCIENT=`stat --print=%s AncientEgypt.txt`

if [ $EGYPT -ne 0 ];
then
  export CATFILE="Egypt.txt"
  export CATNAME="Egypt"
  ./catscripts/Categorize.sh
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="AncientEgypt.txt"
  export CATNAME="Ancient Egypt"
  ./catscripts/Categorize.sh
fi

rm Egypt.txt
rm AncientEgypt.txt