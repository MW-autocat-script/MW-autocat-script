#!/bin/bash

KEYWORDS_STEPHENHAWKING="Stephen(| )Hawking"
KEYWORDS_CHARLESDARWIN="Charles(| )Darwin"
KEYWORDS_LEONARDODAVINCI="Leonardo(| )da(| )Vinci"
KEYWORDS_MARIECURIE="Marie(| )Curie"
KEYWORDS_ISAACNEWTON="Isaac(| )Newton"
KEYWORDS_GREGORMENDEL="Mendel(|s)\b"
KEYWORDS_SCIENTISTS_ALL="$KEYWORDS_STEPHENHAWKING|$KEYWORDS_CHARLESDARWIN|$KEYWORDS_LEONARDODAVINCI|$KEYWORDS_MARIECURIE|$KEYWORDS_ISAACNEWTON|$KEYWORDS_GREGORMENDEL"

if [ "$1" == "" ];
then

  debug_start "Scientists"

  HAWKING=$(egrep -i "$KEYWORDS_STEPHENHAWKING" "$NEWPAGES")
  DARWIN=$(egrep -i "$KEYWORDS_CHARLESDARWIN" "$NEWPAGES")
  DAVINCI=$(egrep -i "$KEYWORDS_LEONARDODAVINCI" "$NEWPAGES")
  CURIE=$(egrep -i "$KEYWORDS_MARIECURIE" "$NEWPAGES")
  NEWTON=$(egrep -i "$KEYWORDS_ISAACNEWTON" "$NEWPAGES")
  MENDEL=$(egrep -i "$KEYWORDS_GREGORMENDEL" "$NEWPAGES")

  if [ "$HAWKING" != "" ];
  then
    printf "%s" "$HAWKING" > StephenHawking.txt
    export CATFILE="StephenHawking.txt"
    export CATNAME="Stephen Hawking"
    $CATEGORIZE
    rm StephenHawking.txt
    unset HAWKING
  fi

  if [ "$DARWIN" != "" ];
  then
    printf "%s" "$DARWIN" > CharlesDarwin.txt
    export CATFILE="CharlesDarwin.txt"
    export CATNAME="Charles Darwin"
    $CATEGORIZE
    rm CharlesDarwin.txt
    unset DARWIN
  fi

  if [ "$DAVINCI" != "" ];
  then
    printf "%s" "$DAVINCI" > LeonardoDaVinci.txt
    export CATFILE="LeonardoDaVinci.txt"
    export CATNAME="Leonardo da Vinci"
    $CATEGORIZE
    rm LeonardoDaVinci.txt
    unset DAVINCI
  fi

  if [ "$CURIE" != "" ];
  then
    printf "%s" "$CURIE" > MarieCurie.txt
    export CATFILE="MarieCurie.txt"
    export CATNAME="Marie Curie"
    $CATEGORIZE
    rm MarieCurie.txt
    unset CURIE
  fi

  if [ "$MENDEL" != "" ];
  then
    printf "%s" "$MENDEL" > Mendel.txt
    export CATFILE="Mendel.txt"
    export CATNAME="Gregor Mendel"
    $CATEGORIZE
    rm Mendel.txt
    unset MENDEL
  fi

  if [ "$NEWTON" != "" ];
  then
    printf "%s" "$NEWTON" > IsaacNewton.txt
    export CATFILE="IsaacNewton.txt"
    export CATNAME="Isaac Newton"
    $CATEGORIZE
    rm IsaacNewton.txt
    unset NEWTON
  fi

  debug_end "Scientists"

fi