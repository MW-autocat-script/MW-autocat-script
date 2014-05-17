#!/bin/bash

egrep -i '\bi(| )pod' newpages.txt | egrep -iv 'i(| )Pod touch|i(| )Pod nano|i(| )pod shuffle' > iPods.txt
egrep -i 'i(| )pod touch' newpages.txt > iPodtouch.txt
egrep -i 'i(| )pod nano' newpages.txt > iPodnano.txt
egrep -i 'i(| )pod shuffle' newpages.txt >> iPodshuffle.txt

IPODS=$(stat --print=%s iPods.txt)
TOUCH=$(stat --print=%s iPodtouch.txt)
NANO=$(stat --print=%s iPodnano.txt)
SHUFFLE=$(stat --print=%s iPodshuffle.txt)

if [ $IPODS -ne 0 ];
then
  export CATFILE="iPods.txt"
  export CATNAME="iPods"
  $CATEGORIZE
fi

if [ $TOUCH -ne 0 ];
then
  export CATFILE="iPodtouch.txt"
  export CATNAME="iPod touch"
  $CATEGORIZE
fi

if [ $NANO -ne 0 ];
then
  export CATFILE="iPodnano.txt"
  export CATNAME="iPod nano"
  $CATEGORIZE
fi

if [ $SHUFFLE -ne 0 ];
then
  export CATFILE="iPodshuffle.txt"
  export CATNAME="iPod shuffle"
  $CATEGORIZE
fi

rm iPods.txt
rm iPodtouch.txt
rm iPodnano.txt
rm iPodshuffle.txt