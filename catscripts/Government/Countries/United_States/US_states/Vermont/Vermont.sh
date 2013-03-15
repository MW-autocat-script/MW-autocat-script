#!/bin/bash

egrep -i 'Vermont' newpages.txt >> Vermont.txt

VERMONT=`stat --print=%s Vermont.txt`

if [ $VERMONT -ne 0 ];
then
  export CATFILE="Vermont.txt"
  export CATNAME="Vermont"
  $CATEGORIZE
fi

rm Vermont.txt