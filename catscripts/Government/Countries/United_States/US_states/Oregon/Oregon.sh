#!/bin/bash

egrep -i 'Oregon' newpages.txt | egrep -iv 'Oregon Trail' >> Oregon.txt

OREGON=$(stat --print=%s Oregon.txt)

if [ $OREGON -ne 0 ];
then
  export CATFILE="Oregon.txt"
  export CATNAME="Oregon"
  $CATEGORIZE
fi

rm Oregon.txt