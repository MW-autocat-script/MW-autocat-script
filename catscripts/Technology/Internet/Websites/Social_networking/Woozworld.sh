#!/bin/bash

egrep -i 'Woozworld|Wooz world' newpages.txt > Woozworld.txt

WOOZWORLD=`stat --print=%s Woozworld.txt`

if [ $WOOZWORLD -ne 0 ];
then
  export CATFILE="Woozworld.txt"
  export CATNAME="Woozworld"
  $CATEGORIZE
fi

rm Woozworld.txt
