#!/bin/bash

KEYWORDS_YEMEN="Yemen"
KEYWORDS_YEMEN_ALL="Yemen"

if [ "$1" == "" ]; #Normal operation
then
   debug_start "Yemen"

   YEMEN=$(egrep -i "$KEYWORDS_YEMEN" "$NEWPAGES")

   categorize "YEMEN" "Yemen"

   debug_end "Yemen"

fi 
