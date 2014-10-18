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
  . $GEOGRAPHYDIR/Tropic_of_Cancer/TropicOfCancer.sh #KEYWORDS_TROPICOFCANCER_ALL
  . $GEOGRAPHYDIR/Tropic_of_Capricorn/TropicOfCapricorn.sh #KEYWORDS_TROPICOFCAPRICORN_ALL

  KEYWORDS_GEOLOGY_EXCLUDE="$KEYWORDS_EARTHQUAKES|$KEYWORDS_VOLCANO|$KEYWORDS_MOUNTAINS_ALL|$KEYWORDS_TROPICOFCANCER_ALL|$KEYWORDS_TROPICOFCAPRICORN_ALL"

  GEOLOGY=$(egrep -i "$KEYWORDS_GEOLOGY|$KEYWORDS_GEOGRAPHY" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEOLOGY_EXCLUDE")
  VOLCANOES=$(egrep -i "$KEYWORDS_VOLCANO" "$NEWPAGES" | egrep -iv "$KEYWORDS_VOLCANO_EXCLUDE")
  EARTHQUAKES=$(egrep -i "$KEYWORDS_EARTHQUAKES" "$NEWPAGES")

  categorize "GEOLOGY" "Geography and geology"
  categorize "EARTHQUAKES" "Earthquakes"
  categorize "VOLCANOES" "Volcanoes"

  debug_end "Geography and geology"

else

    . $GEOGRAPHYDIR/Mountains/Mountains.sh norun #KEYWORDS_MOUNTAINS_ALL

fi



