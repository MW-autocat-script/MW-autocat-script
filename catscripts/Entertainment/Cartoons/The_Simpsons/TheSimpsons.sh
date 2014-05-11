#!/bin/bash
#Categorization script for the adult cartoon The Simpsons

egrep -i 'The Simpsons|(Homer|Marge|Lisa|Bart(|olomew)|Maggie) Simpson|Homer.+Marge|Marge.+Homer|Bart.+Lisa|Lisa.+Bart|Ned Flanders' newpages.txt >> TheSimpsons.txt

SIMPSONS=`stat --print=%s TheSimpsons.txt`

if [ $SIMPSONS -ne 0 ];
then
  export CATFILE="TheSimpsons.txt"
  export CATNAME="The Simpsons"
  $CATEGORIZE
fi

rm TheSimpsons.txt