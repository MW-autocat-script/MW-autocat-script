#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Religion\n" 
fi


RELIGIONDIR="./catscripts/Lifestyle/Religion"

. $RELIGIONDIR/Buddhism/Buddhism.sh
. $RELIGIONDIR/Christianity/Christianity.sh #KEYWORDS_CHRISTIANITY_ALL
. $RELIGIONDIR/Hinduism/Hinduism.sh
. $RELIGIONDIR/Islam/Islam.sh
. $RELIGIONDIR/Jainism/Jainism.sh
. $RELIGIONDIR/Judaism/Judaism.sh #KEYWORDS_JUDAISM_ALL
. $RELIGIONDIR/Scientology/Scientology.sh #KEYWORDS_SCIENTOLOGY_ALL
. $RELIGIONDIR/Sikhism/Sikhism.sh
. $RELIGIONDIR/The_Bible/TheBible.sh
. $RELIGIONDIR/Wicca/Wicca.sh #KEYWORDS_WICCA


egrep -i 'religion|religious' newpages.txt | egrep -iv "$KEYWORDS_CHRISTIANITY_ALL|$KEYWORDS_JUDAISM_ALL|Shinto|Sikh|god|buddhism|buddhist|hindu|jain(|s|ism)\b|islam|Muslim|Prophet (Muhammed|Muhammad)|$KEYWORDS_SCIENTOLOGY_ALL|$KEYWORDS_WICCA" >> Religion.txt

RELIGION=$(stat --print=%s Religion.txt)

if [ $RELIGION -ne 0 ];
then
  export CATFILE="Religion.txt"
  export CATNAME="Religion"
  $CATEGORIZE
fi

rm Religion.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing religion\n" 
fi