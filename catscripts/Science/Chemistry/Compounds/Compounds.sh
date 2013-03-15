#!/bin/bash

##Carbon compounds

egrep -i 'Carbon(| )dioxide' newpages.txt >> CarbonDioxide.txt
egrep -i 'Carbon(| )monoxide' newpages.txt >> CarbonMonoxide.txt

CO=`stat --print=%s CarbonMonoxide.txt`
COTWO=`stat --print=%s CarbonDioxide.txt`

if [ $CO -ne 0 ];
then
  export CATFILE="CarbonMonoxide.txt"
  export CATNAME="Carbon monoxide"
  $CATEGORIZE
fi

if [ $COTWO -ne 0 ];
then
  export CATFILE="CarbonDioxide.txt"
  export CATNAME="Carbon dioxide"
  $CATEGORIZE
fi

rm CarbonMonoxide.txt
rm CarbonDioxide.txt
