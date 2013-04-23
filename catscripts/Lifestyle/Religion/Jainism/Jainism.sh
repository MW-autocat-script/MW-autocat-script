#!/bin/bash

egrep -i 'Jain(|s|ism)\b' newpages.txt >> Jainism.txt

JAINISM=`stat --print=%s Jainism.txt`

if [ $JAINISM -ne 0 ];
then
  export CATFILE="Jainism.txt"
  export CATNAME="Jainism"
  $CATEGORIZE
fi

rm Jainism.txt