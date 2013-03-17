#!/bin/bash

egrep -i 'Malaysia\b' newpages.txt >> Malaysia.txt

MALAYSIA=`stat --print=%s Malaysia.txt`

if [ $MALAYSIA -ne 0 ];
then
  export CATFILE="Malaysia.txt"
  export CATNAME="Malaysia"
  $CATEGORIZE
fi

rm Malaysia.txt