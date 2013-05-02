#!/bin/bash

egrep -i 'Christianity|Jesus' newpages.txt | egrep -iv 'Anglican|Catholic|Church of England|Mormon|pope' >> Christianity.txt
egrep -i 'Anglican|Church of England' newpages.txt >> Anglican.txt
egrep -i 'Catholic|Vatican|\bpope(|s)\b|papal' newpages.txt | egrep -iv 'Alexander Pope' >> Catholicism.txt

CHRISTIANITY=`stat --print=%s Christianity.txt`
ANGLICAN=`stat --print=%s Anglican.txt`
CATHOLICISM=`stat --print=%s Catholicism.txt`

if [ $CHRISTIANITY -ne 0 ];
then
  export CATFILE="Christianity.txt"
  export CATNAME="Christianity"
  $CATEGORIZE
fi

if [ $ANGLICAN -ne 0 ];
then
  export CATFILE="Anglican.txt"
  export CATNAME="Anglican"
  $CATEGORIZE
fi

if [ $CATHOLICISM -ne 0 ];
then
  export CATFILE="Catholicism.txt"
  export CATNAME="Catholicism"
  $CATEGORIZE
fi

rm Christianity.txt
rm Anglican.txt
rm Catholicism.txt