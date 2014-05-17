#!/bin/bash

KEYWORDS_LOONEYTUNES="Bugs(| )Bunny|What(|')s(| )up(|,)Doc|Elmer(| )Fudd|Porky(| )Pig|Marvin(| )(|the)(| )Martian|Barnyard(| )Dawg|Goofy(| )Gophers|Foghorn(| )Leghorn|Speedy(| )Gonzales|Daffy(| )Duck|Sylvester(| )the(| )Cat|\bTweety\b|Wile(| )E(|\.)(| )Coyote|Pep(e|é)(| )Le(| )Pew"

egrep -i "$KEYWORDS_LOONEYTUNES" newpages.txt >> LooneyTunes.txt

LOONEY=$(stat --print=%s LooneyTunes.txt)

if [ $LOONEY -ne 0 ];
then
  export CATFILE="LooneyTunes.txt"
  export CATNAME="Looney Tunes"
  $CATEGORIZE
fi

rm LooneyTunes.txt