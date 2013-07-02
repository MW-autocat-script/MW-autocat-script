#!/bin/bash

KEYWORDS_HARP="\bharp(|s)\b"
KEYWORDS_VIOLA="\bViola(|s)\b|Violist"
KEYWORDS_XYLOPHONE="Xylophon(e|ist)"

egrep -i 'Cello\b' newpages.txt | egrep -iv 'Monticello|Nontecello' >> Cello.txt
egrep -i 'Clarinet' newpages.txt >> Clarinet.txt
egrep -i 'Drum|\bBongo' newpages.txt | egrep -iv 'ear(| )drums|brake|chicken|turkey' >> Drums.txt
egrep -i '\bFlute(s|)' newpages.txt | egrep -iv 'azure flute|Pok(e|é)(| )flute|Pokémon|Pokemon|azelf flute' >> Flute.txt
egrep -i 'Guitar' newpages.txt | egrep -iv 'hero' >> Guitar.txt
egrep -i "$KEYWORDS_HARP" newpages.txt | egrep -iv "harp seal">> Harp.txt
egrep -i 'Piano' newpages.txt >> Piano.txt
egrep -i 'on a recorder|on the recorder\]\]|for recorder\]\]|notes.+recorder|recorder.+notes' newpages.txt >> Recorder.txt
egrep -i 'Saxophone' newpages.txt >> Saxophone.txt
egrep -i 'Violin' newpages.txt >> Violin.txt
egrep -i "$KEYWORDS_VIOLA" newpages.txt >> Viola.txt
egrep -i "$KEYWORDS_XYLOPHONE" newpages.txt >> Xylophone.txt

CELLO=`stat --print=%s Cello.txt`
CLARINET=`stat --print=%s Clarinet.txt`
DRUMS=`stat --print=%s Drums.txt`
FLUTE=`stat --print=%s Flute.txt`
GUITAR=`stat --print=%s Guitar.txt`
HARP=`stat --print=%s Harp.txt`
PIANO=`stat --print=%s Piano.txt`
RECORDER=`stat --print=%s Recorder.txt`
SAXOPHONE=`stat --print=%s Saxophone.txt`
VIOLIN=`stat --print=%s Violin.txt`
VIOLA=`stat --print=%s Viola.txt`
XYLOPHONE=`stat --print=%s Xylophone.txt`

if [ $CELLO -ne 0 ];
then
  export CATFILE="Cello.txt"
  export CATNAME="Cello"
  $CATEGORIZE
fi

if [ $CLARINET -ne 0 ];
then
  export CATFILE="Clarinet.txt"
  export CATNAME="Clarinet"
  $CATEGORIZE
fi

if [ $DRUMS -ne 0 ];
then
  export CATFILE="Drums.txt"
  export CATNAME="Drums"
  $CATEGORIZE
fi

if [ $FLUTE -ne 0 ];
then
  export CATFILE="Flute.txt"
  export CATNAME="Flute"
  $CATEGORIZE
fi

if [ $GUITAR -ne 0 ];
then
  export CATFILE="Guitar.txt"
  export CATNAME="Guitar"
  $CATEGORIZE
fi

if [ $HARP -ne 0 ];
then
  export CATFILE="Harp.txt"
  export CATNAME="Harp"
  $CATEGORIZE
fi

if [ $PIANO -ne 0 ];
then
  export CATFILE="Piano.txt"
  export CATNAME="Piano"
  $CATEGORIZE
fi

if [ $RECORDER -ne 0 ];
then
  export CATFILE="Recorder.txt"
  export CATNAME="Recorder (musical instrument)"
  $CATEGORIZE
fi

if [ $SAXOPHONE -ne 0 ];
then
  export CATFILE="Saxophone.txt"
  export CATNAME="Saxophone"
  $CATEGORIZE
fi

if [ $VIOLIN -ne 0 ];
then
  export CATFILE="Violin.txt"
  export CATNAME="Violin"
  $CATEGORIZE
fi

if [ $VIOLA -ne 0 ];
then
  export CATFILE="Viola.txt"
  export CATNAME="Viola"
  $CATEGORIZE
fi

if [ $XYLOPHONE -ne 0 ];
then
  export CATFILE="Xylophone.txt"
  export CATNAME="Xylophone"
  $CATEGORIZE
fi

rm Cello.txt
rm Clarinet.txt
rm Drums.txt
rm Flute.txt
rm Guitar.txt
rm Harp.txt
rm Piano.txt
rm Recorder.txt
rm Saxophone.txt
rm Violin.txt
rm Viola.txt
rm Xylophone.txt