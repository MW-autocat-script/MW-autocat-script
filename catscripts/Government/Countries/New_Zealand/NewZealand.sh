#!/bin/bash

egrep -i 'New(| )Zealand' newpages.txt >> NewZealand.txt
egrep -i ' NZ\b' newpages.txt >> NewZealand.txt

NEWZEALAND=$(stat --print=%s NewZealand.txt)

if [ $NEWZEALAND -ne 0 ];
then
  export CATFILE="NewZealand.txt"
  export CATNAME="New Zealand"
  $CATEGORIZE
fi

rm NewZealand.txt