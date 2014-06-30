#!/bin/bash

KEYWORDS_COD4="Modern(| )Warfare|\bCOD(| )4|Call(| )of(| )Duty(| )4"
KEYWORDS_COD4_EXCLUDE="Modern(| )Warfare(| )(two|three|[2-9]{1,})"
KEYWORDS_CODWAW="\bCOD(| )5|\bWaW\b|World(| )at(| )War|Call(| )of(| )Duty(| )5"
KEYWORDS_CODMW2="\bCOD(| )6|\bMW2\b|Modern(| )Warfare(| )2|Call(| )of(| )Duty(| )6"
KEYWORDS_CODBO="\bCOD(| )7|Black Ops|Call of Duty 7"
KEYWORDS_CODBO_EXCLUDE="Black(| )Ops(| )([2-9]{1,}|\bII\b|\bIII\b|\bIV\b|\bV\b)"
KEYWORDS_CODMW3="\bCOD(| )8|\bMW3\b|Modern(| )Warfare(| )3|Call(| )of(| )Duty(| )8"
KEYWORDS_CODBO2="\bCOD(| )9|Black Ops (2|II\b)|Call of Duty 9"
KEYWORDS_CODGHOSTS="\bCOD(| )10|Call(| )Of(| )Duty(\:|)(| )Ghost"
KEYWORDS_CALLOFDUTYSERIES="Call(| )of(| )Duty|CoD(| )series"
KEYWORDS_CALLOFDUTYSERIES_EXCLUDE="$KEYWORDS_COD4|$KEYWORDS_CODWAW|$KEYWORDS_CODBO|$KEYWORDS_CODMW3|$KEYWORDS_CODBO2|$KEYWORDS_CODGHOSTS"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE="CoD"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE="CoD(| )[0-9]{1,}" 

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Call of Duty series"

  CALLOFDUTY=$(egrep -i "$KEYWORDS_CALLOFDUTYSERIES" newpages.txt | egrep -iv "$KEYWORDS_CALLOFDUTYSERIES_EXCLUDE" && egrep "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE" newpages.txt | egrep -v "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE")
  MODERN=$(egrep -i "$KEYWORDS_COD4" newpages.txt | egrep -iv "$KEYWORDS_COD4_EXCLUDE")
  WORLDATWAR=$(egrep -i "$KEYWORDS_CODWAW" newpages.txt)
  MW2=$(egrep -i "$KEYWORDS_CODMW2" newpages.txt)
  BLACKOPS=$(egrep -i "$KEYWORDS_CODBO" newpages.txt | egrep -iv "$KEYWORDS_CODBO_EXCLUDE")
  MW3=$(egrep -i "$KEYWORDS_CODMW3" newpages.txt)
  BO2=$(egrep -i "$KEYWORDS_CODBO2" newpages.txt)
  GHOSTS=$(egrep -i "$KEYWORDS_CODGHOSTS" newpages.txt)

  if [ "$CALLOFDUTY" != "" ];
  then
    printf "%s" "$CALLOFDUTY" > CallofDuty.txt
    export CATFILE="CallofDuty.txt"
    export CATNAME="Call of Duty series"
    $CATEGORIZE
    rm CallofDuty.txt
    unset CALLOFDUTY
  fi

  if [ "$MODERN" != "" ];
  then
    printf "%s" "$MODERN" > COD4.txt
    export CATFILE="COD4.txt"
    export CATNAME="Call of Duty 4: Modern Warfare"
    $CATEGORIZE
    rm COD4.txt
    unset COD4.txt
  fi

  if [ "$WORLDATWAR" != "" ];
  then
    printf "%s" "$WORLDATWAR" > WorldAtWar.txt
    export CATFILE="WorldAtWar.txt"
    export CATNAME="Call of Duty: World at War"
    $CATEGORIZE
    rm WorldAtWar.txt
    unset WORLDATWAR
  fi

  if [ "$MW2" != "" ];
  then
    printf "%s" "$MW2" > ModernWarfare2.txt
    export CATFILE="ModernWarfare2.txt"
    export CATNAME="Call of Duty: Modern Warfare 2"
    $CATEGORIZE
    rm ModernWarfare2.txt
    unset MW2
  fi

  if [ "$BLACKOPS" != "" ];
  then
    printf "%s" "$BLACKOPS" > BlackOps.txt
    export CATFILE="BlackOps.txt"
    export CATNAME="Call of Duty: Black Ops"
    $CATEGORIZE
    rm BlackOps.txt
    unset BLACKOPS
  fi

  if [ "$MW3" != "" ];
  then
    printf "%s" "$MW3" > ModernWarfare3.txt
    export CATFILE="ModernWarfare3.txt"
    export CATNAME="Call of Duty: Modern Warfare 3"
    $CATEGORIZE
    rm ModernWarfare3.txt
    unset MW3
  fi

  if [ "$BO2" != "" ];
  then
    printf "%s" "$BO2" > BlackOps2.txt
    export CATFILE="BlackOps2.txt"
    export CATNAME="Call of Duty: Black Ops II"
    $CATEGORIZE
    rm BlackOps2.txt
    unset BO2
  fi

  if [ "$GHOSTS" != "" ];
  then
    printf "%s" "$GHOSTS" > Ghosts.txt
    export CATFILE="Ghosts.txt"
    export CATNAME="Call of Duty: Ghosts"
    $CATEGORIZE
    rm Ghosts.txt
    unset GHOSTS
  fi

  debug_end "Call of Duty series"

fi

