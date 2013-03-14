#!/bin/bash

egrep -i 'Hinduism' newpages.txt >> Hinduism.txt

HINDUISM=`stat --print=%s Hinduism.txt`

if [ $HINDUISM -ne 0 ];
then
  export CATFILE="Hinduism.txt"
  export CATNAME="Hinduism"
  ./catscripts/Categorize.sh
fi

rm Hinduism.txt