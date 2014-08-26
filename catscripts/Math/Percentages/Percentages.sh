#!/bin/bash

KEYWORDS_PERCENTAGES="(|\$)[0-9]{1,}(\.[0-9]{1,}|)(| )is(| )what(| )percent(|age)(| )of(| )(|\$)[0-9]{1,}(\.[0-9]{1,}|)|What(| )percent(|age)(| )of(| )[0-9]{1,}(| )is(| )[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Percentages"

  PERCENTAGES=$(egrep -i "$KEYWORDS_PERCENTAGES" "$NEWPAGES")

  categorize "PERCENTAGES" "Percentages"

  debug_end "Percentages"

fi