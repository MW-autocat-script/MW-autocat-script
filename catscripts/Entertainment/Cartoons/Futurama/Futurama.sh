#!/bin/bash

KEYWORDS_FUTURAMA="Phil(|l)ip(| )(J|)(\.|)(| )Fry|Leela|Bender(| )(|Bending)(| )Rodríguez|Planetary(| )Express|Zoidberg|Prof((\.|)|essor)(| )Farnsworth|Futurama"

if [ "$1" == "" ];
then

  debug_start "Futurama"

  FUTURAMA=$(egrep -i "$KEYWORDS_FUTURAMA" newpages.txt)

  if [ "$FUTURAMA" != "" ];
  then
    printf "%s" "$FUTURAMA" > Futurama.txt
    export CATFILE="Futurama.txt"
    export CATNAME="Futurama"
    $CATEGORIZE
    rm Futurama.txt
    unset FUTURAMA
  fi

  debug_end "Futurama"

fi