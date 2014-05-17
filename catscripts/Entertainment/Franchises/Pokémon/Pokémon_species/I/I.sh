#!/bin/bash

KEYWORDS_IGGLYBUFF="Igglybuff"
KEYWORDS_ILLUMISE="Illumise"
KEYWORDS_INFERNAPE="Infernape"
KEYWORDS_IVYSAUR="Ivysaur"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon I script\n"
  fi

  IGGLYBUFF=$(egrep -i "$KEYWORDS_IGGLYBUFF" newpages.txt)
  ILLUMISE=$(egrep -i "$KEYWORDS_ILLUMISE" newpages.txt)
  INFERNAPE=$(egrep -i "$KEYWORDS_INFERNAPE" newpages.txt)
  IVYSAUR=$(egrep -i "$KEYWORDS_IVYSAUR" newpages.txt)

  if [ "$IGGLYBUFF" != "" ];
  then
    printf "$IGGLYBUFF" > Igglybuff.txt
    export CATFILE="Igglybuff.txt"
    export CATNAME="Igglybuff"
    $CATEGORIZE
    rm Igglybuff.txt
    unset IGGLYBUFF
  fi

  if [ "$ILLUMISE" != "" ];
  then
    printf "$ILLUMISE" > Illumise.txt
    export CATFILE="Illumise.txt"
    export CATNAME="Illumise"
    $CATEGORIZE
    rm Illumise.txt
    unset ILLUMISE
  fi

  if [ "$INFERNAPE" != "" ];
  then
    printf "$INFERNAPE" > Infernape.txt
    export CATFILE="Infernape.txt"
    export CATNAME="Infernape"
    $CATEGORIZE
    rm Infernape.txt
    unset INFERNAPE
  fi

  if [ "$IVYSAUR" != "" ];
  then
    printf "$IVYSAUR" > Ivysaur.txt
    export CATFILE="Ivysaur.txt"
    export CATNAME="Ivysaur"
    $CATEGORIZE
    rm Ivysaur.txt
    unset IVYSAUR
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon I script\n"
  fi

fi