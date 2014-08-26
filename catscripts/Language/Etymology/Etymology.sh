#!/bin/bash

KEYWORDS_ETYMOLOGY="etymology|etymological|Where(| )(does|did)(| )the(| )(word|phrase|saying).+(originate|come from)|origin(| )of(| )the(| )word(| )[a-z]{1,}"
KEYWORDS_NAMEORIGINS="Where(| )(does|did)(| )the(| )(sur|)name(| )[a-z]{1,}(| )(originate|come(| )from)|What(| )is(| )the(| )origin(| )of(| )the(| )name(| )[a-z]{1,}|(etymology|etymological(| )origin)(| )of(| )the(| )(|sur)name"

if [ "$1" == "" ];
then

  debug_start "Etymology"

  ETYMOLOGY=$(egrep -i "$KEYWORDS_ETYMOLOGY" "$NEWPAGES" | egrep -iv "$KEYWORDS_NAMEORIGINS")
  ORIGINS=$(egrep -i "$KEYWORDS_NAMEORIGINS" "$NEWPAGES")

  categorize "ETYMOLOGY" "Etymology"
  categorize "ORIGINS" "Name origins"

  debug_end "Etymology"

fi