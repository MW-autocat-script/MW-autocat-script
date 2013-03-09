#!/bin/bash

egrep -i 'American Dad|Stan Smith|Francine Smith|Steve Smith|Hayley Smith' newpages.txt >> AmericanDad.txt

AMERICANDAD=`stat --print=%s AmericanDad.txt`

if [ $AMERICANDAD -ne 0 ];
then
  export CATFILE="AmericanDad.txt"
  export CATNAME="American Dad"
  ./catscripts/Categorize.sh
fi

rm AmericanDad.txt