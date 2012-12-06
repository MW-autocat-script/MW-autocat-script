#!/bin/bash

cat newpages.txt | egrep -i 'Afghani(|stan)' | egrep -iv 'Afghanistan War|war in Afghanistan' >> Afghanistan.txt

AFGHANISTAN=`stat --print=%s Afghanistan.txt`

if [ $AFGHANISTAN -ne 0 ];
then
  export CATFILE="Afghanistan.txt"
  export CATNAME="Afghanistan"
  ./catscripts/Categorize.sh
fi

rm Afghanistan.txt
