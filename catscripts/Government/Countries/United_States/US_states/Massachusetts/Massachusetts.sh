#!/bin/bash

egrep -i 'Massachusetts' newpages.txt | egrep -iv 'Boston' >> Massachusetts.txt
egrep -i 'Boston' newpages.txt >> Boston.txt

MASSACHUSETTS=`stat --print=%s Massachusetts.txt`
BOSTON=`stat --print=%s Boston.txt`

if [ $MASSACHUSETTS -ne 0 ];
then
  export CATFILE="Massachusetts.txt"
  export CATNAME="Massachusetts"
  $CATEGORIZE
fi

if [ $BOSTON -ne 0 ];
then
  export CATFILE="Boston.txt"
  export CATNAME="Boston"
  $CATEGORIZE
fi

rm Massachusetts.txt
rm Boston.txt