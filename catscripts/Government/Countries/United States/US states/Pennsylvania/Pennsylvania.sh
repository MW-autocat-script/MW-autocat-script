#!/bin/bash

egrep -i 'Pennsylvania|Pennsylvannia|Pennnsylvania|Pensylvania|Pensylvannia' newpages.txt >> Pennsylvania.txt

PENNSYLVANIA=`stat --print=%s Pennnsylvania.txt`

if [ $PENNSYLVANIA -ne 0 ];
then
  export CATFILE="Pennnsylvania.txt"
  export CATNAME="Pennsylvania"
  ./catscripts/Categorize.sh
fi

rm Pennsylvania.txt