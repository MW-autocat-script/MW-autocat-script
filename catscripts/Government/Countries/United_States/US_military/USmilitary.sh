#!/bin/bash

KEYWORDS_USMILITARY="\bdod\b|Department(| )of(| )Defense|(US|U\.S(|\.)|United(| )States)(| )military"
KEYWORDS_USMC="(US|U\.S\.|United(| )States)(| )Marine(|s)(| )(|Corps)|USMC"
KEYWORDS_USARMY="(US|U\.S\.|United(| )States)(| )Army"
KEYWORDS_USAIRFORCE="(US|U\.S\.|United(| )States)(| )(|ch)Air(| )Force|USAF\b"
KEYWORDS_USNAVY="(US|U\.S\.|United(| )States)(| )Navy|\bUSN\b"
KEYWORDS_USCG="(US|U\.S\.|United(| )States)(| )Coast(| )Guard|USCG"
KEYWORDS_USMILITARY_EXCLUDE="$KEYWORDS_USMC|$KEYWORDS_USARMY|$KEYWORDS_USAIRFORCE|$KEYWORDS_USNAVY|$KEYWORDS_USCG|Lott Dod"
KEYWORDS_USMILITARY_ALL="$KEYWORDS_USMILITARY|$KEYWORDS_USMC|$KEYWORDS_USARMY|$KEYWORDS_USAIRFORCE|$KEYWORDS_USNAVY|$KEYWORDS_USCG"


if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "US military"

  USMC=$(egrep -i "$KEYWORDS_USMC" "$NEWPAGES")
  USARMY=$(egrep -i "$KEYWORDS_USARMY" "$NEWPAGES")
  USAF=$(egrep -i "$KEYWORDS_USAIRFORCE" "$NEWPAGES")
  USNAVY=$(egrep -i "$KEYWORDS_USNAVY" "$NEWPAGES")
  USCG=$(egrep -i "$KEYWORDS_USCG" "$NEWPAGES")
  USMILITARY=$(egrep -i "$KEYWORDS_USMILITARY" "$NEWPAGES" | egrep -iv "$KEYWORDS_USMILITARY_EXCLUDE")

  categorize "USMC" "United States Marine Corps"
  categorize "USARMY" "United States Army"
  categorize "USAF" "United States Air Force"
  categorize "USNAVY" "United States Navy"
  categorize "USCG" "United States Coast Guard"
  categorize "USMILITARY" "US military"

  debug_end "US military"

fi