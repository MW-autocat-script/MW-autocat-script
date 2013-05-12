#!/bin/bash

egrep -i 'Tunisia' newpages.txt >> Tunisia.txt

TUNISIA=`stat --print=%s Tunisia.txt`

if [ $TUNISIA -ns 0 ];
then
  export CATFILE="Tunisia.txt"
  export CATNAME="Tunisia"
  $CATEGORIZE
fi

rm Tunisia.txt