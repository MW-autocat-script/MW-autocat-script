#!/bin/bash

KEYWORDS_FUTURAMA="Phil(|l)ip(| )(J|)(\.|)(| )Fry|Leela|Bender(| )(|Bending)(| )Rodríguez|Planetary(| )Express|Zoidberg|Prof((\.|)|essor)(| )Farnsworth|Futurama"

if [ "$1" == "" ];
then

  debug_start "Futurama"

  FUTURAMA=$(egrep -i "$KEYWORDS_FUTURAMA" "$NEWPAGES")

  categorize "FUTURAMA" "Futurama"

  debug_end "Futurama"

fi