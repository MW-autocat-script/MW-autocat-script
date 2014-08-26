#!/bin/bash

KEYWORDS_ANTIGUAANDBARBUDA="Antigua|Barbuda"
KEYWORDS_ANTIGUAANDBARBUDA_ALL="$KEYWORDS_ANTIGUAANDBARBUDA"

if [ "$1" == "" ];
then
  
  debug_start "Antigua and Barbuda"

  ANTIGUA=$(egrep -i "$KEYWORDS_ANTIGUAANDBARBUDA" "$NEWPAGES")

  categorize "ANTIGUA" "Antigua and Barbuda"

  debug_end "Antigua and Barbuda"

fi
