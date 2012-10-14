#!/bin/bash
cat newpages.txt | egrep -i 'Yamask' >> Yamask.txt
cat newpages.txt | egrep -i '\bYanma\b' >> Yanma.txt
cat newpages.txt | egrep -i 'Yanmega' >> Yanmega.txt

Yamask=`stat --print=%s Yamask.txt`
Yanma=`stat --print=%s Yanma.txt`
Yanmega=`stat --print=%s Yanmega.txt`

if [ $Yamask -ne 0 ];
then
  export CATFILE="Yamask.txt"
  export CATNAME="Yamask"
  ./catscripts/Categorize.sh
fi

if [ $Yanma -ne 0 ];
then
  export CATFILE="Yanma.txt"
  export CATNAME="Yanma"
  ./catscripts/Categorize.sh
fi

if [ $Yanmega -ne 0 ];
then
  export CATFILE="Yanmega.txt"
  export CATNAME="Yanmega"
  ./catscripts/Categorize.sh
fi


rm Yamask.txt
rm Yanma.txt
rm Yanmega.txt
