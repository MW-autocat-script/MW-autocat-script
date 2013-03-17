#!/bin/bash

egrep -i 'Dominican(| )Republic' newpages.txt >> DominicanRepublic.txt

DOMINICAN=`stat --print=%s DominicanRepublic.txt`

if [ $DOMINICAN -ne 0 ];
then
  export CATFILE="DominicanRepublic.txt"
  export CATNAME="Dominican Republic"
  $CATEGORIZE
fi

rm DominicanRepublic.txt
