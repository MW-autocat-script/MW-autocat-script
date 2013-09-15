#!/bin/bash

CURRENTDIR="./catscripts/Technology/Internet/Websites/Social_networking"

. $CURRENTDIR/Facebook.sh
. $CURRENTDIR/GaiaOnline.sh
. $CURRENTDIR/Myspace.sh
. $CURRENTDIR/Twitter.sh
. $CURRENTDIR/Woozworld.sh

KEYWORDS_SOCIALNETWORKING="Social(| )network|social(| )media"
KEYWORDS_SOCIALNETWORKING_EXCLUDE="$KEYWORDS_FACEBOOK|$KEYWORDS_GAIAONLINE|$KEYWORDS_MYSPACE|$KEYWORDS_TWITTER|$KEYWORDS_WOOZWORLD"

egrep -i "$KEYWORDS_SOCIALNETWORKING" newpages.txt | egrep -iv "$KEYWORDS_SOCIALNETWORKING_EXCLUDE" >> Socialnetworking.txt

SOCIALNETWORK=`stat --print=%s Socialnetworking.txt`

if [ $SOCIALNETWORK -ne 0 ];
then
  export CATFILE="Socialnetworking.txt"
  export CATNAME="Social networking websites"
  $CATEGORIZE
fi

rm Socialnetworking.txt