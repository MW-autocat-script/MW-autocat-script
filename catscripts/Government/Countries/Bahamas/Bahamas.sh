#!/bin/bash

egrep -i 'Bahamas' newpages.txt >> Bahamas.txt

BAHAMAS=`stat --print=%s Bahamas.txt`

if [ $BAHAMAS -ne 0 ];
then
  export CATFILE="Bahamas.txt"
  export CATNAME="The Bahamas"
  $CATEGORIZE
fi

rm Bahamas.txt