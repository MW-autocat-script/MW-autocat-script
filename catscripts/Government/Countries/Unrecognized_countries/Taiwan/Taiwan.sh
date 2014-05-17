#!/bin/bash

egrep -i 'Taiwan|Chinese Taipei' newpages.txt >> Taiwan.txt
egrep -i 'Republic of China' newpages.txt | egrep -iv "People('|)s Republic of China" >> Taiwan.txt

TAIWAN=$(stat --print=%s Taiwan.txt)

if [ $TAIWAN -ne 0 ];
then
  export CATFILE="Taiwan.txt"
  export CATNAME="Taiwan"
  $CATEGORIZE
fi

rm Taiwan.txt