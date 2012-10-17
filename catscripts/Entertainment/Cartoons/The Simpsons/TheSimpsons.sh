#!/bin/bash
#Categorization script for the adult cartoon The Simpsons

cat newpages.txt | egrep -i 'The Simpsons|(Homer|Marge|Lisa|Bart(|olomew)|Maggie) Simpson|Homer.+Marge|Marge.+Homer|Bart.+Lisa|Lisa.+Bart|Ned Flanders' >> TheSimpsons.txt

SIMPSONS=`stat --print=%s TheSimpsons.txt`

if [ $SIMPSONS -ne 0 ];
then
  export CATFILE="TheSimpsons.txt"
  export CATNAME="The Simpsons"
  ./catscripts/Categorize.sh
fi

rm TheSimpsons.txt