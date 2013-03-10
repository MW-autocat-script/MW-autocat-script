#!/bin/bash

egrep -i 'Buddhism|Buddhist|Buddha|Dalai Lama|Bodhi' newpages.txt | egrep -iv 'Bodhi Linux' >> Buddhism.txt

BUDDHISM=`stat --print=%s Buddhism.txt`

if [ $BUDDHISM -ne 0 ];
then
  export CATFIlE="Buddhism.txt"
  export CATNAME="Buddhism"
  ./catscripts/Categorize.sh
fi

rm Buddhism.txt