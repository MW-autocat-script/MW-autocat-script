#!/bin/bash

KEYWORDS_COMPUTER_SECURITY="Computer(| )Security|\bhack|CompSec"

egrep -i "$KEYWORDS_COMPUTER_SECURITY" newpages.txt >> ComputerSecurity.txt

SECURITY=`stat --print=%s ComputerSecurity.txt`

if [ $SECURITY -ne 0 ];
then
  export CATFILE="ComputerSecurity.txt"
  export CATNAME="Computer security"
  $CATEGORIZE
fi

rm ComputerSecurity.txt