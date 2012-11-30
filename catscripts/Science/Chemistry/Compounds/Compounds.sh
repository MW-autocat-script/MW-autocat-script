#!/bin/bash

##Carbon compounds

cat newpages.txt | egrep -i 'Carbon(| )dioxide' >> CarbonDioxide.txt
cat newpages.txt | egrep -i 'Carbon(| )monoxide' >> CarbonMonoxide.txt

CO=`stat --print=%s CarbonMonoxide.txt`
COTWO=`stat --print=%s CarbonDioxide.txt`

if [ $CO -ne 0 ];
then
  export CATFILE="CarbonMonoxide.txt"
  export CATNAME="Carbon monoxide"
  ./catscripts/Categorize.sh
fi

if [ $COTWO -ne 0 ];
then
  export CATFILE="CarbonDioxide.txt"
  export CATNAME="Carbon dioxide"
  ./catscripts/Categorize.sh
fi

rm CarbonMonoxide.txt
rm CarbonDioxide.txt
