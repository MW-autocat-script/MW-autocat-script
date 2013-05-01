#!/bin/bash

egrep -i 'Armenia' newpages.txt >> Armenia.txt

ARMENIA=`stat --print=%s Armenia.txt`

if [ $ARMENIA -ne 0 ];
then
  export CATFILE="Armenia.txt"
  export CATNAME="Armenia"
  $CATEGORIZE
fi

rm Armenia.txt