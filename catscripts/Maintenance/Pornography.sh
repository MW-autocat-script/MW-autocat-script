#!/bin/bash

cat newpages.txt | egrep -i 'porn|hentai|lolicon|sex.+videos|videos.+sex' >> Pornography.txt

PORN=`stat --print=%s Pornography.txt`

if [ $PORN -ne 0 ];
then
  export CATFILE="Pornography.txt"
  export CATNAME="Pornography"
  ./catscripts/Categorize.sh
fi

rm Pornography.txt