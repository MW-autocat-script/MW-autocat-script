#!/bin/bash

egrep -i 'Tales(| )of(| )Pirates' newpages.txt >> TalesofPirates.txt

PIRATES=`stat --print=%s TalesofPirates.txt`

if [ $PIRATES -ne 0 ];
then
  export CATFILE="TalesofPirates.txt"
  export CATNAME="Tales of Pirates"
  ./catscripts/Categorize.sh
fi

rm TalesofPirates.txt