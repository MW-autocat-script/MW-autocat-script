#!/bin/bash

cat newpages.txt | egrep -i 'Eve(| )Online' >> EveOnline.txt

EVE=`stat --print=%s EveOnline.txt`

if [ $EVE -ne 0 ];
then
  export CATFILE="EveOnline.txt"
  export CATNAME="Eve Online"
  ./catscripts/Categorize.sh
fi

rm EveOnline.txt