#!/bin/bash

KEYWORDS_TELEVISIONSERIES_ICARLY="iCarly"

if [ "$1" == "" ];
then 

egrep -i "$KEYWORDS_TELEVISIONSERIES_ICARLY" newpages.txt >> iCarly.txt

ICARLY=`stat --print=%s iCarly.txt`

if [ $ICARLY -ne 0 ];
then
  export CATFILE="iCarly.txt"
  export CATNAME="iCarly"
  $CATEGORIZE
fi

rm iCarly.txt

fi