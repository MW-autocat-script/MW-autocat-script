#!/bin/bash

egrep -i 'Bangladesh' newpages.txt >> Bangladesh.txt

BANGLADESH=`stat --print=%s Bangladesh.txt`

if [ $BANGLADESH -ne 0 ];
then
  export CATFILE="Bangladesh.txt"
  export CATNAME="Bangladesh"
  $CATEGORIZE
fi

rm Bangladesh.txt