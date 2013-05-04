#!/bin/bash

egrep -i 'heart(| )disease' newpages.txt >> HeartDisease.txt

HEARTDISEASE=`stat --print=%s HeartDisease.txt`

if [ $HEARTDISEASE -ne 0 ];
then
  export CATFILE="HeartDisease.txt"
  export CATNAME="Heart disease"
  $CATEGORIZE
fi

rm HeartDisease.txt