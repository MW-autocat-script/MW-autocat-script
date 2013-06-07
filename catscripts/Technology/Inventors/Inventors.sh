#!/bin/bash

export KEYWORDS_BABBAGE="Babbage"
export KEYWORDS_BENZ="Karl Benz"
export KEYWORDS_ALEXANDERBELL="Alex(|ander)(| )(|Graham|G\.)(| )Bell"
export KEYWORDS_BENFRANKLIN="Ben(|jamin)(| )Franklin"
export KEYWORDS_GEORGEWASHINGTONCARVER="George(| )(|Washington)(| )Carver"
export KEYWORDS_DAVINCI="da(| )vinci"
export KEYWORDS_EDISON="Edison"
export KEYWORDS_TESLA="Tesla"
export KEYWORDS_ELIWHITNEY="Eli(| )Whitney"

export INVENTORSLIST="$KEYWORDS_BABBAGE|$KEYWORDS_ALEXANDERBELL|$KEYWORDS_BENZ|$KEYWORDS_BENFRANKLIN|$KEYWORDS_GEORGEWASHINGTONCARVER|$KEYWORDS_DAVINCI|$KEYWORDS_EDISON|$KEYWORDS_TESLA|$KEYWORDS_ELIWHITNEY"

#These are inventors who are notable enough to have Wikipedia articles but do not yet have enough questions about them to warrant their own category

export INVENTORS_OTHER="Ralph(| )(|H(\.|))(| )Baer|Louis(| )Braille"

egrep -i "$KEYWORDS_BABBAGE" newpages.txt >> CharlesBabbage.txt
egrep -i "$KEYWORDS_ALEXANDERBELL" newpages.txt > AlexanderGrahamBell.txt
egrep -i "$KEYWORDS_BENZ" newpages.txt > KarlBenz.tzt
egrep -i "$KEYWORDS_BENFRANKLIN" newpages.txt > BenjaminFranklin.txt
egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" newpages.txt > GeorgeWashingtonCarver.txt
egrep -i "$KEYWORDS_DAVINCI" newpages.txt > LeonardoDaVinci.txt
egrep -i "$KEYWORDS_EDISON" newpages.txt > ThomasEdison.txt
egrep -i "$KEYWORDS_TESLA" newpages.txt | egrep -iv "Fallout(| )3|Brotherhood(| )of(| )Steel|Tesla(| )Roadster|Tesla(| )Motors" > NikolaTesla.txt
egrep -i "$KEYWORDS_ELIWHITNEY" newpages.txt > EliWhitney.txt
egrep -i 'Invent(e|o)r' newpages.txt | egrep -iv "$INVENTORSLIST" > Inventors.txt

INVENTORS=`stat --print=%s Inventors.txt`
BABBAGE=`stat --print=%s CharlesBabbage.txt`
BELL=`stat --print=%s AlexanderGrahamBell.txt`
BENZ=`stat --print=%s KarlBenz.txt`
FRANKLIN=`stat --print=%s BenjaminFranklin.txt`
CARVER=`stat --print=%s GeorgeWashingtonCarver.txt`
DAVINCI=`stat --print=%s LeonardoDaVinci.txt`
EDISON=`stat --print=%s ThomasEdison.txt`
TESLA=`stat --print=%s NikolaTesla.txt`
WHITNEY=`stat --print=%s EliWhitney.txt`

if [ $INVENTORS -ne 0 ];
then
  export CATFILE="Inventors.txt"
  export CATNAME="Inventors"
  $CATEGORIZE
fi

if [ $BABBAGE -ne 0 ];
then
  export CATFILE="CharlesBabbage.txt"
  export CATNAME="Charles Babbage"
  $CATEGORIZE
fi

if [ $BELL -ne 0 ];
then
  export CATFILE="AlexanderGrahamBell.txt"
  export CATNAME="Alexander Graham Bell"
  $CATEGORIZE
fi

if [ $BENZ -ne 0 ];
then
  export CATFILE="KarlBenz.txt"
  export CATNAME="Karl Benz"
  $CATEGORIZE
fi

if [ $FRANKLIN -ne 0 ];
then
  export CATFILE="BenjaminFranklin.txt"
  export CATNAME="Benjamin Franklin"
  $CATEGORIZE
fi

if [ $CARVER -ne 0 ];
then
  export CATFILE="GeorgeWashingtonCarver.txt"
  export CATNAME="George Washington Carver"
  $CATEGORIZEfi
fi

if [ $DAVINCI -ne 0 ];
then
  export CATFILE="LeonardoDaVinci.txt"
  export CATNAME="Leonardo da Vinci"
  $CATEGORIZE
fi

if [ $EDISON -ne 0 ];
then
  export CATFILE="ThomasEdison.txt"
  export CATNAME="Thomas Edison"
  $CATEGORIZE
fi

if [ $TESLA -ne 0 ];
then
  export CATFILE="NikolaTesla.txt"
  export CATNAME="Nikola Tesla"
  $CATEGORIZE
fi

if [ $WHITNEY -ne 0 ];
then
  export CATFILE="EliWhitney.txt"
  export CATNAME="Eli Whitney"
  $CATEGORIZE
fi

rm Inventors.txt
rm CharlesBabbage.txt
rm AlexanderGrahamBell.txt
rm KarlBenz.txt
rm BenjaminFranklin.txt
rm GeorgeWashingtonCarver.txt
rm LeonardoDaVinci.txt
rm ThomasEdison.txt
rm NikolaTesla.txt
rm EliWhitney.txt