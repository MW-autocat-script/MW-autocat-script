#!/bin/bash

egrep -i 'chicken(| )pox' newpages.txt >> Chickenpox.txt

CHICKENPOX=`stat --print=%s Chickenpox.txt`

if [ $CHICKENPOX -ne 0 ];
then
  export CATFILE="Chickenpox.txt"
  export CATNAME="Chicken pox"
  ./catscripts/Categorize.sh
fi

rm Chickenpox.txt