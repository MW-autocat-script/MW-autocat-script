#!/bin/bash

egrep -i 'North(| )Korea|Pyongyang|Kim Jong(-| )Il|Kim Il(-| )Song|Kim Jong(-| )un' newpages.txt >> NorthKorea.txt

NKOREA=$(stat --print=%s NorthKorea.txt)

if [ $NKOREA -ne 0 ];
then
  export CATFILE="NorthKorea.txt"
  export CATNAME="North Korea"
  $CATEGORIZE
fi

rm NorthKorea.txt