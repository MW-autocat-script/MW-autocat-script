#!/bin/bash

egrep -i 'The Beatles' newpages.txt | egrep -iv 'Paul McCartney|John Lennon' > TheBeatles.txt

BEATLES=`stat --print=%s TheBeatles.txt`

if [ $BEATLES -ne 0 ];
then
  export CATFILE="TheBeatles.txt"
  export CATNAME="The Beatles"
  ./catscripts/Categorize/sh
fi

rm TheBeatles.txt