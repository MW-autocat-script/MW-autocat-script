#!/bin/bash

KEYWORDS_TEXAS="Texa(s|n)"
KEYWORDS_DALLAS="Dallas"
KEYWORDS_HOUSTON="Houston"
KEYWORDS_SANANTONIO="San(| )Antonio"
KEYWORDS_TEXAS_EXCLUDE="$KEYWORDS_DALLAS|$KEYWORDS_HOUSTON|$KEYWORDS_SANANTONIO"
KEYWORDS_DALLAS_EXCLUDE="Dallas(| )Cowboys"
KEYWORDS_HOUSTON_EXCLUDE="(Sam|Whitney)(| )Houston"


if [ "$1" == "" ];
then
  egrep -i "$KEYWORDS_TEXAS" newpages.txt | egrep -iv "$KEYWORDS_TEXAS_EXCLUDE" > Texas.txt
  egrep -i "$KEYWORDS_DALLAS" newpages.txt | egrep -iv "$KEYWORDS_DALLAS_EXCLUDE" > Dallas.txt
  egrep -i "$KEYWORDS_HOUSTON" newpages.txt | egrep -iv "$KEYWORDS_HOUSTON_EXCLUDE" > Houston.txt
  egrep -i "$KEYWORDS_SANANTONIO" newpages.txt > SanAntonio.txt

  TEXAS=`stat --print=%s Texas.txt`
  DALLAS=`stat --print=%s Dallas.txt`
  HOUSTON=`stat --print=%s Houston.txt`
  SANANTONIO=`stat --print=%s SanAntonio.txt`

  if [ $TEXAS -ne 0 ];
  then
    export CATFILE="Texas.txt"
    export CATNAME="Texas"
    $CATEGORIZE
  fi

  if [ $DALLAS -ne 0 ];
  then
    export CATFILE="Dallas.txt"
    export CATNAME="Dallas"
    $CATEGORIZE
  fi

  if [ $HOUSTON -ne 0 ];
  then
    export CATFILE="Houston.txt"
    export CATNAME="Houston"
    $CATEGORIZE
  fi

  if [ $SANANTONIO -ne 0 ];
  then
    export CATFILE="SanAntonio.txt"
    export CATNAME="San Antonio"
    $CATEGORIZE
  fi

  rm Texas.txt
  rm Dallas.txt
  rm Houston.txt
  rm SanAntonio.txt

fi