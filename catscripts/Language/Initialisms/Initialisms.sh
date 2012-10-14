#!/bin/bash

cat newpages.txt | egrep -i  'What do the initials [a-z]{1,} stand for' >> Initialisms.txt

INITITALS=`stat --print=%s Initialisms.txt`

if [ $INITITALS -ne 0 ];
then
  export CATFILE="Initialisms.txt"
  export CATNAME="Initialisms"
  ./catscripts/Categorize.sh
fi

rm Initialisms.txt
