#!/bin/bash

export KEYWORDS_MMORPG_WIZARD101="Wizard(|s)(| )101"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wizard101"

  WIZARD101=$(egrep -i "$KEYWORDS_MMORPG_WIZARD101" "$NEWPAGES")

  categorize "WIZARD101" "Wizard101"

  debug_end "Wizard101"

fi