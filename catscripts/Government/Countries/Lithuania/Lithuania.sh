#!/bin/bash

egrep -i 'Lithuania' newpages.txt >> Lithuania.txt

LITHUANIA=`stat --print=%s Lithuania.txt`

if [ $LITHUANIA -ne 0 ];
then
  export CATFILE="Lithuania.txt"
  export CATNAME="Lithuania"
  $CATEGORIZE
fi

rm Lithuania.txt