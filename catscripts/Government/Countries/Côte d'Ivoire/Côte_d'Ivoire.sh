#!/bin/bash

KEYWORDS_COTEDIVOIRE="C[oô]te(| )d(|')Ivoire|Ivory(| )Coast"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Côte d'Ivoire"

  COTEDIVOIRE=$(egrep -i "$KEYWORDS_COTEDIVOIRE" newpages.txt)

  if [ "$COTEDIVOIRE" != "" ];
  then
    printf "%s" "$COTEDIVOIRE" > CotedIvoire.txt
    export CATFILE="CotedIvoire.txt"
    export CATNAME="Côte d'Ivoire"
    $CATEGORIZE
    rm CotedIvoire.txt
    unset COTEDIVOIRE
  fi

  debug_end "Côte d'Ivoire"

fi

