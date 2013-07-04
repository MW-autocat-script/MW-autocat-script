#!/bin/bash


if [ "$DEBUG" == "yes" ];
then
  printf "Starting Albania\n" 
fi

egrep -i 'Albania' newpages.txt >> Albania.txt

ALBANIA=`stat --print=%s Albania.txt`

if [ $ALBANIA -ne 0 ];
then
  export CATFILE="Albania.txt"
  export CATNAME="Albania"
  $CATEGORIZE
fi

rm Albania.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Albania\n" 
fi