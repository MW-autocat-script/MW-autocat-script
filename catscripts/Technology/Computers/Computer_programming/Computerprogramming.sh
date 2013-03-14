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

CURRENTDIR="./catscripts/Technology/Computers/Computer_programming"

$CURRENTDIR/C++_programming/C++.sh
$CURRENTDIR/SQL/SQL.sh

rm Computerprogramming.txt