#!/bin/bash

egrep -i 'Ohio' newpages.txt >> Ohio.txt

OHIO=`stat --print=%s Ohio.txt`

if [ $OHIO -ne 0 ];
then
  export CATFILE="Ohio.txt"
  export CATNAME="Ohio"
  $CATEGORIZE
fi

rm Ohio.txt
