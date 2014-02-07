#!/bin/bash

KEYWORDS_JELLICENT="Jellicent"
KEYWORDS_JIGGLYPUFF="Jigglypuff"
KEYWORDS_JIRACHI="Jirachi"
KEYWORDS_JOLTEON="Jolteon"
KEYWORDS_JOLTIK="Joltik"
KEYWORDS_JUMPLUFF="Jumpluff"
KEYWORDS_JYNX="Jynx"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'J' script"

  JELLICENT="$(egrep -i "$KEYWORDS_JELLICENT" newpages.txt)"
  JIGGLYPUFF="$(egrep -i "$KEYWORDS_JIGGLYPUFF" newpages.txt)"
  JIRACHI="$(egrep -i "$KEYWORDS_JIRACHI" newpages.txt)"
  JOLTEON="$(egrep -i "$KEYWORDS_JOLTEON" newpages.txt)"
  JOLTIK="$(egrep -i "$KEYWORDS_JOLTIK" newpages.txt)"
  JUMPLUFF="$(egrep -i "$KEYWORDS_JUMPLUFF" newpages.txt)"
  JYNX="$(egrep -i "$KEYWORDS_JYNX" newpages.txt)"

  if [ "$JELLICENT" != "" ];
  then
    printf "%s" "$JELLICENT" > Jellicent.txt
    export CATFILE="Jellicent.txt"
    export CATNAME="Jellicent"
    $CATEGORIZE
    rm Jellicent.txt
    unset JELLICENT
  fi

  if [ "$JIGGLYPUFF" != "" ];
  then
    printf "%s" "$JIGGLYPUFF" > Jigglypuff.txt
    export CATFILE="Jigglypuff.txt"
    export CATNAME="Jigglypuff"
    $CATEGORIZE
    rm Jigglypuff.txt
    unset JIGGLYPUFF
  fi

  if [ "$JIRACHI" != "" ];
  then
    printf "%s" "$JIRACHI" > Jirachi.txt
    export CATFILE="Jirachi.txt"
    export CATNAME="Jirachi"
    $CATEGORIZE
    rm Jirachi.txt
    unset JIRACHI
  fi

  if [ "$JOLTEON" != "" ];
  then
    printf "%s" "$JOLTEON" > Jolteon.txt
    export CATFILE="Jolteon.txt"
    export CATNAME="Jolteon"
    $CATEGORIZE
    rm Jolteon.txt
    unset JOLTEON
  fi

  if [ "$JOLTIK" != "" ];
  then
    printf "%s" "$JOLTIK" > Joltik.txt
    export CATFILE="Joltik.txt"
    export CATNAME="Joltik"
    $CATEGORIZE
    rm Joltik.txt
    unset JOLTIK
  fi

  if [ "$JUMPLUFF" != "" ];
  then
    printf "%s" "$JUMPLUFF" > Jumpluff.txt
    export CATFILE="Jumpluff.txt"
    export CATNAME="Jumpluff"
    $CATEGORIZE
    rm Jumpluff.txt
    unset JUMPLUFF
  fi

  if [ "$JYNX" != "" ];
  then
    printf "%s" "$JYNX" > Jynx.txt
    export CATFILE="Jynx.txt"
    export CATNAME="Jynx"
    $CATEGORIZE
    rm Jynx.txt
    unset JYNX
  fi

  debug_end "Pokemon 'J' script"

fi
