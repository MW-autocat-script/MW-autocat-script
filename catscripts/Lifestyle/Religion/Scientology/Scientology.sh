#!/bin/bash

egrep -i 'scientology|scientologist' newpages.txt >> Scientology.txt

SCIENTOLOGY=`stat --print=%s Scientology.txt`

if [ $SCIENTOLOGY -ne 0 ];
then
  export CATFILE="Scientology.txt"
  export CATNAME="Scientology"
  $CATEGORIZE
fi

rm Scientology.txt