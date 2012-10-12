#!/bin/bash

cat newpages.txt | egrep -i 'Danny Phantom|dannyphantom' >> DannyPhantom.txt

DANNYPHANTOM=`stat --print=%s DannyPhantom.txt`

if [ $DANNYPHANTOM -ne 0 ];
then
  ./catscripts/Entertainment/Cartoons/Danny\ Phantom/catDannyPhantom.sh
fi


rm DannyPhantom.txt