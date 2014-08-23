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
  
  KINGDOMHEARTSSERIES=$(egrep -i "$KEYWORDS_KINGDOMHEARTSSERIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_KINGDOMHEARTSSERIES_EXCLUDE")
  KINGDOMHEARTSII=$(egrep -i "$KEYWORDS_KINGDOMHEARTS2" "$NEWPAGES")
  KINGDOMHEARTSIII=$(egrep -i "$KEYWORDS_KINGDOMHEARTS3" "$NEWPAGES")
  CHAINOFMEMORIES=$(egrep -i "$KEYWORDS_CHAINOFMEMORIES" "$NEWPAGES")
  BIRTHBYSLEEP=$(egrep -i "$KEYWORDS_BIRTHBYSLEEP" "$NEWPAGES")

  categorize "KINGDOMHEARTSSERIES" "Kingdom Hearts series"
  categorize "KINGDOMHEARTSII" "Kingdom Hearts II"
  categorize "KINGDOMHEARTSIII" "Kingdom Hearts III"
  categorize "CHAINOFMEMORIES" "Kingdom Hearts: Chain of Memories"
  categorize "BIRTHBYSLEEP" "Kingdom Hearts Birth by Sleep"

  debug_end "Kingdom Hearts series"

fi