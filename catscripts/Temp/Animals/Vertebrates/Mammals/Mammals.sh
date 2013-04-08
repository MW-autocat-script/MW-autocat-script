#!/bin/bash

CURRENTDIR="./catscripts/Temp/Animals/Vertebrates/Mammals"

egrep -i 'mammal' newpages.txt | egrep -iv 'Dolphin' >> Mammals.txt

MAMMALS=`stat --print=%s Mammals.txt`

if [ $MAMMALS -ne 0 ];
then
  export CATFILE="Mammals.txt"
  export CATNAME="Mammals"
  $CATEGORIZE
fi

rm Mammals.txt

$CURRENTDIR/Dolphins/Dolphins.sh