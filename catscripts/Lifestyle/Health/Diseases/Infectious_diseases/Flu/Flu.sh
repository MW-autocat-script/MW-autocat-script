#!/bin/bash

egrep -i 'Flu\b|influenza' newpages.txt | egrep -iv 'H1N1|swine flu' >> Flu.txt
egrep -i 'H1N1|Swine flu' newpages.txt >> SwineFlu.txt

FLU=$(stat --print=%s Flu.txt)
SWINE=$(stat --print=%s SwineFlu.txt)

if [ $FLU -ne 0 ];
then
  export CATFILE="Flu.txt"
  export CATNAME="Flu"
  $CATEGORIZE
fi

if [ $SWINE -ne 0 ];
then
  export CATFILE="SwineFlu.txt"
  export CATNAME="Swine flu"
  $CATEGORIZE
fi

rm Flu.txt
rm SwineFlu.txt