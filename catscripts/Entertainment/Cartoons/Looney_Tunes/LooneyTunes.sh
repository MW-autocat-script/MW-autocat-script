#!/bin/bash

KEYWORDS_LOONEYTUNES="Bugs(| )Bunny|What(|')s(| )up(|,)Doc|Elmer(| )Fudd|Porky(| )Pig|Marvin(| )(|the)(| )Martian|Barnyard(| )Dawg|Goofy(| )Gophers|Foghorn(| )Leghorn|Speedy(| )Gonzales|Daffy(| )Duck|Sylvester(| )the(| )Cat|\bTweety\b|Wile(| )E(|\.)(| )Coyote|Pep(e|é)(| )Le(| )Pew"

if [ "$1" == "" ];
then

  debug_start "Looney Tunes"

  LOONEY=$(egrep -i "$KEYWORDS_LOONEYTUNES" newpages.txt)

  if [ "$LOONEY" != "" ];
  then
    printf "%s" "$LOONEY" > LooneyTunes.txt
    export CATFILE="LooneyTunes.txt"
    export CATNAME="Looney Tunes"
    $CATEGORIZE
    rm LooneyTunes.txt
    unset LOONEY
  fi

  debug_end "Looney Tunes"

fi