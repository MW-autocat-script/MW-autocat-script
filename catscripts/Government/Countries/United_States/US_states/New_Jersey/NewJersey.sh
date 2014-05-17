#!/bin/bash

egrep -i 'New(| )Jersey' newpages.txt >> NewJersey.txt

NEWJERSEY=$(stat --print=%s NewJersey.txt)

if [ $NEWJERSEY -ne 0 ];
then
  export CATFILE="NewJersey.txt"
  export CATNAME="New Jersey"
  $CATEGORIZE
fi

rm NewJersey.txt