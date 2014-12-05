#!/bin/bash

KEYWORDS_DICKINSONREALDEAL="Dick(i|e)nson(|')(|s)(| )Real(| )Deal|Karen(| )Dalmeny|(Cheryl|David)(| )Hakeney|Mike(| )Melody|David(| )Dickinson"
KEYWORDS_DICKINSONREALDEAL_ALL="$KEYWORDS_DICKINSONREALDEAL"

if [ "$1" == "" ];
then
  
  debug_start "Dickinson's Real Deal"

  REALDEAL=$(egrep -i "$KEYWORDS_DICKINSONREALDEAL" "$NEWPAGES")

  categorize "REALDEAL" "Dickinson's Real Deal"

  debug_end "Dickinson's Real Deal"

fi