#!/bin/bash

KEYWORDS_OPENBSD="Open(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting OpenBSD\n"
  fi

  OPENBSD=$(egrep -i "$KEYWORDS_OPENBSD" newpages.txt)

  if [ "$OPENBSD" != "" ];
  then
    printf "$OPENBSD" > OpenBSD.txt
    export CATFILE="OpenBSD.txt"
    export CATNAME="OpenBSD"
    $CATEGORIZE
    rm OpenBSD.txt
    unset OPENBSD
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing OpenBSD\n"
  fi

fi