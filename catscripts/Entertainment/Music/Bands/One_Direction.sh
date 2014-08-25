#!/bin/bash

KEYWORDS_HARRYSTYLES="Harry(| )(|Edward)(| )Style"
KEYWORDS_NIALLHORAN="Horan"
KEYWORDS_ZAYNMALIK="Zayn(| )Malik"
KEYWORDS_LOUISTOMLINSON="Louis(| )(|William)(| )Tomlinson"
KEYWORDS_LIAMPAYNE="Liam(| )(|James)(| )Payne"
KEYWORDS_ONEDIRECTION="One(| )Direction|1D\b|$KEYWORDS_HARRYSTYLES|$KEYWORDS_NIALLHORAN|$KEYWORDS_ZAYNMALIK|$KEYWORDS_LOUISTOMLINSON|$KEYWORDS_LIAMPAYNE"

if [ "$1" == "" ];
then

  debug_start "One Direction"

  ONEDIRECTION=$(egrep -i "$KEYWORDS_ONEDIRECTION" "$NEWPAGES")

  categorize "ONEDIRECTION" "One Direction"

  debug_end "One Direction"

fi