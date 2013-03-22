#!/bin/bash

egrep -i 'Pennsylvania|Pennsylvannia|Pennnsylvania|Pensylvania|Pensylvannia' newpages.txt >> Pennsylvania.txt

PENNSYLVANIA=`stat --print=%s Pennsylvania.txt`

if [ $PENNSYLVANIA -ne 0 ];
then
  export CATFILE="Pennsylvania.txt"
  export CATNAME="Pennsylvania"
  $CATEGORIZE
fi

rm Pennsylvania.txt
