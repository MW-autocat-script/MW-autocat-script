#!/bin/bash

egrep -i "Bolivia" newpages.txt > Bolivia.txt

BOLIVIA=`stat --print=%s Bolivia.txt`

if [ $BOLIVIA -ne 0 ];
then
  export CATFILE="Bolivia.txt"
  export CATNAME="Bolivia"
  $CATEGORIZE
fi

rm Bolivia.txt
