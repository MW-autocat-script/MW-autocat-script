#!/bin/bash

KEYWORDS_KINGDOMHEARTSSERIES="roxas|ventus|vanitas|xion|xenahort|sora.+kairi|kairi.+sora|sora.+riku|riku.+sora|kingdom(| )hearts|key(| )blade"
KEYWORDS_KINGDOMHEARTS2="Kingdom(| )Hearts(| )(2|II\b)|KH(| )(2|II\b)"
KEYWORDS_KINGDOMHEARTS3="Kingdom(| )Hearts(| )(3\b|III\b)|KH(| )(3\b|III\b)"
KEYWORDS_CHAINOFMEMORIES="Chain(| )of(| )Memories|KH:COM|\bKH(| )COM\b"
KEYWORDS_BIRTHBYSLEEP="Birth(| )by(| )Sleep|KH:BBS|KH(| )BBS"
KEYWORDS_KINGDOMHEARTSSERIES_EXCLUDE="$KEYWORDS_KINGDOMHEARTS2|$KEYWORDS_KINGDOMHEARTS3|$KEYWORDS_BIRTHBYSLEEP|$KEYWORDS_CHAINOFMEMORIES|final(| )mix|\bcom\b|358|Mar(| )Roxas"

if [ "$1" == "" ];
then

  debug_start "Kingdom Hearts series"
  
  KINGDOMHEARTSSERIES=$(egrep -i "$KEYWORDS_KINGDOMHEARTSSERIES" newpages.txt | egrep -iv "$KEYWORDS_KINGDOMHEARTSSERIES_EXCLUDE")
  KINGDOMHEARTSII=$(egrep -i "$KEYWORDS_KINGDOMHEARTS2" newpages.txt)
  KINGDOMHEARTSIII=$(egrep -i "$KEYWORDS_KINGDOMHEARTS3" newpages.txt)
  CHAINOFMEMORIES=$(egrep -i "$KEYWORDS_CHAINOFMEMORIES" newpages.txt)
  BIRTHBYSLEEP=$(egrep -i "$KEYWORDS_BIRTHBYSLEEP" newpages.txt)

  if [ "$KINGDOMHEARTSSERIES" != "" ];
  then
    printf "%s" "$KINGDOMHEARTSSERIES" > KingdomHeartsSeries.txt
    export CATFILE="KingdomHeartsSeries.txt"
    export CATNAME="Kingdom Hearts series"
    $CATEGORIZE
    rm KingdomHeartsSeries.txt
    unset KINGDOMHEARTSSERIES
  fi

  if [ "$KINGDOMHEARTSII" != "" ];
  then
    printf "%s" "$KINGDOMHEARTSII" > KingdomHeartsII.txt
    export CATFILE="KingdomHeartsII.txt"
    export CATNAME="Kingdom Hearts II"
    $CATEGORIZE
    rm KingdomHeartsII.txt
    unset KINGDOMHEARTSII
  fi

  if [ "$KINGDOMHEARTSIII" != "" ];
  then
    printf "%s" "$KINGDOMHEARTSIII" > KingdomHeartsIII.txt
    export CATFILE="KingdomHeartsIII.txt"
    export CATNAME="Kingdom Hearts III"
    $CATEGORIZE
    rm KingdomHeartsIII.txt
    unset KINGDOMHEARTSIII
  fi

  if [ "$CHAINOFMEMORIES" != "" ];
  then
    printf "%s" "$CHAINOFMEMORIES" > ChainOfMemories.txt
    export CATFILE="ChainOfMemories.txt"
    export CATNAME="Kingdom Hearts: Chain of Memories"
    $CATEGORIZE
    rm ChainOfMemories.txt
    unset CHAINOFMEMORIES
  fi

  if [ "$BIRTHBYSLEEP" != "" ];
  then
    printf "%s" "$BIRTHBYSLEEP" > BirthBySleep.txt
    export CATFILE="BirthBySleep.txt"
    export CATNAME="Kingdom Hearts Birth by Sleep"
    $CATEGORIZE
    rm BirthBySleep.txt
    unset BIRTHBYSLEEP
  fi

  debug_end "Kingdom Hearts series"

fi