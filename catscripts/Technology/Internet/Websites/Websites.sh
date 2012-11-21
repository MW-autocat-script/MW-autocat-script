#!/bin/bash

cat newpages.txt | egrep -i 'YouTube' >> YouTube.txt
cat newpages.txt | egrep -i 'You Tube' >> YouTube.txt

cat newpages.txt | egrep -i 'Twitter' >> Twitter.txt

cat newpages.txt | egrep -i 'Facebook' >> Facebook.txt
cat newpages.txt | egrep -i 'Face book' >> Facebook.txt

cat newpages.txt | egrep -i 'Myspace' >> Myspace.txt

cat newpages.txt | egrep -i 'Gaia Online' >> GaiaOnline.txt

cat newpages.txt | egrep -i 'Google' | egrep -iv 'Google Chrome' >> Google.txt

cat newpages.txt | egrep -i '\bWikia\b' | egrep -iv 'Wikia Search'  >> Wikia.txt
cat newpages.txt | egrep -i 'Wikia Search' >> WikiaSearch.txt

cat newpages.txt | egrep -i '\bWikianswers\b|wiki answers' >> Wikianswers.txt

YOUTUBE=`stat --print=%s YouTube.txt`
TWITTER=`stat --print=%s Twitter.txt`
FACEBOOK=`stat --print=%s Facebook.txt`
MYSPACE=`stat --print=%s Myspace.txt`
GAIAONLINE=`stat --print=%s GaiaOnline.txt`
GOOGLE=`stat --print=%s Google.txt`
WIKIA=`stat --print=%s Wikia.txt`
WIKIANSWERS=`stat --print=%s Wikianswers.txt`
WIKIASEARCH=`stat --print=%s WikiaSearch.txt`


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

rm YouTube.txt
rm Twitter.txt
rm Facebook.txt
rm Myspace.txt
rm GaiaOnline.txt
rm Google.txt
rm Wikia.txt
rm Wikianswers.txt
rm WikiaSearch.txt