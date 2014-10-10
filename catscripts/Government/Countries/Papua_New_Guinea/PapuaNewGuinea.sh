#!/bin/bash

KEYWORDS_PAPUANEWGUINEA="Papua(| )New(| )Guinea"
KEYWORDS_PAPUANEWGUINEA_ALL="$KEYWORDS_PAPUANEWGUINEA"

if [ "$1" == "" ];
then
  
  debug_start "Papua New Guinea"

  PAPUANEWGUINEA=$(egrep -i "$KEYWORDS_PAPUANEWGUINEA" "$NEWPAGES")

  categorize "PAPUANEWGUINEA" "Papua New Guinea"

  debug_end "Papua New Guinea"

fi