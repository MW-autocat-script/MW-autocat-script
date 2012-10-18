#!/bin/bash

cat newpages.txt | egrep -i 'Cello\b' >> Cello.txt
cat newpages.txt | egrep -i 'Clarinet' >> Clarinet.txt
cat newpages.txt | egrep -i '\bDrums' >> Drums.txt
cat newpages.txt | egrep -i '\bFlute' >> Flute.txt
cat newpages.txt | egrep -i 'Guitar' | egrep -iv 'hero' >> Guitar.txt
cat newpages.txt | egrep -i 'Piano' >> Piano.txt
cat newpages.txt | egrep -i 'on a recorder|on the recorder\]\]|for recorder\]\]|notes.+recorder|recorder.+notes' >> Recorder.txt
cat newpages.txt | egrep -i 'Saxophone' >> Saxophone.txt
cat newpages.txt | egrep -i 'Violin' >> Violin.txt

CELLO=`stat --print=%s Cello.txt`
CLARINET=`stat --print=%s Clarinet.txt`
DRUMS=`stat --print=%s Drums.txt`
FLUTE=`stat --print=%s Flute.txt`
GUITAR=`stat --print=%s Guitar.txt`
PIANO=`stat --print=%s Piano.txt`
RECORDER=`stat --print=%s Recorder.txt`
SAXOPHONE=`stat --print=%s Saxophone.txt`
VIOLIN=`stat --print=%s Violin.txt`

if [ $CELLO -ne 0 ];
then
  export CATFILE="Cello.txt"
  export CATNAME="Cello"
  ./catscripts/Categorize.sh
fi

if [ $CLARINET -ne 0 ];
then
  export CATFILE="Clarinet.txt"
  export CATNAME="Clarinet"
  ./catscripts/Categorize.sh
fi

if [ $DRUMS -ne 0 ];
then
  export CATFILE="Drums.txt"
  export CATNAME="Drums"
  ./catscripts/Categorize.sh
fi

if [ $FLUTE -ne 0 ];
then
  export CATFILE="Flute.txt"
  export CATNAME="Flute"
  ./catscripts/Categorize.sh
fi

if [ $GUITAR -ne 0 ];
then
  export CATFILE="Guitar.txt"
  export CATNAME="Guitar"
  ./catscripts/Categorize.sh
fi

if [ $PIANO -ne 0 ];
then
  export CATFILE="Piano.txt"
  export CATNAME="Piano"
  ./catscripts/Categorize.sh
fi

if [ $RECORDER -ne 0 ];
then
  export CATFILE="Recorder.txt"
  export CATNAME="Recorder (musical instrument)"
  ./catscripts/Categorize.sh
fi

if [ $SAXOPHONE -ne 0 ];
then
  export CATFILE="Saxophone.txt"
  export CATNAME="Saxophone"
  ./catscripts/Categorize.sh
fi

if [ $VIOLIN -ne 0 ];
then
  export CATFILE="Violin.txt"
  export CATNAME="Violin"
  ./catscripts/Categorize.sh
fi

rm Cello.txt
rm Clarinet.txt
rm Drums.txt
rm Flute.txt
rm Guitar.txt
rm Piano.txt
rm Recorder.txt
rm Saxophone.txt
rm Violin.txt