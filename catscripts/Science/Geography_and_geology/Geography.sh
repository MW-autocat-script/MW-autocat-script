#!/bin/bash

KEYWORDS_GEOGRAPHY="Geography"
KEYWORDS_GEOLOGY="seismograph|seismology|geology|geological"
KEYWORDS_VOLCANO="Volcano"
KEYWORDS_VOLCANO_EXCLUDE="RuneScape"
KEYWORDS_EARTHQUAKES="Earth(| )quake"
KEYWORDS_GEOLOGY_EXCLUDE="$KEYWORDS_EARTHQUAKES|$KEYWORDS_VOLCANO"


if [ "$1"=="" ];
then
  egrep -i "$KEYWORDS_VOLCANO" newpages.txt | egrep -iv "$KEYWORDS_VOLCANO_EXCLUDE" > Volcanoes.txt
  egrep -i "$KEYWORDS_EARTHQUAKES" newpages.txt > Earthquakes.txt
  egrep -i "$KEYWORDS_GEOLOGY|$KEYWORDS_GEOGRAPHY" newpages.txt | egrep -iv "$KEYWORDS_GEOLOGY_EXCLUDE" > Geology.txt

  GEOLOGY=$(stat --print=%s Geology.txt)
  VOLCANOES=$(stat --print=%s Volcanoes.txt)
  EARTHQUAKES=$(stat --print=%s Earthquakes.txt)

  if [ $GEOLOGY -ne 0 ];
  then
    export CATFILE="Geology.txt"
    export CATNAME="Geography and geology"
    $CATEGORIZE
  fi

  if [ $EARTHQUAKES -ne 0 ];
  then
    export CATFILE="Earthquakes.txt"
    export CATNAME="Earthquakes"
    $CATEGORIZE
  fi

  if [ $VOLCANOES -ne 0 ];
  then
    export CATFILE="Volcanoes.txt"
    export CATNAME="Volcanoes"
    $CATEGORIZE
  fi

  rm Geology.txt
  rm Volcanoes.txt
  rm Earthquakes.txt

fi

CURRENTDIR="./catscripts/Science/Geography_and_geology"

. $CURRENTDIR/Mountains/Mountains.sh
