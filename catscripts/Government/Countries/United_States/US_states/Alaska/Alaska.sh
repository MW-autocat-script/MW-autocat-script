#!/bin/bash

egrep -i "Alaska|Seward's icebox" newpages.txt > Alaska.txt

ALASKA=`stat --print=%s Alaska.txt`

if [ $ALASKA -ne 0 ];
then
  export CATFILE="Alaska.txt"
  export CATNAME="Alaska"
  $CATEGORIZE
fi
rm Alaska.txt