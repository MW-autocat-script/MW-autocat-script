#!/bin/bash

egrep -i 'The Bible' newpages.txt >> TheBible.txt

BIBLE=`stat --print=%s TheBible.txt`

if [ $BIBLE -ne 0 ];
then
  export CATFILE="TheBible.txt"
  export CATNAME="The Bible"
  ./catscripts/Categoroze.sh
fi

rm TheBible.txt