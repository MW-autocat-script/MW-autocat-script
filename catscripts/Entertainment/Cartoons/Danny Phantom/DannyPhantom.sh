#!/bin/bash

cat newpages.txt | egrep -i 'Danny Phantom|dannyphantom' >> DannyPhantom.txt

DANNYPHANTOM=`stat --print=%s DannyPhantom.txt`

if [ $DANNYPHANTOM -ne 0 ];
then
  export CATFILE="DannyPhantom.txt"
  export CATNAME="Danny Phantom"
  ./catscripts/Categorize.sh
fi


rm DannyPhantom.txt