#!/bin/bash

export KEYWORDS_MOVIES_TOYSTORY="Toy(| )Story"
export KEYWORDS_MOVIES_TOYSTORY2="Toy(| )Story(| )2"
export KEYWORDS_MOVIES_TOYSTORY3="Toy(| )Story(| )3"

if [ "$1" == "" ];
then

  debug_start "Toy Story movies"

  TOYSTORY="$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY" newpages.txt | egrep -iv "$KEYWORDS_MOVIES_TOYSTORY2|$KEYWORDS_MOVIES_TOYSTORY3")"

  if [ "$TOYSTORY" != "" ];
  then
    printf "%s" "$TOYSTORY" > ToyStory.txt
    export CATFILE="ToyStory.txt"
    export CATNAME="Toy Story"
    $CATEGORIZE
    rm ToyStory.txt
    unset TOYSTORY
  fi

  TSTWO="$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY2" newpages.txt)"

  if [ "$TSTWO" != "" ];
  then
    printf "%s" "$TSTWO" > ToyStory2.txt
    export CATFILE="ToyStory2.txt"
    export CATNAME="Toy Story 2"
    $CATEGORIZE
    rm ToyStory2.txt
    unset TSTWO
  fi

  TSTHREE="$(egrep -i "$KEYWORDS_MOVIES_TOYSTORY3" newpages.txt)"

  if [ "$TSTHREE" != "" ];
  then
    printf "%s" "$TSTHREE" > ToyStory3.txt
    export CATFILE="ToyStory3.txt"
    export CATNAME="Toy Story 3"
    $CATEGORIZE
    rm ToyStory3.txt
    unset TSTHREE
  fi

  debug_end "Toy Story movies"

fi
