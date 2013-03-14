#!/bin/bash
egrep -i 'telephone|\bphone|caller ID|call waiting|busy signal' newpages.txt | egrep -iv 'cell(|ullar)(| )phone|mobile (|tele)phone|\bi phone|Nokia' >> Telephones.txt
egrep -i 'cell(|ular)(| )phone|mobile phone|SIM card|\b(2|3|4)G\b|GPRS' newpages.txt | egrep -iv 'i(| )phone|iPod|Nokia' >> Cellphones.txt
egrep -i 'i(| )phone' newpages.txt >> iPhones.txt
egrep -i 'Nokia' newpages.txt >> Nokia.txt

TELEPHONES=`stat --print=%s Telephones.txt`
CELLPHONES=`stat --print=%s Cellphones.txt`
IPHONES=`stat --print=%s iPhones.txt`
NOKIA=`stat --print=%s Nokia.txt`

if [ $TELEPHONES -ne 0 ];
then
  export CATFILE="Telephones.txt"
  export CATNAME="Telephones"
  $CATEGORIZE
fi

if [ $CELLPHONES -ne 0 ];
then
  export CATFILE="Cellphones.txt"
  export CATNAME="Cellphones"
  $CATEGORIZE
fi

if [ $IPHONES -ne 0 ];
then
  export CATFILE="iPhones.txt"
  export CATNAME="iPhone"
  $CATEGORIZE
fi

if [ $NOKIA -ne 0 ];
then
  export CATFILE="Nokia.txt"
  export CATNAME="Nokia"
  $CATEGORIZE
fi

rm Telephones.txt
rm Cellphones.txt
rm iPhones.txt
rm Nokia.txt