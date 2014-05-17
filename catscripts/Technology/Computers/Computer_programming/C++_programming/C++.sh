#!/bin/bash

KEYWORDS_CPLUSPLUS="C\+\+|C Plus Plus"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting C++\n"
  fi

  CPLUSPLUS=$(egrep -i "$KEYWORDS_CPLUSPLUS" newpages.txt)

  if [ "$CPLUSPLUS" != "" ];
  then
    printf "$CPLUSPLUS" > CPlusPlus.txt
    export CATFILE="CPlusPlus.txt"
    export CATNAME="C++ programming"
    $CATEGORIZE
    rm CPlusPlus.txt
    unset CPLUSPLUS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing C++\n"
  fi

fi