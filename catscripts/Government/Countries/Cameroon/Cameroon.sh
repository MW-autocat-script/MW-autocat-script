#!/bin/bash

egrep -i 'Cameroon' newpages.txt >> Cameroon.txt

CAMEROON=`stat --print=%s Cameroon.txt`

if [ $CAMEROON -ne 0 ];
then
  export CATFILE="Cameroon.txt"
  export CATNAME="Cameroon"
  $CATEGORIZE
fi

rm Cameroon.txt