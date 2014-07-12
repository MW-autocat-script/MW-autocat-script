#!/bin/bash

KEYWORDS_CPLUSPLUS="C\+\+|C Plus Plus"
KEYWORDS_CPLUSPLUS_ALL="$KEYWORDS_CPLUSPLUS"
KEYWORDS_CPLUSPLUS_ALL="$KEYWORDS_CPLUSPLUS_ALL"

if [ "$1" == "" ];
then
  
  debug_start "C++"

  CPLUSPLUS=$(egrep -i "$KEYWORDS_CPLUSPLUS" newpages.txt)

  if [ "$CPLUSPLUS" != "" ];
  then
    printf "%s" "$CPLUSPLUS" > CPlusPlus.txt
    export CATFILE="CPlusPlus.txt"
    export CATNAME="C++ programming"
    $CATEGORIZE
    rm CPlusPlus.txt
    unset CPLUSPLUS
  fi

  debug_end "C++"

fi