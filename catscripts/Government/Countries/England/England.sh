#!/bin/bash

egrep -i 'England|British' newpages.txt | egrep -iv 'British Isles|London|Church of England' >> England.txt #Since most people don't know the difference between British and English
egrep -i 'London' newpages.txt | egrep -iv 'Jack London' >> London.txt #Jack London was an American author

ENGLAND=`stat --print=%s England.txt`
LONDON=`stat --print=%s London.txt`

if [ $ENGLAND -ne 0 ];
then
  export CATFILE="England.txt"
  export CATNAME="England"
  $CATEGORIZE
fi

if [ $LONDON -ne 0 ];
then
  export CATFILE="London.txt"
  export CATNAME="London"
  $CATEGORIZE
fi

rm England.txt
rm London.txt