#!/bin/bash

egrep -i 'Studyladder|Study ladder|study lader|studdy ladder|studdyladder' newpages.txt > Studyladder.txt

STUDYLADDER=`stat --print=%s Studyladder.txt`

if [ $STUDYLADDER -ne 0 ];
then
  export CATFILE="Studyladder.txt"
  export CATNAME="Studyladder"
  ./catscripts/Categorize.sh
fi

rm Studyladder.txt