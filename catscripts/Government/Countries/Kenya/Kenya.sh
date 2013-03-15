#!/bin/bash

egrep -i 'Kenya' newpages.txt > Kenya.txt

KENYA=`stat --print=%s Kenya.txt`

if [ $KENYA -ne 0 ];
then
  export CATFILE="Kenya.txt"
  export CATNAME="Kenya"
  $CATEGORIZE
fi

rm Kenya.txt