#!/bin/bash

KEYWORDS_QUAGSIRE="Quagsire"
KEYWORDS_QUILAVA="Quilava"
KEYWORDS_QWILFISH="Qwilfish"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon Q scripts\n"
  fi

  QUAGSIRE=`egrep -i "$KEYWORDS_QUAGSIRE" newpages.txt`
  QUILAVA=`egrep -i "$KEYWORDS_QUILAVA" newpages.txt`
  QWILFISH=`egrep -i "$KEYWORDS_QWILFISH" newpages.txt`

  if [ "$QUAGSIRE" != "" ];
  then
    printf "$QUAGSIRE" > Quagsire.txt
    export CATFILE="Quagsire.txt"
    export CATNAME="Quagsire"
    $CATEGORIZE
    rm Quagsire.txt
    unset QUAGSIRE
  fi

  if [ "$QUILAVA" != "" ];
  then
    printf "$QUILAVA" > Quilava.txt
    export CATFILE="Quilava.txt"
    export CATNAME="Quilava"
    $CATEGORIZE
    rm Quilava.txt
    unset QUILAVA
  fi

  if [ "$QWILFISH" != "" ];
  then
    printf "$QWILFISH" > Qwilfish.txt
    export CATFILE="Qwilfish.txt"
    export CATNAME="Qwilfish"
    $CATEGORIZE
    rm Qwilfish.txt
    unset QWILFISH
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon Q scripts\n"
  fi

fi