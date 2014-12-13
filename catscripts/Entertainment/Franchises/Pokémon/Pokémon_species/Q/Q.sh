#!/bin/bash

KEYWORDS_QUAGSIRE="Quagsire"
KEYWORDS_QUILAVA="Quilava"
KEYWORDS_QUILLADIN="Quilladin"
KEYWORDS_QWILFISH="Qwilfish"
KEYWORDS_POKEMONSPECIES_Q="$KEYWORDS_QUAGSIRE|$KEYWORDS_QUILAVA|$KEYWORDS_QUILLADIN|$KEYWORDS_QWILFISH"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon Q scripts"

  QUAGSIRE=$(egrep -i "$KEYWORDS_QUAGSIRE" "$NEWPAGES")
  QUILAVA=$(egrep -i "$KEYWORDS_QUILAVA" "$NEWPAGES")
  QUILLADIN=$(egrep -i "$KEYWORDS_QUILLADIN" "$NEWPAGES")
  QWILFISH=$(egrep -i "$KEYWORDS_QWILFISH" "$NEWPAGES")

  categorize "QUAGSIRE" "Quagsire"
  categorize "QUILAVA" "Quilava"
  categorize "QUILLADIN" "Quilladin"
  categorize "QWILFISH" "Qwilfish"

  debug_end "Pokemon Q scripts"

fi