#!/bin/bash

egrep -i 'Wyoming' newpages.txt >> Wyoming.txt

WYOMING=`stat --print=%s Wyoming.txt`

if [ $WYOMING -ne 0 ];
then
  export CATFILE="Wyoming.txt"
  export CATNAME="Wyoming"
  $CATEGORIZE
fi

rm Wyoming.txt