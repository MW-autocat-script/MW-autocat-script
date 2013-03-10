#!/bin/bash

egrep -i 'religion' newpages.txt | egrep -iv 'Jesus|Christ|Jew|Judaism|Catholic|Orthodox|Shinto|Sikh|god|buddhism|buddhist' >> Religion.txt

RELIGION=`stat --print=%s Religion.txt`

if [ $RELIGION -ne 0 ];
then
  export CATFILE="Religion.txt"
  export CATNAME="Religion"
  ./catscripts/Categorize.sh
fi

rm Religion.txt

./catscripts/Lifestyle/Religion/Buddhism/Buddhism.sh
./catscripts/Lifestyle/Religion/Sikhism/Sikhism.sh
./catscripts/Lifestyle/Religion/The_Bible/TheBible.sh