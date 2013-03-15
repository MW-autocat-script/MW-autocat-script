#!/bin/bash

egrep -i 'Indonesia(|s)\b' newpages.txt >> Indonesia.txt

INDONESIA=`stat --print=%s Indonesia.txt`

if [ $INDONESIA -ne 0 ];
then
  export CATFILE="Indonesia.txt"
  export CATNAME="Indonesia"
  $CATEGORIZE
fi

rm Indonesia.txt