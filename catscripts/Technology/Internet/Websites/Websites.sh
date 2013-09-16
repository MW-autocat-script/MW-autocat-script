#!/bin/bash

egrep -i 'You(| )Tube' newpages.txt >> YouTube.txt
egrep -i '\bWikia\b' newpages.txt | egrep -iv 'Wikia Search'  >> Wikia.txt
egrep -i '\bWikianswers\b|wiki answers' newpages.txt >> Wikianswers.txt
egrep -i 'Wikipedia' newpages.txt >> Wikipedia.txt

YOUTUBE=`stat --print=%s YouTube.txt`
WIKIA=`stat --print=%s Wikia.txt`
WIKIANSWERS=`stat --print=%s Wikianswers.txt`
WIKIPEDIA=`stat --print=%s Wikipedia.txt`


if [ $YOUTUBE -ne 0 ];
then
   export CATFILE="YouTube.txt"
   export CATNAME="YouTube"
   $CATEGORIZE
fi

if [ $WIKIA -ne 0 ];
then
   export CATFILE="Wikia.txt"
   export CATNAME="Wikia"
   $CATEGORIZE
fi

if [ $WIKIANSWERS -ne 0 ];
then
   export CATFILE="Wikianswers.txt"
   export CATNAME="Wikianswers"
   $CATEGORIZE
fi

if [ $WIKIPEDIA -ne 0 ];
then
  export CATFILE="Wikipedia.txt"
  export CATNAME="Wikipedia"
  $CATEGORIZE
fi

rm YouTube.txt
rm Google.txt
rm Wikia.txt
rm Wikianswers.txt
rm Wikipedia.txt

CURRENTDIR="./catscripts/Technology/Internet/Websites"

$CURRENTDIR/Social_networking/Socialnetworking.sh
$CURRENTDIR/Search_engines/Searchengines.sh