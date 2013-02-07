#!/bin/bash

egrep -i 'Australia' newpages.txt | egrep -iv 'Canberra|Sydney' >> Australia.txt

AUSTRALIA=`stat --print=%s Australia.txt`

if [ $AUSTRALIA -ne 0 ];
then
  export CATFILE="Australia.txt"
  export CATNAME="Australia"
  ./catscripts/Categorize.sh
fi

./catscripts/Government/Countries/Australia/Canberra/Canberra.sh
./catscripts/Government/Countries/Australia/Sydney/Sydney.sh