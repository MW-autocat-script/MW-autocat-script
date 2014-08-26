#!/bin/bash

KEYWORDS_MULTIPLICATION="[0-9]{1,}(| )times(| )[0-9]{1,}|What(| )is(| )[0-9]{1,}(| )x(| )[0-9]{1,}|[0-9]{1,}(| )\*(| )[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Multiplication"

  MULTIPLICATION=$(egrep -i "$KEYWORDS_MULTIPLICATION" "$NEWPAGES")

  categorize "MULTIPLICATION" "Multiplication"

  debug_end "Multiplication"

fi