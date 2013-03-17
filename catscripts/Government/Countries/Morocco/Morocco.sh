#!/bin/bash

egrep -i 'Morocco|Moroccan' newpages.txt >> Morocco.txt

MOROCCO=`stat --print=%s Morocco.txt`

if [ $MOROCCO -ne 0 ];
then
  export CATFILE="Morocco.txt"
  export CATNAME="Morocco"
  $CATEGORIZE
fi

rm Morocco.txt