#!/bin/bash

KEYWORDS_TEXAS="Texa(s|n)"
KEYWORDS_DALLAS="Dallas"
KEYWORDS_HOUSTON="Houston"
KEYWORDS_SANANTONIO="San(| )Antonio"
KEYWORDS_TEXAS_EXCLUDE="$KEYWORDS_DALLAS|$KEYWORDS_HOUSTON|$KEYWORDS_SANANTONIO"
KEYWORDS_DALLAS_EXCLUDE="Dallas(| )Cowboys"
KEYWORDS_HOUSTON_EXCLUDE="(Sam|Whitney)(| )Houston"


if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Texas\n"
  fi

  TEXAS=$(egrep -i "$KEYWORDS_TEXAS" newpages.txt | egrep -iv "$KEYWORDS_TEXAS_EXCLUDE")
  DALLAS=$(egrep -i "$KEYWORDS_DALLAS" newpages.txt | egrep -iv "$KEYWORDS_DALLAS_EXCLUDE")
  HOUSTON=$(egrep -i "$KEYWORDS_HOUSTON" newpages.txt | egrep -iv "$KEYWORDS_HOUSTON_EXCLUDE")
  SANANTONIO=$(egrep -i "$KEYWORDS_SANANTONIO" newpages.txt)

  if [ "$TEXAS" != "" ];
  then
    printf "$TEXAS" > Texas.txt
    export CATFILE="Texas.txt"
    export CATNAME="Texas"
    $CATEGORIZE
    rm Texas.txt
    unset TEXAS
  fi

  if [ "$DALLAS" != "" ];
  then
    printf "$DALLAS" > Dallas.txt
    export CATFILE="Dallas.txt"
    export CATNAME="Dallas"
    $CATEGORIZE
    rm Dallas.txt
    unset DALLAS
  fi

  if [ "$HOUSTON" != "" ];
  then
    printf "$HOUSTON" > Houston.txt
    export CATFILE="Houston.txt"
    export CATNAME="Houston"
    $CATEGORIZE
    rm Houston.txt
    unset HOUSTON
  fi

  if [ "$SANANTONIO" != "" ];
  then
    printf "$SANANTONIO" > SanAntonio.txt
    export CATFILE="SanAntonio.txt"
    export CATNAME="San Antonio"
    $CATEGORIZE
    rm SanAntonio.txt
    unset SANANTONIO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Texas\n"
  fi

fi