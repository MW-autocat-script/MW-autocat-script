#!/bin/bash

cat newpages.txt | egrep -i 'i(| )pod' | egrep -iv 'i(| )Pod touch|i(| )Pod nano|i(| )pod shuffle' > iPods.txt
cat newpages.txt | egrep -i 'i(| )pod touch' > iPodtouch.txt
cat newpages.txt | egrep -i 'i(| )pod nano' > iPodnano.txt
cat newpages.txt | egrep -i 'i(| )pod shuffle' >> iPodshuffle.txt

IPODS=`stat --print=%s iPods.txt`
TOUCH=`stat --print=%s iPodtouch.txt`
NANO=`stat --print=%s iPodnano.txt`
SHUFFLE=`stat --print=%s iPodshuffle.txt`

if [ $IPODS -ne 0 ];
then
  export CATFILE="iPods.txt"
  export CATNAME="iPods"
  ./catscripts/Categorize.sh
fi

if [ $TOUCH -ne 0 ];
then
  export CATFILE="iPodtouch.txt"
  export CATNAME="iPod touch"
  ./catscripts/Categorize.sh
fi

if [ $NANO -ne 0 ];
then
  export CATFILE="iPodnano.txt"
  export CATNAME="iPod nano"
  ./catscripts/Categorize.sh
fi

if [ $SHUFFLE -ne 0 ];
then
  export CATFILE="iPodshuffle.txt"
  export CATNAME="iPod shuffle"
  ./catscripts/Categorize.sh
fi

rm iPods.txt
rm iPodtouch.txt
rm iPodnano.txt
rm iPodshuffle.txt