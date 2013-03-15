#!/bin/bash

egrep -i 'Alabama' newpages.txt | egrep -iv 'Sweet Home Alabama' >> Alabama.txt

ALABAMA=`stat --print=%s Alabama.txt`

if [ $ALABAMA -ne 0 ];
then
  export CATFILE="Alabama.txt"
  export CATNAME="Alabama"
  $CATEGORIZE
fi

rm Alabama.txt