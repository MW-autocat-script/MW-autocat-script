#!/bin/bash
#Script for the children's cartoon Danny Phantom
egrep -i 'Danny Phantom|dannyphantom' newpages.txt >> DannyPhantom.txt

DANNYPHANTOM=`stat --print=%s DannyPhantom.txt`

if [ $DANNYPHANTOM -ne 0 ];
then
  export CATFILE="DannyPhantom.txt"
  export CATNAME="Danny Phantom"
  ./catscripts/Categorize.sh
fi


rm DannyPhantom.txt