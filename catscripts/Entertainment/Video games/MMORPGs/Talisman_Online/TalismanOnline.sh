#!/bin/bash

cat newpages.txt | egrep -i 'Talisman Online' >> TalismanOnline.txt

TALISMAN=`stat --print=%s TalismanOnline.txt`

if [ $TALISMAN -ne 0 ];
then
  export CATFILE="TalismanOnline.txt"
  export CATNAME="Talisman Online"
  ./catscripts/Categorize.sh
fi

rm TalismanOnline.txt