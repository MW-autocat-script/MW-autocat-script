#!/bin/bash

export KEYWORDS_ACTOR_JACKIECHAN="Jackie(| )Chan"

egrep -i "$KEYWORDS_ACTOR_JACKIECHAN" newpages.txt >> JackieChan.txt

JACKIECHAN=`stat --print=%s JackieChan.txt`

if [ $JACKIECHAN -ne 0 ];
then
  export CATFILE="JackieChan.txt"
  export CATNAME="Jackie Chan"
  $CATEGORIZE
fi

rm JackieChan.txt