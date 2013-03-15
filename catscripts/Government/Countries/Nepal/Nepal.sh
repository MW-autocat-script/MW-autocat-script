#!/bin/bash

egrep -i 'Nepal' newpages.txt >> Nepal.txt

NEPAL=`stat --print=%s Nepal.txt`

if [ $NEPAL -ne 0 ];
then
  export CATFILE="Nepal.txt"
  export CATNAME="Nepal"
  $CATEGORIZE
fi

rm Nepal.txt