#!/bin/bash

egrep -i 'iTunes|\bi Tunes' newpages.txt >> iTunes.txt

ITUNES=`stat --print=%s iTunes.txt`

if [ $ITUNES -ne 0 ];
then
  export CATFILE="iTunes.txt"
  export CATNAME="iTunes"
  $CATEGORIZE
fi

rm iTunes.txt