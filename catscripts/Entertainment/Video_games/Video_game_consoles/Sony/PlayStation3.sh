#!/bin/bash

egrep -i 'PlayStation 3|Play Station 3|\bPS3|\bPS 3\b|Play(| )Station(| )Eye|Play(| )Station(| )Move' newpages.txt >> PlayStation3.txt

PS3=$(stat --print=%s PlayStation3.txt)

if [ $PS3 -ne 0 ];
then
  export CATFILE="PlayStation3.txt"
  export CATNAME="PlayStation 3"
  $CATEGORIZE
fi

rm PlayStation3.txt