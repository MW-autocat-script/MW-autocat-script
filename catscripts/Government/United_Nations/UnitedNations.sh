#!/bin/bash

egrep -i 'United Nations|^U\.N(|\.)| U\.N(|\.) ' newpages.txt > UnitedNations.txt

UNITED=`stat --print=%s UnitedNations.txt`

if [ $UNITED -ne 0 ];
then
  export CATFILE="UnitedNations.txt"
  export CATNAME="United Nations"
  $CATEGORIZE
fi

rm UnitedNations.txt