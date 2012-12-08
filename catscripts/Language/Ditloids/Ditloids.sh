#!/bin/bash

cat newpages.txt | egrep -i '\[\[[0-9]{1,}=[a-z]{1,1}\s|\[\[[0-9]{1,}= [a-z]{1,1}\s|\[\[[0-9]{1,} = [a-z]{1,1}\s|\[\[[0-9]{1,} =[a-z]{1,1}\s|ditloid' >> Ditloids.txt

 DITLOIDS=`stat --print=%s Ditloids.txt`

if [ $DITLOIDS -ne 0 ];
then
  export CATFILE="Ditloids.txt"
  export CATNAME="Ditloids"
  ./catscripts/Categorize.sh
fi

rm Ditloids.txt