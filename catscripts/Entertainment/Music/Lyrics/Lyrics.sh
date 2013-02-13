#!/bin/bash

egrep -i 'lyrics|lyric\b' newpages.txt >> Lyrics.txt

LYRICS=`stat --print=%s Lyrics.txt`

if [ $LYRICS -ne 0 ];
then
  export CATFILE="Lyrics.txt"
  export CATNAME="Lyrics"
  ./catscripts/Categorize.sh
fi

rm Lyrics.txt