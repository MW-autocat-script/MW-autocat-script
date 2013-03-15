#!/bin/bash

egrep -i 'Anarchy(| )Online' newpages.txt >> AnarchyOnline.txt

ANARCHY=`stat --print=%s AnarchyOnline.txt`

if [ $ANARCHY -ne 0 ];
then
  export CATFILE="AnarchyOnline.txt"
  export CATNAME="Anarchy Online"
  $CATEGORIZE
fi

rm AnarchyOnline.txt