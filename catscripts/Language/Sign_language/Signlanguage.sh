#!/bin/bash

egrep -i 'Sign(| )language' newpages.txt > Signlanguage.txt

SIGN=`stat --print=%s Signlanguage.txt`

if [ $SIGN -ne 0 ];
then
  export CATFILE="Signlanguage.txt"
  export CATNAME="Sign language"
  ./catscripts/Categorize.sh
fi

rm Signlanguage.txt