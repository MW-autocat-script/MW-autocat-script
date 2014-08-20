#!/bin/bash

KEYWORDS_PAPUANEWGUINEA="Papua(| )New(| )Guinea"
KEYWORDS_PAPUANEWGUINEA_ALL="$KEYWORDS_PAPUANEWGUINEA"

if [ "$1" == "" ];
then
  
  debug_start "Papua New Guinea"

  PAPUANEWGUINEA=$(egrep -i "$KEYWORDS_PAPUANEWGUINEA" "$NEWPAGES")

  if [ "$PAPUANEWGUINEA" != "" ];
  then
    printf "%s" "$PAPUANEWGUINEA" > PapuaNewGuinea.txt
    export CATFILE="PapuaNewGuinea.txt"
    export CATNAME="Papua New Guinea"
    $CATEGORIZE
    rm PapuaNewGuinea.txt
    unset PAPUANEWGUINEA
  fi

  debug_end "Papua New Guinea"

fi