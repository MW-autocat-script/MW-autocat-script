#!/bin/bash

KEYWORDS_IGGLYBUFF="Igglybuff"
KEYWORDS_ILLUMISE="Illumise"
KEYWORDS_INFERNAPE="Infernape"
KEYWORDS_INKAY="Inkay"
KEYWORDS_IVYSAUR="Ivysaur"
KEYWORDS_POKEMONSPECIES_I="$KEYWORDS_IGGLYBUFF|$KEYWORDS_ILLUMISE|$KEYWORDS_INFERNAPE|$KEYWORDS_INKAY|$KEYWORDS_IVYSAUR"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon I script"

  IGGLYBUFF=$(egrep -i "$KEYWORDS_IGGLYBUFF" "$NEWPAGES")
  ILLUMISE=$(egrep -i "$KEYWORDS_ILLUMISE" "$NEWPAGES")
  INFERNAPE=$(egrep -i "$KEYWORDS_INFERNAPE" "$NEWPAGES")
  INKAY=$(egrep -i "$KEYWORDS_INKAY" "$NEWPAGES")
  IVYSAUR=$(egrep -i "$KEYWORDS_IVYSAUR" "$NEWPAGES")

  categorize "IGGLYBUFF" "Igglybuff"
  categorize "ILLUMISE" "Illumise"
  categorize "INFERNAPE" "Infernape"
  categorize "INKAY" "Inkay"
  categorize "IVYSAUR" "Ivysaur"

  debug_end "Pokemon I script"

fi