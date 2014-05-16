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

  NITROGEN=$(egrep -i "$KEYWORDS_NITROGEN" newpages.txt | egrep -iv "$KEYWORDS_NITROGEN_EXCLUDE")
  PHOSPHORUS=$(egrep -i "$KEYWORDS_PHOSPHORUS" newpages.txt | egrep -iv "$KEYWORDS_PHOSPHORUS_EXCLUDE")
  ARSENIC=$(egrep -i "$KEYWORDS_ARSENIC" newpages.txt | egrep -iv "$KEYWORDS_ARSENIC_EXCLUDE")
  ANTIMONY=$(egrep -i "$KEYWORDS_ANTIMONY" newpages.txt | egrep -iv "$KEYWORDS_ANTIMONY_EXCLUDE")
  BISMUTH=$(egrep -i "$KEYWORDS_BISMUTH" newpages.txt)
  UNUNPENTIUM=$(egrep -i "$KEYWORDS_UNUNPENTIUM" newpages.txt)

  if [ "$NITROGEN" != "" ];
  then
    printf "%s" "$NITROGEN" > Nitrogen.txt
    export CATFILE="Nitrogen.txt"
    export CATNAME="Nitrogen"
    $CATEGORIZE
    rm Nitrogen.txt
    unset NITROGEN
  fi

  if [ "$PHOSPHORUS" != "" ];
  then
    printf "%s" "$PHOSPHORUS" > Phosphorus.txt
    export CATFILE="Phosphorus.txt"
    export CATNAME="Phosphorus"
    $CATEGORIZE
    rm Phosphorus.txt
    unset PHOSPHORUS
  fi

  if [ "$ARSENIC" != "" ];
  then
    printf "%s" "$ARSENIC" > Arsenic.txt
    export CATFILE="Arsenic.txt"
    export CATNAME="Arsenic"
    $CATEGORIZE
    rm Arsenic.txt
    unset ARSENIC
  fi

  if [ "$ANTIMONY" != "" ];
  then
    printf "%s" "$ANTIMONY" > Antimony.txt
    export CATFILE="Antimony.txt"
    export CATNAME="Antimony"
    $CATEGORIZE
    rm Antimony.txt
    unset ANTIMONY
  fi

  if [ "$BISMUTH" != "" ];
  then
    printf "%s" "$BISMUTH" > Bismuth.txt
    export CATFILE="Bismuth.txt"
    export CATNAME="Bismuth"
    $CATEGORIZE
    rm Bismuth.txt
    unset BISMUTH
  fi

  if [ "$UNUNPENTIUM" != "" ];
  then
    printf "%s" "$UNUNPENTIUM" > Ununpentium.txt
    export CATFILE="Ununpentium.txt"
    export CATNAME="Ununpentium"
    $CATEGORIZE
    rm Ununpentium.txt
    unset UNUNPENTIUM
  fi

  debug_end "Group 15 elements"

fi