#!/bin/bash

KEYWORDS_QUAGSIRE="Quagsire"
KEYWORDS_QUILAVA="Quilava"
KEYWORDS_QWILFISH="Qwilfish"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon Q scripts"

  QUAGSIRE=$(egrep -i "$KEYWORDS_QUAGSIRE" "$NEWPAGES")
  QUILAVA=$(egrep -i "$KEYWORDS_QUILAVA" "$NEWPAGES")
  QWILFISH=$(egrep -i "$KEYWORDS_QWILFISH" "$NEWPAGES")

  categorize "QUAGSIRE" "Quagsire"
  categorize "QUILAVA" "Quilava"
  categorize "QWILFISH" "Qwilfish"

  debug_end "Pokemon Q scripts"

fi