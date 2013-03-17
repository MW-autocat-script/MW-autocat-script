#!/bin/bash

egrep -i 'Lesotho' newpages.txt >> Lesotho.txt

LESOTHO=`stat --print=%s Lesotho.txt`

if [ $LESOTHO -ne 0 ];
then
  export CATFILE="Lesotho.txt"
  export CATNAME="Lesotho"
  $CATEGORIZE
fi

rm Lesotho.txt