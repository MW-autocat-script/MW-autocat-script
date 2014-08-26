#!/bin/bash
#Script for the children's cartoon Danny Phantom

KEYWORDS_DANNYPHANTOM="Danny(| )Phantom"

if [ "$1" == "" ];
then

  debug_start "Danny Phantom"

  DANNYPHANTOM=$(egrep -i "$KEYWORDS_DANNYPHANTOM" "$NEWPAGES")

  categorize "DANNYPHANTOM" "Danny Phantom"

  debug_end "Danny Phantom"

fi