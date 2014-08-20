#!/bin/bash
GEOGRAPHYDIR="./catscripts/Science/Geography_and_geology"
KEYWORDS_GEOGRAPHY="Geography"
KEYWORDS_GEOLOGY="seismograph|seismology|geology|geological"
KEYWORDS_VOLCANO="Volcano"
KEYWORDS_VOLCANO_EXCLUDE="RuneScape"
KEYWORDS_EARTHQUAKES="Earth(| )quake"


if [ "$1" == "" ];
then

  debug_start "Geography and geology"

  . $GEOGRAPHYDIR/Mountains/Mountains.sh #KEYWORDS_MOUNTAINS_ALL

  KEYWORDS_GEOLOGY_EXCLUDE="$KEYWORDS_EARTHQUAKES|$KEYWORDS_VOLCANO|$KEYWORDS_MOUNTAINS_ALL"

  GEOLOGY=$(egrep -i "$KEYWORDS_GEOLOGY|$KEYWORDS_GEOGRAPHY" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEOLOGY_EXCLUDE")
  VOLCANOES=$(egrep -i "$KEYWORDS_VOLCANO" "$NEWPAGES" | egrep -iv "$KEYWORDS_VOLCANO_EXCLUDE")
  EARTHQUAKES=$(egrep -i "$KEYWORDS_EARTHQUAKES" "$NEWPAGES")

  if [ "$GEOLOGY" != "" ];
  then
    printf "%s" "$GEOLOGY" > Geology.txt
    export CATFILE="Geology.txt"
    export CATNAME="Geography and geology"
    $CATEGORIZE
    rm Geology.txt
    unset GEOLOGY
  fi

  if [ "$EARTHQUAKES" != "" ];
  then
    printf "%s" "$EARTHQUAKES" > Earthquakes.txt
    export CATFILE="Earthquakes.txt"
    export CATNAME="Earthquakes"
    $CATEGORIZE
    rm Earthquakes.txt
    unset EARTHQUAKES
  fi

  if [ "$VOLCANOES" != "" ];
  then
    printf "%s" "$VOLCANOES" > Volcanoes.txt
    export CATFILE="Volcanoes.txt"
    export CATNAME="Volcanoes"
    $CATEGORIZE
    rm Volcanoes.txt
    unset VOLCANOES
  fi

  debug_end "Geography and geology"

else

    . $GEOGRAPHYDIR/Mountains/Mountains.sh norun #KEYWORDS_MOUNTAINS_ALL

fi



