#!/bin/bash

KEYWORDS_JLS="\bJLS|Jack(| )the(| )Lad(| )Swing"

if [ "$1" == "" ];
then

  debug_start "JLS"

  JLS=$(egrep -i "$KEYWORDS_JLS" "$NEWPAGES")

  categorize "JLS" "JLS"

  debug_end "JLS"

fi