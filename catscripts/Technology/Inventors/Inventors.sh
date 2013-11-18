#!/bin/bash

KEYWORDS_INVENTORS="Invent(e|o)r"
KEYWORDS_INVENTORS_OTHER="Ralph(| )(|H(\.|))(| )Baer|Louis(| )Braille" #These are inventors who are notable enough to have Wikipedia articles but do not yet have enough questions about them to warrant their own category
KEYWORDS_BABBAGE="Babbage"
KEYWORDS_BENZ="Karl Benz"
KEYWORDS_ALEXANDERBELL="Alex(|ander)(| )(|Graham|G\.)(| )Bell"
KEYWORDS_BENFRANKLIN="Ben(|jamin)(| )Franklin"
KEYWORDS_GEORGEWASHINGTONCARVER="George(| )(|Washington)(| )Carver"
KEYWORDS_DAVINCI="da(| )vinci"
KEYWORDS_EDISON="Edison"
KEYWORDS_TESLA="Tesla"
KEYWORDS_TESLA_EXCLUDE="Fallout(| )3|Brotherhood(| )of(| )Steel|Tesla(| )Roadster|Tesla(| )Motors"
KEYWORDS_ELIWHITNEY="Eli(| )Whitney"
KEYWORDS_INVENTORS_EXCLUDE="$KEYWORDS_ALEXANDERBELL|$KEYWORDS_BABBAGE|$KEYWORDS_BENFRANKLIN|$KEYWORDS_BENZ|$KEYWORDS_DAVINCI|$KEYWORDS_EDISON|$KEYWORDS_ELIWHITNEY|$KEYWORDS_GEORGEWASHINGTONCARVER|$KEYWORDS_TESLA"
KEYWORDS_INVENTORS_ALL="$KEYWORDS_INVENTORS|$KEYWORDS_INVENTORS_EXCLUDE|$KEYWORDS_INVENTORS_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  INVENTORS=`egrep -i "$KEYWORDS_INVENTORS|$KEYWORDS_INVENTORS_OTHER" newpages.txt | egrep -iv "$KEYWORDS_INVENTORS_EXCLUDE"`
  BABBAGE=`egrep -i "$KEYWORDS_BABBAGE" newpages.txt`
  BELL=`egrep -i "$KEYWORDS_ALEXANDERBELL" newpages.txt`
  BENZ=`egrep -i "$KEYWORDS_BENZ" newpages.txt`
  FRANKLIN=`egrep -i "$KEYWORDS_BENFRANKLIN" newpages.txt`
  CARVER=`egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" newpages.txt`
  DAVINCI=`egrep -i "$KEYWORDS_DAVINCI" newpages.txt`
  EDISON=`egrep -i "$KEYWORDS_EDISON" newpages.txt`
  TESLA=`egrep -i "$KEYWORDS_TESLA" newpages.txt | egrep -iv "$KEYWORDS_TESLA_EXCLUDE"`
  WHITNEY=`egrep -i "$KEYWORDS_ELIWHITNEY" newpages.txt`

  if [ "$INVENTORS" != "" ];
  then
    egrep -i "$KEYWORDS_INVENTORS" newpages.txt | egrep -iv "$KEYWORDS_INVENTORS_EXCLUDE" > Inventors.txt
    export CATFILE="Inventors.txt"
    export CATNAME="Inventors"
    $CATEGORIZE
    rm Inventors.txt
    unset INVENTORS
  fi

  if [ "$BABBAGE"  != "" ];
  then
    egrep -i "$KEYWORDS_BABBAGE" newpages.txt > CharlesBabbage.txt
    export CATFILE="CharlesBabbage.txt"
    export CATNAME="Charles Babbage"
    $CATEGORIZE
    rm CharlesBabbage.txt
    unset BABBAGE
  fi

  if [ "$BELL" != "" ];
  then
    egrep -i "$KEYWORDS_ALEXANDERBELL" newpages.txt > AlexanderGrahamBell.txt
    export CATFILE="AlexanderGrahamBell.txt"
    export CATNAME="Alexander Graham Bell"
    $CATEGORIZE
    rm AlexanderGrahamBell.txt
    unset BELL
  fi

  if [ "$BENZ" != "" ];
  then
    egrep -i "$KEYWORDS_BENZ" newpages.txt > KarlBenz.txt
    export CATFILE="KarlBenz.txt"
    export CATNAME="Karl Benz"
    $CATEGORIZE
    rm KarlBenz.txt
    unset BENZ
  fi

  if [ "$FRANKLIN" != "" ];
  then
    egrep -i "$KEYWORDS_BENFRANKLIN" newpages.txt > BenjaminFranklin.txt
    export CATFILE="BenjaminFranklin.txt"
    export CATNAME="Benjamin Franklin"
    $CATEGORIZE
    rm BenjaminFranklin.txt
    unset FRANKLIN
  fi

  if [ "$CARVER" != "" ];
  then
    egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" newpages.txt > GeorgeWashingtonCarver.txt
    export CATFILE="GeorgeWashingtonCarver.txt"
    export CATNAME="George Washington Carver"
    $CATEGORIZE
    rm GeorgeWashingtonCarver.txt
    unset CARVER
  fi

  if [ "$DAVINCI" != "" ];
  then
    egrep -i "$KEYWORDS_DAVINCI" newpages.txt > LeonardoDaVinci.txt
    export CATFILE="LeonardoDaVinci.txt"
    export CATNAME="Leonardo da Vinci"
    $CATEGORIZE
    rm LeonardoDaVinci.txt
    unset DAVINCI
  fi

  if [ "$EDISON" != "" ];
  then
    egrep -i "$KEYWORDS_EDISON" newpages.txt > ThomasEdison.txt
    export CATFILE="ThomasEdison.txt"
    export CATNAME="Thomas Edison"
    $CATEGORIZE
    rm Edison.txt
    unset EDISON
  fi

  if [ "$TESLA" != "" ];
  then
    egrep -i "$KEYWORDS_TESLA" newpages.txt | egrep -iv "$KEYWORDS_TESLA_EXCLUDE" > NikolaTesla.txt
    export CATFILE="NikolaTesla.txt"
    export CATNAME="Nikola Tesla"
    $CATEGORIZE
    rm NikolaTesla.txt
    unset TESLA
  fi

  if [ "$WHITNEY" != "" ];
  then
    egrep -i "$KEYWORDS_ELIWHITNEY" newpages.txt > EliWhitney.txt
    export CATFILE="EliWhitney.txt"
    export CATNAME="Eli Whitney"
    $CATEGORIZE
    rm EliWhitney.txt
    unset WHITNEY
  fi
fi