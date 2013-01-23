#!/bin/bash

egrep -i 'Computer programming' newpages.txt | egrep -iv 'C\+\+' > Computerprogramming.txt

PROGRAMMING=`stat --print=%s Computerprogramming.txt`

if [ $PROGRAMMING -ne 0 ];
then
  export CATFILE="Computerprogramming.txt"
  export CATNAME="Computer programming"
  ./catscripts/Categorize.sh
fi

./catscripts/Technology/Computers/Computer_programming/C++_programming/C++.sh

rm Computerprogramming.txt