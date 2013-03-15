#!/bin/bash

egrep -i 'original Doom|Doom 1|Doom (II\b|2)|Doom (3|III\b)|Doom (4|IV)|Final Doom|PrBoom' newpages.txt >> Doom.txt

DOOM=`stat --print=%s Doom.txt`

if [ $DOOM -ne 0 ];
then
  export CATFILE="Doom.txt"
  export CATNAME="Doom series"
  $CATEGORIZE
fi

rm Doom.txt