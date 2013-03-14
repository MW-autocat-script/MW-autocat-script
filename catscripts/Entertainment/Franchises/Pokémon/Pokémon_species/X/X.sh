#!/bin/bash
egrep -i 'Xatu' newpages.txt >> Xatu.txt

Xatu=`stat --print=%s Xatu.txt`

if [ $Xatu -ne 0 ];
then
  export CATFILE="Xatu.txt"
  export CATNAME="Xatu"
  $CATEGORIZE
fi

rm Xatu.txt
