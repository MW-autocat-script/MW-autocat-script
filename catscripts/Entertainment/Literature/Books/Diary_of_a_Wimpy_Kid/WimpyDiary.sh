#!/bin/bash

KEYWORDS_WIMPYDIARY="Diary(| )of(| )a(| )Wimpy(| )Kid"

if [ "$1" == "" ];
then
  
  debug_start "Diary of a Wimpy Kid"

  WIMPY=$(egrep -i "$KEYWORDS_WIMPYDIARY" "$NEWPAGES")

  categorize "WIMPY" "Diary of a Wimpy Kid"

  debug_end "Diary of a Wimpy Kid"

fi