#!/bin/bash

KEYWORDS_ALABAMA="Alabama"
KEYWORDS_ALABAMA_EXCLUDE="Sweet(| )Home(| )Alabama"

ALABAMA=$(egrep -i "$KEYWORDS_ALABAMA" newpages.txt | egrep -iv "$KEYWORDS_ALABAMA_EXCLUDE") 

if [ "$ALABAMA" != "" ];
then
  egrep -i "$KEYWORDS_ALABAMA" newpages.txt | egrep -iv "$KEYWORDS_ALABAMA_EXCLUDE" > Alabama.txt
  export CATFILE="Alabama.txt"
  export CATNAME="Alabama"
  $CATEGORIZE
  rm Alabama.txt
fi