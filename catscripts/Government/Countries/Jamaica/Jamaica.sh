#!/bin/bash

egrep -i 'Jamaica' newpages.txt >> Jamaica.txt

JAMAICA=`stat --print=%s Jamaica.txt`

if [ $JAMAICA -ne 0 ];
then
  export CATFILE="Jamaica.txt"
  export CATNAME="Jamaica"
  $CATEGORIZE
fi

rm Jamaica.txt