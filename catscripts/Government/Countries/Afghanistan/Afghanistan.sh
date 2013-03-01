#!/bin/bash

egrep -i 'Afghani(|stan)' newpages.txt | egrep -iv 'Afghanistan War|war in Afghanistan' >> Afghanistan.txt

AFGHANISTAN=`stat --print=%s Afghanistan.txt`

if [ $AFGHANISTAN -ne 0 ];
then
  export CATFILE="Afghanistan.txt"
  export CATNAME="Afghanistan"
  ./catscripts/Categorize.sh
fi

rm Afghanistan.txt
