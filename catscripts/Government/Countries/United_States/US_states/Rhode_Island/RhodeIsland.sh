#!/bin/bash

KEYWORDS_RHODEISLAND="Rhode(| )Island"

RHODEISLAND=$(egrep -i "$KEYWORDS_RHODEISLAND" newpages.txt)

if [ "$RHODEISLAND" != "" ];
then
  egrep -i "$KEYWORDS_RHODEISLAND" newpages.txt > RhodeIsland.txt
  export CATFILE="RhodeIsland.txt"
  export CATNAME="Rhode Island"
  $CATEGORIZE
  rm RhodeIsland.txt
  unset RHODEISLAND
fi