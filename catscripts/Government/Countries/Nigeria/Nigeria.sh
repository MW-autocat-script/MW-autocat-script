#!/bin/bash

egrep -i 'Nigeria' newpages.txt >> Nigeria.txt

NIGERIA=`stat --print=%s Nigeria.txt`

if [ $NIGERIA -ne 0 ];
then
  export CATFILE="Nigeria.txt"
  export CATNAME="Nigeria"
  $CATEGORIZE
fi

rm Nigeria.txt