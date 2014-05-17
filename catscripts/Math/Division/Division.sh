#!/bin/bash

egrep -i '[0-9]{1,} divided by [0-9]{1,}' newpages.txt >> Division.txt
egrep -i 'What is [0-9]{1,} / [0-9]{1,}' newpages.txt >> Division.txt
egrep -i '[0-9]{1,} ÷ [0-9]{1,}' newpages.txt >> Division.txt

DIVISION=$(stat --print=%s Division.txt)

if [ $DIVISION -ne 0 ];
then
  export CATFILE="Division.txt"
  export CATNAME="Division"
  $CATEGORIZE
fi

rm Division.txt