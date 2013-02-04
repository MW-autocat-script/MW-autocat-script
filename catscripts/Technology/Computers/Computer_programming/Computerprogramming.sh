#!/bin/bash

egrep -i 'Computer programming' newpages.txt | egrep -iv 'C\+\+|SQL' > Computerprogramming.txt
egrep -i 'open(|-| )source' newpages.txt | egrep -iv 'C\+\+|SQL' >> Computerprogramming.txt
egrep -i 'Cygwin|\bMSYS\b' newpages.txt | egrep -iv 'C\+\+|SQL' >> Computerprogramming.txt

PROGRAMMING=`stat --print=%s Computerprogramming.txt`

if [ $PROGRAMMING -ne 0 ];
then
  export CATFILE="Computerprogramming.txt"
  export CATNAME="Computer programming"
  ./catscripts/Categorize.sh
fi

./catscripts/Technology/Computers/Computer_programming/C++_programming/C++.sh
./catscripts/Technology/Computers/Computer_programming/SQL/SQL.sh

rm Computerprogramming.txt