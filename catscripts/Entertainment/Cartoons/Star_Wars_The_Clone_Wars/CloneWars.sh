#!/bin/bash

egrep -i 'The(| )Clone(| )Wars' newpages.txt >> TheCloneWars.txt

CLONEWARS=`stat --print=%s TheCloneWars.txt`

if [ $CLONEWARS -ne 0 ];
then
  export CATFILE="TheCloneWars.txt"
  export CATNAME="Star Wars: The Clone Wars"
  $CATEGORIZE
fi

rm TheCloneWars.txt