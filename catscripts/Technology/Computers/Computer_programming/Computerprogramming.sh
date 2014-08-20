#!/bin/bash

PROGRAMMINGDIR="./catscripts/Technology/Computers/Computer_programming"
KEYWORDS_COMPUTERPROGRAMMING="Computer(| )programming|Cygwin|\bMSYS\b|MATLAB"

if [ "$1" == "" ];
then

  debug_start "Computer programming"

  . $PROGRAMMINGDIR/C++_programming/C++.sh #KEYWORDS_CPLUSPLUS_ALL
  . $PROGRAMMINGDIR/SQL/SQL.sh #KEYWORDS_SQL_ALL

  KEYWORDS_COMPUTERPROGRAMMING_EXCLUDE="$KEYWORDS_CPLUSPLUS_ALL|$KEYWORDS_SQL_ALL"

  PROGRAMMING=$(egrep -i "$KEYWORDS_COMPUTERPROGRAMMING" "$NEWPAGES" | egrep -iv "$KEYWORDS_COMPUTERPROGRAMMING_EXCLUDE")

  if [ "$PROGRAMMING" != "" ];
  then
    printf "%s" "$PROGRAMMING" > Computerprogramming.txt
    export CATFILE="Computerprogramming.txt"
    export CATNAME="Computer programming"
    $CATEGORIZE
    rm Computerprogramming.txt
    unset PROGRAMMING
  fi

  debug_end "Computer programming"

fi