#!/bin/bash

egrep -i 'South(| )Carolina' newpages.txt >> SouthCarolina.txt

SOUTHCAROLINA=`stat --print=%s SouthCarolina.txt`

if [ $SOUTHCAROLINA -ne 0 ];
then
  export CATFILE="SouthCarolina.txt"
  export CATNAME="South Carolina"
  $CATEGORIZE
fi

rm SouthCarolina.txt