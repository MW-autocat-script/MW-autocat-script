#!/bin/bash

egrep -i 'Madagascar' newpages.txt >> Madagascar.txt

MADAGASCAR=$(stat --print=%s Madagascar.txt)

if [ $MADAGASCAR -ne 0 ];
then
  export CATFILE="Madagascar.txt"
  export CATNAME="Madagascar"
  $CATEGORIZE
fi

rm Madagascar.txt