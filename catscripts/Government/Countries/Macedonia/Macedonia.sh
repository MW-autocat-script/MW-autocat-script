#!/bin/bash

egrep -i 'Macedonia' newpages.txt >> Macedonia.txt

MACEDONIA=`stat --print=%s Macedonia.txt`

if [ $MACEDONIA -ne 0 ];
then
  export CATFILE="Macedonia.txt"
  export CATNAME="Macedonia"
  $CATEGORIZE
fi

rm Macedonia.txt