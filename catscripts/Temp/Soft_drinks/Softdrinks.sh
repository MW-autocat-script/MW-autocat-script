#!/bin/bash

KEYWORDS_SOFTDRINK="(pop|soft)(| )drink|\bcola|root(| )beer|soda"
KEYWORDS_PEPSICO="Pepsi|Mountain(| )Dew"
KEYWORDS_COCACOLA="Coca(| |-)Cola|Diet(| )Coke|Dr(|\.)(| )Pepper"
KEYWORDS_SOFTDRINK_EXCLUDE="$KEYWORDS_PEPSICO|$KEYWORDS_COCACOLA|baking(| )soda"

if [ "$1" == "" ];
then

  debug_start "Soft drinks"

  PEPSICO=$(egrep -i "$KEYWORDS_PEPSICO" newpages.txt)
  COKE=$(egrep -i "$KEYWORDS_COCACOLA" newpages.txt)
  SOFT=$(egrep -i "$KEYWORDS_SOFTDRINK" newpages.txt | egrep -iv "$KEYWORDS_SOFTDRINK_EXCLUDE")

  if [ "$PEPSICO" != "" ];
  then
    printf "%s" "$PEPSICO" > PepsiCo.txt
    export CATFILE="PepsiCo.txt"
    export CATNAME="PepsiCo Inc."
    $CATEGORIZE
    rm PepsiCo.txt
    unset PEPSICO
  fi

  if [ "$COKE" != "" ];
  then
    printf "%s" "$COKE" > CocaCola.txt
    export CATFILE="CocaCola.txt"
    export CATNAME="The Coca-Cola Company"
    $CATEGORIZE
    rm CocaCola.txt
    unset COKE
  fi

  if [ "$SOFT" != "" ];
  then
    printf "%s" "$SOFT" > Softdrinks.txt
    export CATFILE="Softdrinks.txt"
    export CATNAME="Soft drinks"
    $CATEGORIZE
    rm Softdrinks.txt
    unset SOFT
  fi

  debug_end "Soft drinks"

fi