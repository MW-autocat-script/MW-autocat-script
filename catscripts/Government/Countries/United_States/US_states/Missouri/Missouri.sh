#!/bin/bash

egrep -i 'Missouri' newpages.txt >> Missouri.txt

MISSOURI=`stat --print=% Missouri.txt`

if [ $MISSOURI -ne 0 ];
then
  export CATFILE="Missouri.txt"
  export CATNAME="Missouri"
  $CATEGORIZE
fi

rm Missouri.txt