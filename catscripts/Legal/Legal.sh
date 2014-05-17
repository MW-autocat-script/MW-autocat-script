#!/bin/bash

KEYWORDS_LEGAL="\blegal|illegal|\blaw(s|)\b"
KEYWORDS_LAWYERS="attorney|lawyer"
KEYWORDS_DIVORCE="Divorce|alimony"
KEYWORDS_CRIME="\bCrime(|s)\b|criminal"
KEYWORDS_COPYRIGHT="copyright|copyleft|fair use|(movie|software)(| )piracy|intellectual(| )property"

if [ "$1" == "" ]; #Normal operation
then

  LEGAL=$(egrep -i "$KEYWORDS_LEGAL" newpages.txt | egrep -iv "$KEYWORDS_DIVORCE|$KEYWORDS_CRIME|$KEYWORDS_LAWYERS|$KEYWORDS_COPYRIGHT")
  CRIME=$(egrep -i "$KEYWORDS_CRIME" newpages.txt)
  DIVORCE=$(egrep -i "$KEYWORDS_DIVORCE" newpages.txt)
  LAWYERS=$(egrep -i "$KEYWORDS_LAWYERS" newpages.txt)
  COPYRIGHT=$(egrep -i "$KEYWORDS_COPYRIGHT" newpages.txt)

  if [ "$LEGAL" != "" ];
  then
    printf "%s" "$LEGAL" > Legal.txt
    export CATFILE="Legal.txt"
    export CATNAME="Legal"
    $CATEGORIZE
    rm Legal.txt
    unset LEGAL
  fi

  if [ "$CRIME" != "" ];
  then
    printf "%s" "$CRIME" > Crime.txt
    export CATFILE="Crime.txt"
    export CATNAME="Crime"
    $CATEGORIZE
    rm Crime.txt
    unset CRIME
  fi

  if [ "$DIVORCE" != "" ];
  then
    printf "%s" "$DIVORCE" > Divorce.txt
    export CATFILE="Divorce.txt"
    export CATNAME="Divorce"
    $CATEGORIZE
    rm Divorce.txt
    unset DIVORCE
  fi

  if [ "$LAWYERS" != "" ];
  then
    printf "%s" "$LAWYERS" > Lawyers.txt
    export CATFILE="Lawyers.txt"
    export CATNAME="Lawyers"
    $CATEGORIZE
    rm Lawyers.txt
    unset LAWYERS
  fi

  if [ "$COPYRIGHT" != "" ];
  then
    printf "%s" "$COPYRIGHT" > Copyright.txt
    export CATFILE="Copyright.txt"
    export CATNAME="Copyright law"
    $CATEGORIZE
    rm Copyright.txt
    unset COPYRIGHT
  fi

fi
