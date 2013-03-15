#!/bin/bash

egrep -i 'Iraq' newpages.txt >> Iraq.txt

IRAQ=`stat --print=%s Iraq.txt`

if [ $IRAQ -ne 0 ];
then
  export CATFILE="Iraq.txt"
  export CATNAME="Iraq"
  $CATEGORIZE
fi

rm Iraq.txt