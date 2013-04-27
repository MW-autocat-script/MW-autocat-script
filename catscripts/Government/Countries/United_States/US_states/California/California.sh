#!/bin/bash

egrep -i 'California' newpages.txt | egrep -iv 'Los(| )Angeles|Sacramento|San(| )Diego|San(| )Francisco' >> California.txt
egrep -i 'Los(| )Angeles' newpages.txt >> LosAngeles.txt
egrep -i 'Sacramento' newpages.txt >> Sacramento.txt
egrep -i 'San(| )Diego' newpages.txt >> SanDiego.txt
egrep -i 'San(| )Francisco' newpages.txt >> SanFrancisco.txt

CALIFORNIA=`stat --print=%s California.txt`
LOSANGELES=`stat --print=%s LosAngeles.txt`
SACRAMENTO=`stat --print=%s Sacramento.txt`
SANDIEGO=`stat --print=%s SanDiego.txt`
SANFRANCISCO=`stat --print=%s SanFrancisco.txt`

if [ $CALIFORNIA -ne 0 ];
then
  export CATFILE="California.txt"
  export CATNAME="California"
  $CATEGORIZE
fi

if [ $LOSANGELES -ne 0 ];
then
  export CATFILE="LosAngeles.txt"
  export CATNAME="Los Angeles"
  $CATEGORIZE
fi

if [ $SACRAMENTO -ne 0 ];
then
  export CATFILE="Sacramento.txt"
  export CATNAME="Sacramento"
  $CATEGORIZE
fi

if [ $SANDIEGO -ne 0 ];
then
  export CATFILE="SanDiego.txt"
  export CATNAME="San Diego"
  $CATEGORIZE
fi

if [ $SANFRANCISCO -ne 0 ];
then
  export CATFILE="SanFrancisco.txt"
  export CATNAME="San Francisco"
  $CATEGORIZE
fi

rm California.txt
rm LosAngeles.txt
rm Sacramento.txt
rm SanDiego.txt
rm SanFrancisco.txt

