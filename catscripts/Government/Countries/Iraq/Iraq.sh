#!/bin/bash

egrep -i 'Iraq' newpages.txt | egrep -iv 'Baghdad' >> Iraq.txt
egrep -i 'Baghdad' newpages.txt >> Baghdad.txt

IRAQ=`stat --print=%s Iraq.txt`
BAGHDAD=`stat --print=%s Baghdad.txt`

if [ $IRAQ -ne 0 ];
then
  export CATFILE="Iraq.txt"
  export CATNAME="Iraq"
  $CATEGORIZE
fi

if [ $BAGHDAD -ne 0 ];
then
  export CATFILE="Baghdad.txt"
  export CATNAME="Baghdad"
  $CATEGORIZE
fi

rm Iraq.txt
rm Baghdad.txt