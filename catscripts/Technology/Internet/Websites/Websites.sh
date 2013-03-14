#!/bin/bash

egrep -i 'You(| )Tube' newpages.txt >> YouTube.txt
egrep -i 'Twitter' newpages.txt >> Twitter.txt
egrep -i 'Face(| )book' newpages.txt >> Facebook.txt
egrep -i 'Myspace' newpages.txt >> Myspace.txt
egrep -i 'Gaia(| )Online' newpages.txt >> GaiaOnline.txt
egrep -i 'Google' newpages.txt | egrep -iv 'Google Chrome' >> Google.txt
egrep -i '\bWikia\b' newpages.txt | egrep -iv 'Wikia Search'  >> Wikia.txt
egrep -i 'Wikia Search' newpages.txt >> WikiaSearch.txt
egrep -i '\bWikianswers\b|wiki answers' newpages.txt >> Wikianswers.txt
egrep -i 'Wikipedia' newpages.txt >> Wikipedia.txt

YOUTUBE=`stat --print=%s YouTube.txt`
TWITTER=`stat --print=%s Twitter.txt`
FACEBOOK=`stat --print=%s Facebook.txt`
MYSPACE=`stat --print=%s Myspace.txt`
GAIAONLINE=`stat --print=%s GaiaOnline.txt`
GOOGLE=`stat --print=%s Google.txt`
WIKIA=`stat --print=%s Wikia.txt`
WIKIANSWERS=`stat --print=%s Wikianswers.txt`
WIKIASEARCH=`stat --print=%s WikiaSearch.txt`
WIKIPEDIA=`stat --print=%s Wikipedia.txt`


if [ $YOUTUBE -ne 0 ];
then
   export CATFILE="YouTube.txt"
   export CATNAME="YouTube"
   ./catscripts/Categorize.sh
fi

if [ $TWITTER -ne 0 ];
then
   export CATFILE="Twitter.txt"
   export CATNAME="Twitter"
   ./catscripts/Categorize.sh
fi

if [ $FACEBOOK -ne 0 ];
then
   export CATFILE="Facebook.txt"
   export CATNAME="Facebook"
   ./catscripts/Categorize.sh
fi

if [ $MYSPACE -ne 0 ];
then
   export CATFILE="Myspace.txt"
   export CATNAME="Myspace"
   ./catscripts/Categorize.sh
fi

if [ $GAIAONLINE -ne 0 ];
then
   export CATFILE="GaiaOnline.txt"
   export CATNAME="Gaia Online"
   ./catscripts/Categorize.sh
fi

if [ $GOOGLE -ne 0 ];
then
   export CATFILE="Google.txt"
   export CATNAME="Google"
   ./catscripts/Categorize.sh
fi

if [ $WIKIA -ne 0 ];
then
   export CATFILE="Wikia.txt"
   export CATNAME="Wikia"
   ./catscripts/Categorize.sh
fi

if [ $WIKIANSWERS -ne 0 ];
then
   export CATFILE="Wikianswers.txt"
   export CATNAME="Wikianswers"
   ./catscripts/Categorize.sh
fi

if [ $WIKIASEARCH -ne 0 ];
then
  export CATFILE="WikiaSearch.txt"
  export CATNAME="Wikia Search"
  ./catscripts/Categorize.sh
fi

if [ $WIKIPEDIA -ne 0 ];
then
  export CATFILE="Wikipedia.txt"
  export CATNAME="Wikipedia"
  ./catscripts/Categorize.sh
fi

rm YouTube.txt
rm Twitter.txt
rm Facebook.txt
rm Myspace.txt
rm GaiaOnline.txt
rm Google.txt
rm Wikia.txt
rm Wikianswers.txt
rm WikiaSearch.txt
rm Wikipedia.txt

CURRENTDIR="./catscripts/Technology/Internet/Websites"

$CURRENTDIR/Social_networking/Socialnetworking.sh