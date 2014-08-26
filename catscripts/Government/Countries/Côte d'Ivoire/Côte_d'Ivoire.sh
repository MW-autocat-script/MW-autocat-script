#!/bin/bash

KEYWORDS_COTEDIVOIRE="C(o|ô)te(| )d(|')Ivoire|Ivory(| )Coast"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Côte d'Ivoire"

  COTEDIVOIRE=$(egrep -i "$KEYWORDS_COTEDIVOIRE" "$NEWPAGES")

  categorize "COTEDIVOIRE" "Côte d'Ivoire"

  debug_end "Côte d'Ivoire"

fi

