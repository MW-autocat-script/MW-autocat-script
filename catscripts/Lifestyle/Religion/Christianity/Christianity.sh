#!/bin/bash

egrep -i 'Christianity|Jesus' newpages.txt >> Christianity.txt

CHRISTIANITY=`stat --print=%s Christianity.txt`

if [ $CHRISTIANITY -ne 0 ];
then
  export CATFILE="Christianity.txt"
  export CATNAME="Christianity"
  $CATEGORIZE
fi

rm Christianity.txt