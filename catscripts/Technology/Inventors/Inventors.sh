#!/bin/bash

KEYWORDS_INVENTORS="Invent(e|o)r(|s)\b"
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

  debug_start "Inventors"

  INVENTORS="$(egrep -i "$KEYWORDS_INVENTORS|$KEYWORDS_INVENTORS_OTHER" "$NEWPAGES" | egrep -iv "$KEYWORDS_INVENTORS_EXCLUDE")"
  BABBAGE="$(egrep -i "$KEYWORDS_BABBAGE" "$NEWPAGES")"
  BELL="$(egrep -i "$KEYWORDS_ALEXANDERBELL" "$NEWPAGES")"
  BENZ="$(egrep -i "$KEYWORDS_BENZ" "$NEWPAGES")"
  FRANKLIN="$(egrep -i "$KEYWORDS_BENFRANKLIN" "$NEWPAGES")"
  CARVER="$(egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" "$NEWPAGES")"
  DAVINCI="$(egrep -i "$KEYWORDS_DAVINCI" "$NEWPAGES")"
  EDISON="$(egrep -i "$KEYWORDS_EDISON" "$NEWPAGES")"
  TESLA="$(egrep -i "$KEYWORDS_TESLA" "$NEWPAGES" | egrep -iv "$KEYWORDS_TESLA_EXCLUDE")"
  WHITNEY="$(egrep -i "$KEYWORDS_ELIWHITNEY" "$NEWPAGES")"

  if [ "$INVENTORS" != "" ];
  then
    printf "%s" "$INVENTORS" > Inventors.txt
    export CATFILE="Inventors.txt"
    export CATNAME="Inventors"
    $CATEGORIZE
    rm Inventors.txt
    unset INVENTORS
  fi

  if [ "$BABBAGE"  != "" ];
  then
    printf "%s" "$BABBAGE" > CharlesBabbage.txt
    export CATFILE="CharlesBabbage.txt"
    export CATNAME="Charles Babbage"
    $CATEGORIZE
    rm CharlesBabbage.txt
    unset BABBAGE
  fi

  if [ "$BELL" != "" ];
  then
    printf "%s" "$BELL" > AlexanderGrahamBell.txt
    export CATFILE="AlexanderGrahamBell.txt"
    export CATNAME="Alexander Graham Bell"
    $CATEGORIZE
    rm AlexanderGrahamBell.txt
    unset BELL
  fi

  if [ "$BENZ" != "" ];
  then
    printf "%s" "$BENZ" > KarlBenz.txt
    export CATFILE="KarlBenz.txt"
    export CATNAME="Karl Benz"
    $CATEGORIZE
    rm KarlBenz.txt
    unset BENZ
  fi

  if [ "$FRANKLIN" != "" ];
  then
    printf "%s" "$FRANKLIN" > BenjaminFranklin.txt
    export CATFILE="BenjaminFranklin.txt"
    export CATNAME="Benjamin Franklin"
    $CATEGORIZE
    rm BenjaminFranklin.txt
    unset FRANKLIN
  fi

  if [ "$CARVER" != "" ];
  then
    printf "%s" "$CARVER" > GeorgeWashingtonCarver.txt
    export CATFILE="GeorgeWashingtonCarver.txt"
    export CATNAME="George Washington Carver"
    $CATEGORIZE
    rm GeorgeWashingtonCarver.txt
    unset CARVER
  fi

  if [ "$DAVINCI" != "" ];
  then
    printf "%s" "$DAVINCI" > LeonardoDaVinci.txt
    export CATFILE="LeonardoDaVinci.txt"
    export CATNAME="Leonardo da Vinci"
    $CATEGORIZE
    rm LeonardoDaVinci.txt
    unset DAVINCI
  fi

  if [ "$EDISON" != "" ];
  then
    printf "%s" "$EDISON" > ThomasEdison.txt
    export CATFILE="ThomasEdison.txt"
    export CATNAME="Thomas Edison"
    $CATEGORIZE
    rm ThomasEdison.txt
    unset EDISON
  fi

  if [ "$TESLA" != "" ];
  then
    printf "%s" "$TESLA" > NikolaTesla.txt
    export CATFILE="NikolaTesla.txt"
    export CATNAME="Nikola Tesla"
    $CATEGORIZE
    rm NikolaTesla.txt
    unset TESLA
  fi

  if [ "$WHITNEY" != "" ];
  then
    printf "%s" "$WHITNEY" > EliWhitney.txt
    export CATFILE="EliWhitney.txt"
    export CATNAME="Eli Whitney"
    $CATEGORIZE
    rm EliWhitney.txt
    unset WHITNEY
  fi

  debug_end "Inventors"

fi