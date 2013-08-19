#!/bin/bash

egrep -i "Christianity|Jesus|Greek Orthodox|Russian Orthodox|Jehovah(|')s Witness" newpages.txt | egrep -iv 'Anglican|Catholic|Church of England|Mormon|pope|Lutheran|Martin Luther|Mormon|Latter(-| )Day(| )(|saint)|Amish|Mennonite|Christmas' >> Christianity.txt
egrep -i 'Anglican|Church of England' newpages.txt >> Anglican.txt
egrep -i 'Catholic|Vatican|\bpope(|s)\b|papal' newpages.txt | egrep -iv 'Alexander Pope' >> Catholicism.txt
egrep -i 'Martin Luther|Lutheran|(95|Ninety-Five) Theses' newpages.txt | egrep -iv 'Martin Luther King' >> Lutheranism.txt
egrep -i 'Mormon|Latter(-| )Day(| )(|saint)' newpages.txt >> Mormonism.txt
egrep -i 'Amish|Mennonite' newpages.txt >> Amish.txt
egrep -i 'Christmas|X-mas|Santa(| )Claus' newpages.txt | egrep -iv "Christmas(| )(Island|Cactus)" >> Christmas.txt

CHRISTIANITY=`stat --print=%s Christianity.txt`
ANGLICAN=`stat --print=%s Anglican.txt`
CATHOLICISM=`stat --print=%s Catholicism.txt`
LUTHERANISM=`stat --print=%s Lutheranism.txt`
MORMONISM=`stat --print=%s Mormonism.txt`
AMISH=`stat --print=%s Amish.txt`
CHRISTMAS=`stat --print=%s Christmas.txt`


if [ $CHRISTIANITY -ne 0 ];
then
  export CATFILE="Christianity.txt"
  export CATNAME="Christianity"
  $CATEGORIZE
fi

if [ $ANGLICAN -ne 0 ];
then
  export CATFILE="Anglican.txt"
  export CATNAME="Anglican"
  $CATEGORIZE
fi

if [ $CATHOLICISM -ne 0 ];
then
  export CATFILE="Catholicism.txt"
  export CATNAME="Catholicism"
  $CATEGORIZE
fi

if [ $LUTHERANISM -ne 0 ];
then
  export CATFILE="Lutheranism.txt"
  export CATNAME="Lutheranism"
  $CATEGORIZE
fi

if [ $MORMONISM -ne 0 ];
then
  export CATFILE="Mormonism.txt"
  export CATNAME="Mormonism"
  $CATEGORIZE
fi

if [ $AMISH -ne 0 ];
then
  export CATFILE="Amish.txt"
  export CATNAME="Amish and Mennonites"
  $CATEGORIZE
fi

if [ $CHRISTMAS -ne 0 ];
then
  export CATFILE="Christmas.txt"
  export CATNAME="Christmas"
  $CATEGORIZE
fi

rm Christianity.txt
rm Anglican.txt
rm Catholicism.txt
rm Lutheranism.txt
rm Mormonism.txt
rm Amish.txt
rm Christmas.txt