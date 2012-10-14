#!/bin/bash
cat newpages.txt | egrep -i 'Xatu' >> Xatu.txt

Xatu=`stat --print=%s Xatu.txt`

if [ $Xatu -ne 0 ];
then
  export CATFILE="Xatu.txt"
  export CATNAME="Xatu"
  ./catscripts/Categorize.sh
fi

rm Xatu.txt
