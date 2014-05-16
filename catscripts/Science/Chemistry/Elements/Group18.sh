#!/bin/bash 

KEYWORDS_NEON="(\bNeon\b|\bNeons\b)"
KEYWORDS_NEON_EXCLUDE="(Dodge|Plymouth) Neon|[0-9]{2,} Neon"
KEYWORDS_HELIUM="\bHelium"
KEYWORDS_ARGON="\bArgon\b|\bArgons\b"
KEYWORDS_KRYPTON="Krypton"
KEYWORDS_KRYPTON_EXCLUDE="Kryptonite|Superman|planet Krypton|Kryptonian"
KEYWORDS_XENON="\bXenon"
KEYWORDS_XENON_EXCLUDE="LG Xenon"
KEYWORDS_RADON="\bRadon"
KEYWORDS_UNUNOCTIUM="Ununoctium"

if [ "$1" == "" ];
then

  debug_start "Group 18 elements"

  NEON=$(egrep -i "$KEYWORDS_NEON" newpages.txt | egrep -iv "$KEYWORDS_NEON_EXCLUDE")
  HELIUM=$(egrep -i "$KEYWORDS_HELIUM" newpages.txt)
  ARGON=$(egrep -i "$KEYWORDS_ARGON" newpages.txt)
  KRYPTON=$(egrep -i "$KEYWORDS_KRYPTON" newpages.txt | egrep -iv "$KEYWORDS_KRYPTON_EXCLUDE")
  XENON=$(egrep -i "$KEYWORDS_XENON" newpages.txt | egrep -iv "$KEYWORDS_XENON_EXCLUDE")
  RADON=$(egrep -i "$KEYWORDS_RADON" newpages.txt)
  UNUNOCTIUM=$(egrep -i "$KEYWORDS_UNUNOCTIUM" newpages.txt)

  if [ "$NEON" != "" ];
  then
    printf "%s" "$NEON" > Neon.txt
    export CATFILE="Neon.txt"
    export CATNAME="Neon"
    $CATEGORIZE
    rm Neon.txt
    unset NEON
  fi

  if [ "$HELIUM" != "" ];
  then
    printf "%s" "$HELIUM" > Helium.txt
    export CATFILE="Helium.txt"
    export CATNAME="Helium"
    $CATEGORIZE
    rm Helium.txt
    unset HELIUM
  fi

  if [ "$ARGON" != "" ];
  then
    printf "%s" "$ARGON" > Argon.txt
    export CATFILE="Argon.txt"
    export CATNAME="Argon"
    $CATEGORIZE
    rm Argon.txt
    unset ARGON
  fi

  if [ "$KRYPTON" != "" ];
  then
    printf "%s" "$KRYPTON" > Krypton.txt
    export CATFILE="Krypton.txt"
    export CATNAME="Krypton"
    $CATEGORIZE
    rm Krypton.txt
    unset KRYPTON
  fi

  if [ "$XENON" != "" ];
  then
    printf "%s" "$XENON" > Xenon.txt
    export CATFILE="Xenon.txt"
    export CATNAME="Xenon"
    $CATEGORIZE
    rm Xenon.txt
    unset XENON
  fi

  if [ "$RADON" != "" ];
  then
    printf "%s" "$RADON" > Radon.txt
    export CATFILE="Radon.txt"
    export CATNAME="Radon"
    $CATEGORIZE
    rm Radon.txt
    unset RADON
  fi

  if [ "$UNUNOCTIUM" != "" ];
  then
    printf "%s" "$UNUNOCTIUM" > Ununoctium.txt
    export CATFILE="Ununoctium.txt"
    export CATNAME="Ununoctium"
    $CATEGORIZE
    rm Ununoctium.txt
    unset UNUNOCTIUM
  fi

  debug_end "Group 18 elements"

fi