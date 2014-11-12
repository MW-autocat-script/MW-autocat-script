#!/bin/bash

KEYWORDS_ENGLISHTONAVAJO=".+in Navajo$]|Navajo word for"

if [ "$1" == "" ];
then

  debug_start "English to Navajo"

  ENGLISHTONAVAJO=$(egrep -i "$KEYWORDS_ENGLISHTONAVAJO" "$NEWPAGES")

  categorize "ENGLISHTONAVAJO" "English to Navajo"

  debug_end "English to Navajo"

fi