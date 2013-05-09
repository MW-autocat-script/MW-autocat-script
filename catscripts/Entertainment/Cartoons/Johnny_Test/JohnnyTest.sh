#!/bin/bash

egrep -i 'Johnny(| )Test' newpages.txt >> JohnnyTest.txt

JOHNNYTEST=`stat --print=%s JohnnyTest.txt`

if [ $JOHNNYTEST -ne 0 ];
then
  export CATFILE="JohnnyTest.txt"
  export CATNAME="Johnny Test"
  $CATEGORIZE
fi

rm JohnnyTest.txt