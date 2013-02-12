#!/bin/bash

egrep -i 'Belgium|Belgian' newpages.txt >> Belgium.txt

BELGIUM=`stat --print=%s Belgium.txt`

if [ $BELGIUM -ne 0 ];
then
  export CATFILE="Belgium.txt"
  export CATNAME="Belgium"
  ./catscripts/Categorize.sh
fi

rm Belgium.txt