#!/bin/bash

KEYWORDS_LEWISCARROLL="Lewis(| )Car(|r)o(|l)l|Charles(| )(|Lutwidge)(| )Dodgson"

if [ "$1" == "" ];
then
  
  debug_start "Lewis Carroll"

  CARROLL=$(egrep -i "$KEYWORDS_LEWISCARROLL" "$NEWPAGES")

  categorize "CARROLL" "Lewis Carroll"

  debug_end "Lewis Carroll"

fi