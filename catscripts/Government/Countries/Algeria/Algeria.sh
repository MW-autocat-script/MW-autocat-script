#!/bin/bash


if [ "$DEBUG" == "yes" ];
then
  printf "Starting Algeria\n" 
fi

egrep -i 'Algeria' newpages.txt >> Algeria.txt

ALGERIA=$(stat --print=%s Algeria.txt)

if [ $ALGERIA -ne 0 ];
then
  export CATFILE="Algeria.txt"
  export CATNAME="Algeria"
  $CATEGORIZE
fi

rm Algeria.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Algeria\n" 
fi