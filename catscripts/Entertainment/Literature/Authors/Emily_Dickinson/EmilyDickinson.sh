#!/bin/bash

KEYWORDS_EMILYDICKINSON="Emily(| )Dickinson"

if [ "$1" == "" ];
then
  
  debug_start "Emily Dickinson"

  DICKINSON=$(egrep -i "$KEYWORDS_EMILYDICKINSON" "$NEWPAGES")

  categorize "DICKINSON" "Emily Dickinson"

  debug_end "Emily Dickinson"

fi