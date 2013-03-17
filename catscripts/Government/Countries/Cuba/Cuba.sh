#!/bin/bash

egrep -i 'Cuba|Fidel Castro|Raul Castro|Havana' newpages.txt >> Cuba.txt

CUBA=`stat --print=%s Cuba.txt`

if [ $CUBA -ne 0 ];
then
  export CATFILE="Cuba.txt"
  export CATNAME="Cuba"
  $CATEGORIZE
fi

rm Cuba.txt
