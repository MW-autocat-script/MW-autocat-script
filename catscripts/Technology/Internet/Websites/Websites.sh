#!/bin/bash

egrep -i 'You(| )Tube' newpages.txt >> YouTube.txt
egrep -i 'Google' newpages.txt | egrep -iv 'Google Chrome' >> Google.txt
egrep -i '\bWikia\b' newpages.txt | egrep -iv 'Wikia Search'  >> Wikia.txt
egrep -i 'Wikia Search' newpages.txt >> WikiaSearch.txt
egrep -i '\bWikianswers\b|wiki answers' newpages.txt >> Wikianswers.txt
egrep -i 'Wikipedia' newpages.txt >> Wikipedia.txt

YOUTUBE=`stat --print=%s YouTube.txt`
GOOGLE=`stat --print=%s Google.txt`
WIKIA=`stat --print=%s Wikia.txt`
WIKIANSWERS=`stat --print=%s Wikianswers.txt`
WIKIASEARCH=`stat --print=%s WikiaSearch.txt`
WIKIPEDIA=`stat --print=%s Wikipedia.txt`


if [ $YOUTUBE -ne 0 ];
then
   export CATFILE="YouTube.txt"
   export CATNAME="YouTube"
   $CATEGORIZE
fi

if [ $GOOGLE -ne 0 ];
then
   export CATFILE="Google.txt"
   export CATNAME="Google"
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

if [ $WIKIASEARCH -ne 0 ];
then
  export CATFILE="WikiaSearch.txt"
  export CATNAME="Wikia Search"
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
rm WikiaSearch.txt
rm Wikipedia.txt

CURRENTDIR="./catscripts/Technology/Internet/Websites"

$CURRENTDIR/Social_networking/Socialnetworking.sh