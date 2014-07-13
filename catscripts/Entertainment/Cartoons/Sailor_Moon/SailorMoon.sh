#!/bin/bash

KEYWORDS_SAILORMOON="Sailor(| )(Mercury|Moon|Mars|Jupiter|Venus|Chibi|Saturn|Uranus|Neptune|Pluto)|Tuxedo(| )Mask|Dark(| )Kingdom|Makaiju|Black(| )Moon(| )Clan|Death(| )Busters|Dead(| )Moon(| )Circus|Shadow(| )Galactica"

if [ "$1" == "" ];
then

  debug_start "Sailor Moon"

  SAILORMOON=$(egrep -i "$KEYWORDS_SAILORMOON" newpages.txt)

  if [ "$SAILORMOON" != "" ];
  then
    printf "%s" "$SAILORMOON" > SailorMoon.txt
    export CATFILE="SailorMoon.txt"
    export CATNAME="Sailor Moon"
    $CATEGORIZE
    rm SailorMoon.txt
    unset SAILORMOON
  fi

  debug_end "Sailor Moon"

fi