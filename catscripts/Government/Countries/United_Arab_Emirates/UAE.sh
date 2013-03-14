#!/bin/bash

egrep -i '\bUAE|\bU\.A\.E|United(| )Arab(| )Emirates' newpages.txt | egrep -iv 'Dubai' >> UAE.txt
egrep -i 'Dubai' newpages.txt >> Dubai.txt

UAE=`stat --print=%s UAE.txt`
DUBAI=`stat --print=%s Dubai.txt

if [ $UAE -ne 0 ];
then
  export CATFILE="UAE.txt"
  export CATNAME="United Arab Emirates"
  $CATEGORIZE
fi

if [ $DUBAI -ne 0 ];
then
  export CATFILE="Dubai.txt"
  export CATNAME="Dubai"
  $CATEGORIZE
fi

rm UAE.txt
rm Dubai.txt