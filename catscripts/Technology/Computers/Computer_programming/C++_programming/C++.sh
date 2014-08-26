#!/bin/bash

KEYWORDS_CPLUSPLUS="C\+\+|C Plus Plus"
KEYWORDS_CPLUSPLUS_ALL="$KEYWORDS_CPLUSPLUS"
KEYWORDS_CPLUSPLUS_ALL="$KEYWORDS_CPLUSPLUS_ALL"

if [ "$1" == "" ];
then
  
  debug_start "C++"

  CPLUSPLUS=$(egrep -i "$KEYWORDS_CPLUSPLUS" "$NEWPAGES")

  categorize "CPLUSPLUS" "C++ programming"

  debug_end "C++"

fi