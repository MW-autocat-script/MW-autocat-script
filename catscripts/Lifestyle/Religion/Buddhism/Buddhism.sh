#!/bin/bash

egrep -i 'Buddhism|Buddha|Dalai Lama' newpages.txt >> Buddhism.txt

BUDDHISM=`stat --print=%s Buddhism.txt`

if [ $BUDDHISM -ne 0 ];
then
  export CATFIlE="Buddhism.txt"
  export CATNAME="Buddhism"
  ./catscripts/Categorize.sh
fi

rm Buddhism.txt