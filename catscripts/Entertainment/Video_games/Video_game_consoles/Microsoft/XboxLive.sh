#!/bin/bash

KEYWORDS_XBOXLIVE="X(|-)box(| )Live"

egrep -i "$KEYWORDS_XBOXLIVE" newpages.txt >> XboxLive.txt

XBOXLIVE=$(stat --print=%s XboxLive.txt)

if [ $XBOXLIVE -ne 0 ];
then
  export CATFILE="XboxLive.txt"
  export CATNAME="Xbox Live"
  $CATEGORIZE
fi

rm XboxLive.txt