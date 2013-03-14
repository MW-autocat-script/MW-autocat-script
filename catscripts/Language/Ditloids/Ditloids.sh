#!/bin/bash

egrep -i '\[\[[0-9]{1,}=[a-z]{1,1}\s|\[\[[0-9]{1,}= [a-z]{1,1}\s|\[\[[0-9]{1,} = [a-z]{1,1}\s|\[\[[0-9]{1,} =[a-z]{1,1}\s|ditloid' newpages.txt >> Ditloids.txt

DITLOIDS=`stat --print=%s Ditloids.txt`

if [ $DITLOIDS -ne 0 ];
then
  export CATFILE="Ditloids.txt"
  export CATNAME="Ditloids"
  $CATEGORIZE
fi

rm Ditloids.txt