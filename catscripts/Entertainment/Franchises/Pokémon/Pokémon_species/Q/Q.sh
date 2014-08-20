#!/bin/bash

KEYWORDS_QUAGSIRE="Quagsire"
KEYWORDS_QUILAVA="Quilava"
KEYWORDS_QWILFISH="Qwilfish"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon Q scripts"

  QUAGSIRE=$(egrep -i "$KEYWORDS_QUAGSIRE" "$NEWPAGES")
  QUILAVA=$(egrep -i "$KEYWORDS_QUILAVA" "$NEWPAGES")
  QWILFISH=$(egrep -i "$KEYWORDS_QWILFISH" "$NEWPAGES")

  if [ "$QUAGSIRE" != "" ];
  then
    printf "%s" "$QUAGSIRE" > Quagsire.txt
    export CATFILE="Quagsire.txt"
    export CATNAME="Quagsire"
    $CATEGORIZE
    rm Quagsire.txt
    unset QUAGSIRE
  fi

  if [ "$QUILAVA" != "" ];
  then
    printf "%s" "$QUILAVA" > Quilava.txt
    export CATFILE="Quilava.txt"
    export CATNAME="Quilava"
    $CATEGORIZE
    rm Quilava.txt
    unset QUILAVA
  fi

  if [ "$QWILFISH" != "" ];
  then
    printf "%s" "$QWILFISH" > Qwilfish.txt
    export CATFILE="Qwilfish.txt"
    export CATNAME="Qwilfish"
    $CATEGORIZE
    rm Qwilfish.txt
    unset QWILFISH
  fi

  debug_end "Pokemon Q scripts"

fi