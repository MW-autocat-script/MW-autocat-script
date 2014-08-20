#!/bin/bash

KEYWORDS_JAPAN="Japan\b"
KEYWORDS_TOKYO="Tokyo|Kyoto"
KEYWORDS_HIROSHIMA="Hiroshima"
KEYWORDS_NAGASAKI="Nagasaki"
KEYWORDS_JAPAN_EXCLUDE="$KEYWORDS_TOKYO|$KEYWORDS_HIROSHIMA|$KEYWORDS_NAGASAKI"
KEYWORDS_JAPAN_ALL="$KEYWORDS_JAPAN|$KEYWORDS_HIROSHIMA|$KEYWORDS_NAGASAKI|$KEYWORDS_TOKYO"

if [ "$1" == "" ];
then
  
  debug_start "Japan"

  JAPAN=$(egrep -i "$KEYWORDS_JAPAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_JAPAN_EXCLUDE")
  TOKYO=$(egrep -i "$KEYWORDS_TOKYO" "$NEWPAGES")
  HIROSHIMA=$(egrep -i "$KEYWORDS_HIROSHIMA" "$NEWPAGES")
  NAGASAKI=$(egrep -i "$KEYWORDS_NAGASAKI" "$NEWPAGES")

  if [ "$JAPAN" != "" ];
  then
    printf "%s" "$JAPAN" > Japan.txt
    export CATFILE="Japan.txt"
    export CATNAME="Japan"
    $CATEGORIZE
    rm Japan.txt
    unset JAPAN
  fi

  if [ "$TOKYO" != "" ];
  then
    printf "%s" "$TOKYO" > Tokyo.txt
    export CATFILE="Tokyo.txt"
    export CATNAME="Tokyo"
    $CATEGORIZE
    rm Tokyo.txt
    unset TOKYO
  fi

  if [ "$HIROSHIMA" != "" ];
  then
    printf "%s" "$HIROSHIMA" > Hiroshima.txt
    export CATFILE="Hiroshima.txt"
    export CATNAME="Hiroshima"
    $CATEGORIZE
    rm Hiroshima.txt
    unset HIROSHIMA
  fi

  if [ "$NAGASAKI" != "" ];
  then
    printf "%s" "$NAGASAKI" > Nagasaki.txt
    export CATFILE="Nagasaki.txt"
    export CATNAME="Nagasaki"
    $CATEGORIZE
    rm Nagasaki.txt
    unset NAGASAKI
  fi

  debug_end "Japan"

fi