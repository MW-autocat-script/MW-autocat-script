#!/bin/bash

KEYWORDS_COTEDIVOIRE="C[oô]te(| )d(|')Ivoire|Ivory(| )Coast"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Côte d'Ivoire\n"
  fi

  COTEDIVOIRE=$(egrep -i "$KEYWORDS_COTEDIVOIRE" newpages.txt)

  if [ "$COTEDIVOIRE" != "" ];
  then
    printf "$COTEDIVOIRE" > CotedIvoire.txt
    export CATFILE="CotedIvoire.txt"
    export CATNAME="Côte d'Ivoire"
    $CATEGORIZE
    rm CotedIvoire.txt
    unset COTEDIVOIRE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Côte d'Ivoire"
  fi

fi

