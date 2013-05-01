#!/bin/bash

egrep -i 'France' newpages.txt | egrep -iv 'Paris' >> France.txt
egrep -i '\bParis\b' newpages.txt | egrep -iv 'Plaster of Paris|Tom Paris|Paris Hilton|Romeo|Juliet' >> Paris.txt #Tom Paris is a fictional character on Star Trek: Voyager

FRANCE=`stat --print=%s France.txt`
PARIS=`stat --print=%s Paris.txt`

if [ $FRANCE -ne 0 ];
then
  export CATFILE="France.txt"
  export CATNAME="France"
  $CATEGORIZE
fi

if [ $PARIS -ne 0 ];
then
  export CATFILE="Paris.txt"
  export CATNAME="Paris"
  $CATEGORIZE
fi

rm France.txt
rm Paris.txt