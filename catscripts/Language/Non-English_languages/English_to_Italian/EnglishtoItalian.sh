#!/bin/bash

KEYWORDS_ENGLISHTOITALIAN="How(| )(do(| )you|to)(| )(say|spell).+in(| )Italian|What((|')s|(| )is)(| )the(| )Italian(| )word(| )for|[abcdefghijklmopqrstuvwxyz]{1,}(| )in(| )Italian"

if [ "$1" == "" ];
then

  debug_start "English to Italian"

  ENGLISHTOITALIAN=$(egrep -i "$KEYWORDS_ENGLISHTOITALIAN" "$NEWPAGES")

  if [ "$ENGLISHTOITALIAN" != "" ];
  then
    printf "%s" "$ENGLISHTOITALIAN" > EnglishtoItalian.txt
    export CATFILE="EnglishtoItalian.txt"
    export CATNAME="English to Italian"
    $CATEGORIZE
    rm EnglishtoItalian.txt
    unset ENGLISHTOITALIAN
  fi

  debug_end "English to Italian"

fi
