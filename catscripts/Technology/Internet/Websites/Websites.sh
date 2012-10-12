#!/bin/bash

cat newpages.txt | egrep -i 'YouTube' >> YouTube.txt
cat newpages.txt | egrep -i 'You Tube' >> YouTube.txt

cat newpages.txt | egrep -i 'Twitter' >> Twitter.txt

cat newpages.txt | egrep -i 'Facebook' >> Facebook.txt
cat newpages.txt | egrep -i 'Face book' >> Facebook.txt

cat newpages.txt | egrep -i 'Myspace' >> Myspace.txt

cat newpages.txt | egrep -i 'Gaia Online' >> GaiaOnline.txt

cat newpages.txt | egrep -i 'Google' | egrep -iv 'Google Chrome' >> Google.txt

cat newpages.txt | egrep -i '\bWikia\b' >> Wikia.txt

cat newpages.txt | egrep -i '\bWikianswers\b|wiki answers' >> Wikianswers.txt

YOUTUBE=`stat --print=%s YouTube.txt`
TWITTER=`stat --print=%s Twitter.txt`
FACEBOOK=`stat --print=%s Facebook.txt`
MYSPACE=`stat --print=%s Myspace.txt`
GAIAONLINE=`stat --print=%s GaiaOnline.txt`
GOOGLE=`stat --print=%s Google.txt`
WIKIA=`stat --print=%s Wikia.txt`
WIKIANSWERS=`stat --print=%s Wikianswers.txt`


if [ $YOUTUBE -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catYouTube.sh
fi

if [ $TWITTER -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catTwitter.sh
fi

if [ $FACEBOOK -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catFacebook.sh
fi

if [ $MYSPACE -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catMyspace.sh
fi

if [ $GAIAONLINE -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catGaiaOnline.sh
fi

if [ $GOOGLE -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catGoogle.sh
fi

if [ $WIKIA -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catWikia.sh
fi

if [ $WIKIANSWERS -ne 0 ];
then
  ./catscripts/Technology/Internet/Websites/catWikianswers.sh
fi

rm YouTube.txt
rm Twitter.txt
rm Facebook.txt
rm Myspace.txt
rm GaiaOnline.txt
rm Google.txt
rm Wikia.txt
rm Wikianswers.txt