#!/bin/bash 

KEYWORDS_COBALT="Cobalt"
KEYWORDS_COBALT_EXCLUDE="Chev(y|rolet)"
KEYWORDS_RHODIUM="Rhodium"
KEYWORDS_IRIDIUM="Iridium"
KEYWORDS_MEITNERIUM="Meitnerium"

if [ "$1" == "" ]; #Normal operation
then

  COBALT=$(egrep -i "$KEYWORDS_COBALT" newpages.txt | egrep -iv "$KEYWORDS_COBALT_EXCLUDE")
  RHODIUM=$(egrep -i "$KEYWORDS_RHODIUM" newpages.txt)
  IRIDIUM=$(egrep -i "$KEYWORDS_IRIDIUM" newpages.txt)
  MEITNERIUM=$(egrep -i "$KEYWORDS_MEITNERIUM" newpages.txt)

  if [ "$COBALT" != "" ];
  then
    printf "%s" "$COBALT" > Cobalt.txt
    export CATFILE="Cobalt.txt"
    export CATNAME="Cobalt"
    $CATEGORIZE
    rm Cobalt.txt
    unset COBALT
  fi

  if [ "$RHODIUM" != "" ];
  then
    printf "%s" "$RHODIUM" > Rhodium.txt
    export CATFILE="Rhodium.txt"
    export CATNAME="Rhodium"
    $CATEGORIZE
    rm Rhodium.txt
    unset RHODIUM
  fi

  if [ "$IRIDIUM" != "" ];
  then
    printf "%s" "$IRIDIUM" > Iridium.txt
    export CATFILE="Iridium.txt"
    export CATNAME="Iridium"
    $CATEGORIZE
    rm Iridium.txt
    unset IRIDIUM
  fi

  if [ "$MEITNERIUM" != "" ];
  then
    printf "%s" "$MEITNERIUM" > Meitnerium.txt
    export CATFILE="Meitnerium.txt"
    export CATNAME="Meitnerium"
    $CATEGORIZE
    rm Meitnerium.txt
    unset MEITNERIUM
  fi

fi