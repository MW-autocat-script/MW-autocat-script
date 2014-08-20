#!/bin/bash

KEYWORDS_OCTILLERY="Octillery"
KEYWORDS_ODDISH="Oddish"
KEYWORDS_OMANYTE="Omanyte"
KEYWORDS_OMASTAR="Omastar"
KEYWORDS_ONIX="\bOnix"
KEYWORDS_OSHAWOTT="Oshawott"
KEYWORDS_POKEMONSPECIES_O="$KEYWORDS_OCTILLERY|$KEYWORDS_ODDISH|$KEYWORDS_OMANYTE|$KEYWORDS_OMASTAR|$KEYWORDS_ONIX|$KEYWORDS_OSHAWOTT"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'O' scripts"

  OCTILLERY="$(egrep -i "$KEYWORDS_OCTILLERY" "$NEWPAGES")"
  ODDISH="$(egrep -i "$KEYWORDS_ODDISH" "$NEWPAGES")"
  OMANYTE="$(egrep -i "$KEYWORDS_OMANYTE" "$NEWPAGES")"
  OMASTAR="$(egrep -i "$KEYWORDS_OMASTAR" "$NEWPAGES")"
  ONIX="$(egrep -i "$KEYWORDS_ONIX" "$NEWPAGES")"
  OSHAWOTT="$(egrep -i "$KEYWORDS_OSHAWOTT" "$NEWPAGES")"

  if [ "$OCTILLERY" != "" ];
  then
    printf "%s" "$OCTILLERY" > Octillery.txt
    export CATFILE="Octillery.txt"
    export CATNAME="Octillery"
    $CATEGORIZE
    rm Octillery.txt
    unset OCTILLERY
  fi

  if [ "$ODDISH" != "" ];
  then
    printf "%s" "$ODDISH" > Oddish.txt
    export CATFILE="Oddish.txt"
    export CATNAME="Oddish"
    $CATEGORIZE
    rm Oddish.txt
    unset ODDISH
  fi

  if [ "$OMANYTE" != "" ];
  then
    printf "%s" "$OMANYTE" > Omanyte.txt
    export CATFILE="Omanyte.txt"
    export CATNAME="Omanyte"
    $CATEGORIZE
    rm Omanyte.txt
    unset OMANYTE
  fi

  if [ "$OMASTAR" != "" ];
  then
    printf "%s" "$OMASTAR" > Omastar.txt
    export CATFILE="Omastar.txt"
    export CATNAME="Omastar"
    $CATEGORIZE
    rm Omastar.txt
    unset OMASTAR
  fi

  if [ "$ONIX" != "" ];
  then
    printf "%s" "$ONIX" > Onix.txt
    export CATFILE="Onix.txt"
    export CATNAME="Onix"
    $CATEGORIZE
    rm Onix.txt
    unset ONIX
  fi

  if [ "$OSHAWOTT" != "" ];
  then
    printf "%s" "$OSHAWOTT" > Oshawott.txt
    export CATFILE="Oshawott.txt"
    export CATNAME="Oshawott"
    $CATEGORIZE
    rm Oshawott.txt
    unset OSHAWOTT
  fi

  debug_end "Pokemon 'O' scripts"

fi