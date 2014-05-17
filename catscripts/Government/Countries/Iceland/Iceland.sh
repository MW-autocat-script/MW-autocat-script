#!/bin/bash

egrep -i '\bIceland' newpages.txt | egrep -iv 'Icelandic' > Iceland.txt

ICELAND=$(stat --print=%s Iceland.txt)

if [ $ICELAND -ne 0 ];
then
  export CATFILE="Iceland.txt"
  export CATNAME="Iceland"
  $CATEGORIZE
fi

rm Iceland.txt