#!/bin/bash

egrep -i 'Nicaragua' newpages.txt >> Nicaragua.txt

NICARAGUA=`stat --print=%s Nicaragua.txt`

if [ $NICARAGUA -ne 0 ];
then
  export CATFILE="Nicaragua.txt"
  export CATNAME="Nicaragua"
  $CATEGORIZE
fi

rm Nicaragua.txt