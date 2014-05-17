#!/bin/bash

egrep -i 'Hungary' newpages.txt | egrep -iv 'Austria( |-)Hungary' >> Hungary.txt

HUNGARY=$(stat --print=%s Hungary.txt)

if [ $HUNGARY -ne 0 ];
then
  export CATFILE="Hungary.txt"
  export CATNAME="Hungary"
  $CATEGORIZE
fi

rm Hungary.txt