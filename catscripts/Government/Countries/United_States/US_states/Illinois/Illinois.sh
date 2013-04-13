#!/bin/bash

egrep -i 'Illinois' newpages.txt | egrep -iv 'Springfield|Chicago' >> Illinois.txt
egrep -i 'Springfield(|,)(| )Illinois' newpages.txt >> Springfield.txt
egrep -i 'Chicago' newpages.txt >> Chicago.txt

ILLINOIS=`stat --print=%s Illinois.txt`
SPRINGFIELD=`stat --print=%s Springfield.txt`
CHICAGO=`stat --print=%s Springfield.txt`

if [ $ILLINOIS -ne 0 ];
then
  export CATFILE="Illinois.txt"
  export CATNAME="Illinois"
  $CATEGORIZE
fi

if [ $SPRINGFIELD -ne 0 ];
then
  export CATFILE="Springfield.txt"
  export CATNAME="Springfield, Illinois"
  $CATEGORIZE
fi

if [ $CHICAGO -ne 0 ];
then
  export CATFILE="Chicago.txt"
  export CATNAME="Chicago"
  $CATEGORIZE
fi

rm Illinois.txt
rm Springfield.txt
rm Chicago.txt