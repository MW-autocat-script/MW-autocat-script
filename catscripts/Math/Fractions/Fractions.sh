#!/bin/bash

KEYWORDS_FRACTIONS="(as(| )a|into(| )a)(| )fraction$|in(| )(|its)(lowest(| )terms|simplest(| )form)$|reduced(| )fraction|simplest(| )form(| )of(| )[0-9]{1,}/[0-9]{1,}|[0-9]{1,}/[0-9]{1,}(| )of(| )[0-9]{1,}|[0-9]{1,}/[0-9]{1,}(| )(plus|minus|times|divided(| )by)(| )[0-9]{1,}/[0-9]{1,}|[0-9]{1,}/[0-9]{1,}(| )(plus|minus|times|divided)(| )by(| )[0-9]{1.}(| )[0-9]{1,}/[0-9]{1,}|(im|)proper(| )fraction|mixed(| )number"

if [ "$1" == "" ];
then

  debug_start "Fractions"

  FRACTIONS="$(egrep -i "$KEYWORDS_FRACTIONS" newpages.txt)"

  if [ "$FRACTIONS" != "" ];
  then
    printf "%s" "$FRACTIONS" > Fractions.txt
    export CATFILE="Fractions.txt"
    export CATNAME="Fractions"
    $CATEGORIZE
    rm Fractions.txt
    unset FRACTIONS
  fi

  debug_end "Fractions"

fi