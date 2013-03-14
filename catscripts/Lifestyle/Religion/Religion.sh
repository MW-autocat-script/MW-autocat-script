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

CURRENTDIR="./catscripts/Lifestyle/Religion"

$CURRENTDIR/Buddhism/Buddhism.sh
$CURRENTDIR/Christianity/Christianity.sh
$CURRENTDIR/Hinduism/Hinduism.sh
$CURRENTDIR/Judaism/Judaism.sh
$CURRENTDIR/Sikhism/Sikhism.sh
$CURRENTDIR/The_Bible/TheBible.sh