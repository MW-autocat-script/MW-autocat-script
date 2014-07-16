#!/bin/bash

KEYWORDS_YAMASK="Yamask"
KEYWORDS_YANMA="\bYanma"
KEYWORDS_YANMEGA="Yanmega"

if [ "$1" == "" ];
then

  debug_start "Pokemon Y script"

  YAMASK=$(egrep -i "$KEYWORDS_YAMASK" newpages.txt)
  YANMA=$(egrep -i "$KEYWORDS_YANMA" newpages.txt)
  YANMEGA=$(egrep -i "$KEYWORDS_YANMEGA" newpages.txt)

  if [ "$YAMASK" != "" ];
  then
    printf "%s" "$YAMASK" > Yamask.txt
    export CATFILE="Yamask.txt"
    export CATNAME="Yamask"
    $CATEGORIZE
    rm Yamask.txt
    unset YAMASK
  fi

  if [ "$YANMA" != "" ];
  then
    printf "%s" "$YANMA" > Yanma.txt
    export CATFILE="Yanma.txt"
    export CATNAME="Yanma"
    $CATEGORIZE
    rm Yanma.txt
    unset YANMA
  fi

  if [ "$YANMEGA" != "" ];
  then
    printf "%s" "$YANMEGA" > Yanmega.txt
    export CATFILE="Yanmega.txt"
    export CATNAME="Yanmega"
    $CATEGORIZE
    rm Yanmega.txt
    unset YANMEGA
  fi

  debug_end "Pokemon Y script"

fi
