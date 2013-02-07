#!/bin/bash

egrep -i 'Brazil' newpages.txt >> Brazil.txt

BRAZIL=`stat --print=%s Brazil.txt`

if [ $BRAZIL -ne 0 ];
then
  export CATFILE="Brazil.txt"
  export CATNAME="Brazil"
  ./catscripts/Categorize.sh
fi

rm Brazil.txt