#!/bin/bash

egrep -i 'Tales(| )of(| )Pirates' newpages.txt >> TalesofPirates.txt

PIRATES=`stat --print=%s TalesofPirates.txt`

if [ $PIRATES -ne 0 ];
then
  export CATFILE="TalesofPirates.txt"
  export CATNAME="Tales of Pirates"
  $CATEGORIZE
fi

rm TalesofPirates.txt