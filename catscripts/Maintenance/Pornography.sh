#!/bin/bash

KEYWORDS_PORNOGRAPHY="porn|hentai|lolicon|futanari|sex.+videos|videos.+sex"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Pornography maintenance script"

  PORN=$(egrep -i "$KEYWORDS_PORNOGRAPHY" "$NEWPAGES")

  categorize "PORN" "Pornography"

  debug_end "Pornography maintenance script"

fi