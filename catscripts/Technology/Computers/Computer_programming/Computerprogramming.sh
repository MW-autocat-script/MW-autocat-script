#!/bin/bash



PROGRAMMING=`stat --print=%s Computerprogramming.txt`

if [ $PROGRAMMING -ne 0 ];
then
  export CATFILE="Computerprogramming.txt"
  export CATNAME="Computer programming"
  $CATEGORIZE
fi

PROGRAMMINGDIR="./catscripts/Technology/Computers/Computer_programming"

$PROGRAMMINGDIR/C++_programming/C++.sh
$PROGRAMMINGDIR/SQL/SQL.sh

KEYWORDS_COMPUTERPROGRAMMING="Computer(| )programming|Cygwin|\bMSYS\b|MATLAB"
KEYWORDS_COMPUTERPROGRAMMING_EXCLUDE="C\+\+|SQL"

egrep -i $KEYWORDS_COMPUTERPROGRAMMING" newpages.txt | egrep -iv "$KEYWORDS_COMPUTERPROGRAMMING_EXCLUDE" > Computerprogramming.txt

PROGRAMMING=`stat --print=%s Computerprogramming.txt`

if [ $PROGRAMMING -ne 0 ];
then
  export CATFILE="Computerprogramming.txt"
  export CATNAME="Computer programming"
  $CATEGORIZE
fi


rm Computerprogramming.txt