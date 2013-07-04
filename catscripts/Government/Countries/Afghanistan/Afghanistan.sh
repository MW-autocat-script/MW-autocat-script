#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Afghanistan\n" 
fi

egrep -i 'Afghani(|stan)' newpages.txt | egrep -iv 'Afghanistan War|war in Afghanistan' >> Afghanistan.txt

AFGHANISTAN=`stat --print=%s Afghanistan.txt`

if [ $AFGHANISTAN -ne 0 ];
then
  export CATFILE="Afghanistan.txt"
  export CATNAME="Afghanistan"
  $CATEGORIZE
fi

rm Afghanistan.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Afghanistan\n" 
fi