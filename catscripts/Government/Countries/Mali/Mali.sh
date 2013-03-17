#!/bin/bash

egrep -i 'Mali\b' newpages.txt >> Mali.txt

MALI=`stat --print=%s Mali.txt`

if [ $MALI -ne 0 ];
then
  export CATFILE="Mali.txt"
  export CATNAME="Mali"
  $CATEGORIZE
fi

rm Mali.txt