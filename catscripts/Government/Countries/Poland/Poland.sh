#!/bin/bash

egrep -i 'Poland' newpages.txt | egrep -iv 'Warsaw' >> Poland.txt
egrep -i 'Warsaw' newpages.txt >> Warsaw.txt

POLAND=`stat --print=%s Poland.txt`
WARSAW=`stat --print=%s Warsaw.txt`

if [ $POLAND -ne 0 ];
then
  export CATFILE="Poland.txt"
  export CATNAME="Poland"
  $CATEGORIZE
fi

if [ $WARSAW -ne 0 ];
then
  export CATFILE="Warsaw.txt"
  export CATNAME="Warsaw"
  $CATEGORIZE
fi

rm Poland.txt
rm Warsaw.txt
