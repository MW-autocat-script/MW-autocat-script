#!/bin/bash

export KEYWORDS_MOVIES_JURASSIC_PARK="Jur(|r)as(|s)ic(| )Park"

egrep -i "$KEYWORDS_MOVIES_JURASSIC_PARK" newpages.txt >> JurassicPark.txt

JURASSICPARK=`stat --print=%s JurassicPark.txt`

if [ $JURASSICPARK -ne 0 ];
then
  export CATFILE="JurassicPark.txt"
  export CATNAME="Jurassic Park"
  $CATEGORIZE
fi

rm JurassicPark.txt