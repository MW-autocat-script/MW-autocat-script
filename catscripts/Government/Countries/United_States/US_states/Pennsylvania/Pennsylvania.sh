#!/bin/bash

egrep -i 'Pennsylvania|Pennsylvannia|Pennnsylvania|Pensylvania|Pensylvannia' newpages.txt | egrep -iv 'Pittsburgh' >> Pennsylvania.txt
egrep -i 'Pittsburgh' newpages.txt | egrep -iv "Steelers" >> Pittsburgh.txt  

PENNSYLVANIA=`stat --print=%s Pennsylvania.txt`
PITTSBURGH=`stat --print=%s Pittsburgh.txt`

if [ $PENNSYLVANIA -ne 0 ];
then
  export CATFILE="Pennsylvania.txt"
  export CATNAME="Pennsylvania"
  $CATEGORIZE
fi

if [ $PITTSBURGH -ne 0 ];
then
  export CATFILE="Pittsburgh.txt"
  export CATNAME="Pittsburgh"
  $CATEGORIZE
fi

rm Pittsburgh.txt
rm Pennsylvania.txt
