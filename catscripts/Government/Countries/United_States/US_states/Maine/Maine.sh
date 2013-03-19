#!/bin/bash

egrep -i '\bMaine' newpages.txt >> Maine.txt

MAINE=`stat --print=%s Maine.txt`

if [ $MAINE -ne 0 ];
then
  export CATFILE="Maine.txt"
  export CATNAME="Maine"
  $CATEGORIZE
fi

rm Maine.txt