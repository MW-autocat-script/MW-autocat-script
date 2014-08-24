#!/bin/bash 

KEYWORDS_NITROGEN="\bNitrogen\b|\bNitrogens\b"
KEYWORDS_NITROGEN_EXCLUDE="Nitrogen \b.+(ate|ide|ite)"
KEYWORDS_PHOSPHORUS="Phosphorus|Phosphorous"
KEYWORDS_PHOSPHORUS_EXCLUDE="Phosphorus \b.+(ate|ide|ite)"
KEYWORDS_ARSENIC="Arsenic"
KEYWORDS_ARSENIC_EXCLUDE="Arsenic \b.+(ate|ide|ite)"
KEYWORDS_ANTIMONY="\bAntimony\b"
KEYWORDS_ANTIMONY_EXCLUDE="Antimony \b.+(ate|ide|ite)"
KEYWORDS_BISMUTH="Bismuth"
KEYWORDS_UNUNPENTIUM="Ununpentium"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Group 15 elements"

  NITROGEN=$(egrep -i "$KEYWORDS_NITROGEN" "$NEWPAGES" | egrep -iv "$KEYWORDS_NITROGEN_EXCLUDE")
  PHOSPHORUS=$(egrep -i "$KEYWORDS_PHOSPHORUS" "$NEWPAGES" | egrep -iv "$KEYWORDS_PHOSPHORUS_EXCLUDE")
  ARSENIC=$(egrep -i "$KEYWORDS_ARSENIC" "$NEWPAGES" | egrep -iv "$KEYWORDS_ARSENIC_EXCLUDE")
  ANTIMONY=$(egrep -i "$KEYWORDS_ANTIMONY" "$NEWPAGES" | egrep -iv "$KEYWORDS_ANTIMONY_EXCLUDE")
  BISMUTH=$(egrep -i "$KEYWORDS_BISMUTH" "$NEWPAGES")
  UNUNPENTIUM=$(egrep -i "$KEYWORDS_UNUNPENTIUM" "$NEWPAGES")

  categorize "NITROGEN" "Nitrogen"
  categorize "PHOSPHORUS" "Phosphorus"
  categorize "ARSENIC" "Arsenic"
  categorize "ANTIMONY" "Antimony"
  categorize "BISMUTH" "Bismuth"
  categorize "UNUNPENTIUM" "Ununpentium"

  debug_end "Group 15 elements"

fi