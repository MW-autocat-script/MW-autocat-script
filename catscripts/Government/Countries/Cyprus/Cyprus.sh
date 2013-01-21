#!/bin/bash

cat newpages.txt | egrep -i 'Cyprus' >> Cyprus.txt

CYPRUS=`stat --print=%s Cyprus.txt`

if [ $CYPRUS -ne 0 ];
then
  export CATFILE="Cyprus.txt"
  export CATNAME="Cyprus"
  ./catscripts/Categorize.sh
fi

rm Cyprus.txt