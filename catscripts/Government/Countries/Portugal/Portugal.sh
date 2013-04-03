#!/bin/bash

egrep -i 'Portugal' newpages.txt >> Portugal.txt

PORTUGAL=`stat --print=%s Portugal.txt`

if [ $PORTUGAL -ne 0 ];
then
  export CATFILE="Portugal.txt"
  export CATNAME="Portugal"
  $CATEGORIZE
fi

rm Portugal.txt