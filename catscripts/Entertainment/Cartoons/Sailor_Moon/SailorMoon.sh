#!/bin/bash

KEYWORDS_SAILORMOON="Sailor(| )(Mercury|Moon|Mars|Jupiter|Venus|Chibi|Saturn|Uranus|Neptune|Pluto)|Tuxedo(| )Mask|Dark(| )Kingdom|Makaiju|Black(| )Moon(| )Clan|Death(| )Busters|Dead(| )Moon(| )Circus|Shadow(| )Galactica"

if [ "$1" == "" ];
then

  debug_start "Sailor Moon"

  SAILORMOON=$(egrep -i "$KEYWORDS_SAILORMOON" "$NEWPAGES")

  categorize "SAILORMOON" "Sailor Moon"

  debug_end "Sailor Moon"

fi