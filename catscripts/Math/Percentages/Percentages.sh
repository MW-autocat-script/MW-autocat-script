#!/bin/bash

KEYWORDS_PERCENTAGES="(|\$)[0-9]{1,}(\.[0-9]{1,}|)(| )is(| )what(| )percent(|age)(| )of(| )(|\$)[0-9]{1,}(\.[0-9]{1,}|)|What(| )percent(|age)(| )of(| )[0-9]{1,}(| )is(| )[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Percentages"

  PERCENTAGES=$(egrep -i "$KEYWORDS_PERCENTAGES" newpages.txt)

  if [ "$PERCENTAGES" != "" ];
  then
    printf "%s" "$PERCENTAGES" > Percentages.txt
    export CATFILE="Percentages.txt"
    export CATNAME="Percentages"
    $CATEGORIZE
    rm Percentages.txt
    unset PERCENTAGES
  fi

  debug_end "Percentages"

fi