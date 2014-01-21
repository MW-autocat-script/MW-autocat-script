#!/bin/bash

KEYWORDS_PAPUANEWGUINEA="Papua(| )New(| )Guinea"
KEYWORDS_PAPUANEWGUINEA_ALL="$KEYWORDS_PAPUANEWGUINEA"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Papua New Guinea\n"
  fi

  PAPUANEWGUINEA=`egrep -i "$KEYWORDS_PAPUANEWGUINEA" newpages.txt`

  if [ "$PAPUANEWGUINEA" != "" ];
  then
    printf "$PAPUANEWGUINEA" > PapuaNewGuinea.txt
    export CATFILE="PapuaNewGuinea.txt"
    export CATNAME="Papua New Guinea"
    $CATEGORIZE
    rm PapuaNewGuinea.txt
    unset PAPUANEWGUINEA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Papua New Guinea\n"
  fi

fi