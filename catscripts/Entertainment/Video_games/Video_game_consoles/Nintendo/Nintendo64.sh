#!/bin/bash

KEYWORDS_N64="Nintendo(| )64|\bN64"

egrep -i "$KEYWORDS_N64" newpages.txt >> Nintendo64.txt

N64=$(stat --print=%s Nintendo64.txt)

if [ $N64 -ne 0 ];
then
  export CATFILE="Nintendo64.txt"
  export CATNAME="Nintendo 64"
  $CATEGORIZE
fi

rm Nintendo64.txt