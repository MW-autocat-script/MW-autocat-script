#!/bin/bash

egrep -i 'Sydney(,|)(| )Australia|Sydney Harbo(u|)r|Australia.+Sydney|Sydney.+Australia' newpages.txt | egrep -iv 'Sydney Opera House' >> Sydney.txt
egrep -i 'Sydney(| )Opera(| )House' newpages.txt >> SydneyOperaHouse.txt

SYDNEY=`stat --print=%s Sydney.txt`
OPERA=`stat --print=%s SydneyOperaHouse.txt`

if [ $SYDNEY -ne 0 ];
then
  export CATFILE="Sydney.txt"
  export CATNAME="Sydney, Australia"
  $CATEGORIZE
fi

if [ $OPERA -ne 0 ];
then
  export CATFILE="SydneyOperaHouse.txt"
  export CATNAME="Sydney Opera House"
  $CATEGORIZE
fi

rm SydneyOperaHouse.txt
rm Sydney.txt