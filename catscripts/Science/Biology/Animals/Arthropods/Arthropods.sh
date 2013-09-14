#!/bin/bash

CURRENTDIR="./catscripts/Science/Biology/Animals/Arthropods"

egrep -i 'arthropod' newpages.txt | egrep -iv 'arachnid|\bant(|s)\b' >> Arthropods.txt

ARTHROPODS=`stat --print=%s Arthropods.txt`

if [ $ARTHROPODS -ne 0 ];
then
  export CATFILE="Arthropods.txt"
  export CATNAME="Arthropods"
  $CATEGORIZE
fi

rm Arthropods.txt

$CURRENTDIR/Arachnids/Arachnids.sh
$CURRENTDIR/Insects/Insects.sh