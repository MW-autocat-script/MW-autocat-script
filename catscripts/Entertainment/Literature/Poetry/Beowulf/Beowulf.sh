#!/bin/bash

KEYWORDS_BEOWULF="Beowulf|Unferth|Hrothgar|Grendel"

if [ "$1" == "" ];
then
  
  debug_start "Beowulf"

  BEOWULF=$(egrep -i "$KEYWORDS_BEOWULF" "$NEWPAGES")

  categorize "BEOWULF" "Beowulf"

  debug_end "Beowulf"

fi