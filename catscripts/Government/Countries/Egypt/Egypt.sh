#!/bin/bash

egrep -i 'Egypt(|s|ian)' newpages.txt | egrep -iv 'ancient Egypt' >> Egypt.txt
egrep -i 'ancient Egypt' newpages.txt >> AncientEgypt.txt

EGYPT=`stat --print=%s Egypt.txt`
ANCIENT=`stat --print=%s AncientEgypt.txt`

if [ $EGYPT -ne 0 ];
then
  export CATFILE="Egypt.txt"
  export CATNAME="Egypt"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="AncientEgypt.txt"
  export CATNAME="Ancient Egypt"
  $CATEGORIZE
fi

rm Egypt.txt
rm AncientEgypt.txt