#!/bin/bash

egrep -i 'Haiti' newpages.txt >> Haiti.txt

HAITI=`stat --print=%s Haiti.txt`

if [ $HAITI -ne 0 ];
then
  export CATFILE="Haiti.txt"
  export CATNAME="Haiti"
  ./catscripts/Categorize.sh
fi

rm Haiti.txt