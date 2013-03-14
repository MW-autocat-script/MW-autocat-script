#!/bin/bash
egrep -i 'Yamask' newpages.txt >> Yamask.txt
egrep -i '\bYanma\b' newpages.txt >> Yanma.txt
egrep -i 'Yanmega' newpages.txt >> Yanmega.txt

Yamask=`stat --print=%s Yamask.txt`
Yanma=`stat --print=%s Yanma.txt`
Yanmega=`stat --print=%s Yanmega.txt`

if [ $Yamask -ne 0 ];
then
  export CATFILE="Yamask.txt"
  export CATNAME="Yamask"
  $CATEGORIZE
fi

if [ $Yanma -ne 0 ];
then
  export CATFILE="Yanma.txt"
  export CATNAME="Yanma"
  $CATEGORIZE
fi

if [ $Yanmega -ne 0 ];
then
  export CATFILE="Yanmega.txt"
  export CATNAME="Yanmega"
  $CATEGORIZE
fi


rm Yamask.txt
rm Yanma.txt
rm Yanmega.txt
