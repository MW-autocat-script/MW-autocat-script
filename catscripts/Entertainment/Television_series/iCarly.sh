#!/bin/bash

egrep -i 'iCarly' newpages.txt >> iCarly.txt

ICARLY=`stat --print=%s iCarly.txt`

if [ $ICARLY -ne 0 ];
then
  export CATFILE="iCarly.txt"
  export CATNAME="iCarly"
  $CATEGORIZE
fi

rm iCarly.txt