#!/bin/bash

export KEYWORDS_MOVIES_THELIONKING="Lion(| )King|Simba|Mufasa|\bNala|Sarabi|Sarafina|Shenzi|Rafiki|\bTimon|Pumbaa|Kiara|Kovu|\bZira|Vitani|Pride Rock|Pridelands"

if [ "$1" == "" ];
then

  debug_start "The Lion King"

  LIONKING=$(egrep -i "$KEYWORDS_MOVIES_THELIONKING" "$NEWPAGES")

  categorize "LIONKING" "The Lion King"

  debug_end "The Lion King"

fi
