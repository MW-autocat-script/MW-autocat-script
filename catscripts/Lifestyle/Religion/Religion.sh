#!/bin/bash

egrep -i 'religion' newpages.txt | egrep -iv 'Jesus|Christ|Jew|Judaism|Catholic|Orthodox|Shinto|Sikh|god' >> Religion.txt

RELIGION=`stat --print=%s Religion.txt`

if [ $RELIGION -ne 0 ];
then
  export CATFILE="Religion.txt"
  export CATNAME="Religion"
  ./catscripts/Categorize.sh
fi

./catscripts/Lifestyle/Religion/Buddhism/Buddhism.sh

rm Religion.txt