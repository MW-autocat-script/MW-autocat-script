#!/bin/bash

egrep -i 'religion|religious' newpages.txt | egrep -iv 'Jesus|Christ|Jew|Judaism|Mormon|Catholic|Orthodox|Shinto|Sikh|god|buddhism|buddhist|jain(|s|ism)\b|islam|Muslim|Prophet (Muhammed|Muhammad)' >> Religion.txt

RELIGION=`stat --print=%s Religion.txt`

if [ $RELIGION -ne 0 ];
then
  export CATFILE="Religion.txt"
  export CATNAME="Religion"
  $CATEGORIZE
fi

rm Religion.txt

CURRENTDIR="./catscripts/Lifestyle/Religion"

$CURRENTDIR/Buddhism/Buddhism.sh
$CURRENTDIR/Christianity/Christianity.sh
$CURRENTDIR/Hinduism/Hinduism.sh
$CURRENTDIR/Islam/Islam.sh
$CURRENTDIR/Jainism/Jainism.sh
$CURRENTDIR/Judaism/Judaism.sh
$CURRENTDIR/Sikhism/Sikhism.sh
$CURRENTDIR/The_Bible/TheBible.sh
$CURRENTDIR/Wicca/Wicca.sh