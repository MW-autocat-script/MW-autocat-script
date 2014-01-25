#!/bin/bash

KEYWORDS_GERMANY="Germany"
KEYWORDS_NAZIGERMANY="Nazi"
KEYWORDS_HITLER="Hitler"
KEYWORDS_NAZIGERMANY_SECONDARY="Hitler(| )youth"
KEYWORDS_HITLER_EXCLUDE="$KEYWORDS_NAZIGERMANY_SECONDARY"
KEYWORDS_BERLIN="Berlin"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"
KEYWORDS_NAZIGERMANY_EXCLUDE="$KEYWORDS_HITLER|$KEYWORDS_AUSCHWITZ"
KEYWORDS_GERMANY_EXCLUDE="$KEYWORDS_NAZIGERMANY|$KEYWORDS_HITLER|$KEYWORDS_NAZIGERMANY_SECONDARY|$KEYWORDS_AUSCHWITZ|$KEYWORDS_BERLIN"

KEYWORDS_GERMANY_ALL="$KEYWORDS_GERMANY|$KEYWORDS_NAZIGERMANY|$KEYWORDS_HITLER|$KEYWORDS_NAZIGERMANY_SECONDARY|$KEYWORDS_BERLIN|$KEYWORDS_AUSCHWITZ"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Germany\n"
  fi

  GERMANY=`egrep -i "$KEYWORDS_GERMANY" newpages.txt | egrep -iv "$KEYWORDS_GERMANY_EXCLUDE"`
  NAZI=`egrep -i "$KEYWORDS_NAZIGERMANY" newpages.txt | egrep -iv "$KEYWORDS_NAZIGERMANY_EXCLUDE"`
  NAZISECONDARY=`egrep -i "$KEYWORDS_NAZIGERMANY_SECONDARY" newpages.txt`
  HITLER=`egrep -i "$KEYWORDS_HITLER" newpages.txt | egrep -iv "$KEYWORDS_HITLER_EXCLUDE"`
  BERLIN=`egrep -i "$KEYWORDS_BERLIN" newpages.txt`

  if [ "$GERMANY" != "" ];
  then
    printf "$GERMANY" > Germany.txt
    export CATFILE="Germany.txt"
    export CATNAME="Germany"
    $CATEGORIZE
    rm Germany.txt
    unset GERMANY
  fi

  if [ "$NAZI" != "" ] || [ "$NAZISECONDARY" != "" ];
  then
    printf "$NAZI" > NaziGermany.txt
    printf "$NAZISECONDARY" >> NaziGermany.txt
    export CATFILE="NaziGermany.txt"
    export CATNAME="Nazi Germany"
    $CATEGORIZE
    rm NaziGermany.txt
    unset NAZI
    unset NAZISECONDARY
  fi

  if [ "$HITLER" != "" ];
  then
    printf "$HITLER" > AdolfHitler.txt
    export CATFILE="AdolfHitler.txt"
    export CATNAME="Adolf Hitler"
    $CATEGORIZE
    rm AdolfHitler.txt
    unset HITLER
  fi

  if [ "$BERLIN" != "" ];
  then
    printf "$BERLIN" > Berlin.txt
    export CATFILE="Berlin.txt"
    export CATNAME="Berlin"
    $CATEGORIZE
    rm Berlin.txt
    unset BERLIN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Germany\n"
  fi

fi
