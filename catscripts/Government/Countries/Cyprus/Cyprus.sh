#!/bin/bash

egrep -i 'Cyprus' newpages.txt >> Cyprus.txt

CYPRUS=`stat --print=%s Cyprus.txt`

if [ $CYPRUS -ne 0 ];
then
  export CATFILE="Cyprus.txt"
  export CATNAME="Cyprus"
  $CATEGORIZE
fi

rm Cyprus.txt